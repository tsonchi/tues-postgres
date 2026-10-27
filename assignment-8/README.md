CREATE TABLE equipment (
    inventory_number VARCHAR(50) PRIMARY KEY,
    kind VARCHAR(50) NOT NULL,
    model VARCHAR(100) NOT NULL,
    room VARCHAR(50), -- NULL indicates the device is in storage
    purchase_date DATE NOT NULL
);
I wrote a single table to explain why it is not a good practice.
Single-table approach (All-in-one):

Pros: Very simple to write and doesn't require any JOIN operators in queries.
Cons: Lacks a true relational structure and a FOREIGN KEY. If a room name needs to be updated,
you would have to manually update it across multiple equipment records instead of a single place.



Two-table approach (rooms and equipment with a FOREIGN KEY):

Pros: Fully complies with database normalization rules. 
We have an independent rooms table and a strict relationship using room_id REFERENCES rooms(room_id), 
which protects data integrity (the database will refuse to let you insert a device into a non-existent room).
Handling Storage: Using NULL values in the room_id field allows us to cleanly track devices 
that are currently sitting in storage without needing a separate dummy room.
