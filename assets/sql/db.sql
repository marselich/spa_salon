CREATE TABLE services (
    service_id INTEGER PRIMARY KEY autoincrement,
    title TEXT,
    imageUrl TEXT
);
CREATE TABLE sub_services (
    title TEXT,
    imageUrl TEXT,
    price TEXT,
    service_type INTEGER,
    FOREIGN KEY (service_type) 
        REFERENCES services (service_id)
        ON DELETE CASCADE
);
INSERT INTO services (service_id, title, imageUrl) VALUES (0, "Массаж для лица", "");
INSERT INTO services (service_id, title, imageUrl) VALUES (1, "Уход для лица", "");
INSERT INTO services (service_id, title, imageUrl) VALUES (2, "Массаж для тела", "");
INSERT INTO services (service_id, title, imageUrl) VALUES (3, "Уход для тела", "");
INSERT INTO services (service_id, title, imageUrl) VALUES (4, "Массажный комплекс", "");
INSERT INTO services (service_id, title, imageUrl) VALUES (5, "Спа-программы", "");
INSERT INTO services (service_id, title, imageUrl) VALUES (6, "Женская депиляция", "");
INSERT INTO services (service_id, title, imageUrl) VALUES (7, "Мужская депиляция", "");
