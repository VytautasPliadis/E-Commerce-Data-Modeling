CREATE TABLE raw_data (
    Timestamp TIMESTAMP,
    user_id VARCHAR(50),
    Store_id VARCHAR(50),
    Digest JSONB
)

INSERT INTO raw_data (Timestamp, user_id, Store_id, Digest) VALUES-- created empty store
('2024-05-25 05:24:53', 'user_001', 'store_001', '{"Date": "2024-05-01 23:54:42", "payload": {"change": "create", "products": {}}}'),
('2024-05-25 03:10:42', 'user_002', 'store_002', '{"Date": "2024-05-03 17:56:11", "payload": {"change": "create", "products": {}}}'),
('2024-05-25 10:56:03', 'user_003', 'store_003', '{"Date": "2024-05-05 16:37:26", "payload": {"change": "create", "products": {}}}'),
('2024-05-25 14:11:05', 'user_003', 'store_004', '{"Date": "2024-05-11 21:18:18", "payload": {"change": "create", "products": {}}}'),
('2024-05-25 15:21:32', 'user_004', 'store_005', '{"Date": "2024-05-15 06:16:00", "payload": {"change": "create", "products": {}}}'),
-- added product
('2024-05-25 22:19:37', 'user_001', 'store_001', '{"Date": "2024-05-16 21:09:16", "payload": {"change": "add", "products": [{"Id": "100", "name": "T Shirt", "properties": {"size": "M", "color": "white"}}]}}'),
('2024-05-25 06:31:52', 'user_002', 'store_002', '{"Date": "2024-05-16 01:13:54", "payload": {"change": "add", "products": [{"Id": "100", "name": "T Shirt", "properties": {"size": "L", "color": "blue"}}]}}'),
('2024-05-25 12:53:11', 'user_003', 'store_003', '{"Date": "2024-05-16 20:50:30", "payload": {"change": "add", "products": [{"Id": "100", "name": "T Shirt", "properties": {"size": "S", "color": "red"}}]}}'),
('2024-05-25 10:45:11', 'user_003', 'store_004', '{"Date": "2024-05-16 06:32:04", "payload": {"change": "add", "products": [{"Id": "100", "name": "T Shirt", "properties": {"size": "XS", "color": "black"}}]}}'),
('2024-05-25 05:12:45', 'user_004', 'store_005', '{"Date": "2024-05-16 17:49:16", "payload": {"change": "add", "products": [{"Id": "100", "name": "T Shirt", "properties": {"size": "XL", "color": "yellow"}}]}}'),
-- added product
('2024-05-25 19:56:23', 'user_001', 'store_001', '{"Date": "2024-05-17 06:48:53", "payload": {"change": "add", "products": [{"Id": "101", "name": "T Shirt", "properties": {"size": "S", "color": "white"}}]}}'),
('2024-05-25 16:30:10', 'user_002', 'store_002', '{"Date": "2024-05-17 09:12:26", "payload": {"change": "add", "products": [{"Id": "122", "name": "T Shirt", "properties": {"size": "L", "color": "white"}}]}}'),
('2024-05-25 09:11:19', 'user_003', 'store_003', '{"Date": "2024-05-17 16:16:31", "payload": {"change": "add", "products": [{"Id": "115", "name": "T Shirt", "properties": {"size": "M", "color": "white"}}]}}'),
('2024-05-25 18:45:36', 'user_003', 'store_004', '{"Date": "2024-05-17 14:10:28", "payload": {"change": "add", "products": [{"Id": "118", "name": "T Shirt", "properties": {"size": "L", "color": "white"}}]}}'),
('2024-05-25 17:42:30', 'user_004', 'store_005', '{"Date": "2024-05-17 20:36:41", "payload": {"change": "add", "products": [{"Id": "198", "name": "T Shirt", "properties": {"size": "XXL", "color": "white"}}]}}'),
-- removed product
('2024-05-25 04:07:33', 'user_001', 'store_001', '{"Date": "2024-05-18 08:30:54", "payload": {"change": "remove", "products": [{"Id": "100"}]}}'),
('2024-05-25 14:21:15', 'user_002', 'store_002', '{"Date": "2024-05-18 11:47:36", "payload": {"change": "remove", "products": [{"Id": "100"}]}}'),
('2024-05-25 16:35:18', 'user_003', 'store_003', '{"Date": "2024-05-18 01:36:12", "payload": {"change": "remove", "products": [{"Id": "100"}]}}'),
('2024-05-25 08:19:31', 'user_003', 'store_004', '{"Date": "2024-05-18 07:05:28", "payload": {"change": "remove", "products": [{"Id": "100"}]}}'),
('2024-05-25 21:24:42', 'user_004', 'store_005', '{"Date": "2024-05-18 13:24:01", "payload": {"change": "remove", "products": [{"Id": "100"}]}}');