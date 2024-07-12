CREATE TABLE raw_data (
    Timestamp TIMESTAMP,
    user_id VARCHAR(50),
    Store_id VARCHAR(50),
    Digest JSONB
)

INSERT INTO raw_data (Timestamp, user_id, Store_id, Digest) VALUES
('2024-05-25 05:24:53', 'user_001', 'store_001', '{"Date": "2024-05-01 23:54:42", "payload": {"change": "create", "products": {}}}'),
('2024-05-25 03:10:42', 'user_002', 'store_002', '{"Date": "2024-05-03 17:56:11", "payload": {"change": "create", "products": {}}}'),
('2024-05-25 10:56:03', 'user_003', 'store_003', '{"Date": "2024-05-05 16:37:26", "payload": {"change": "create", "products": {}}}'),
('2024-05-25 14:11:05', 'user_003', 'store_004', '{"Date": "2024-05-11 21:18:18", "payload": {"change": "create", "products": {}}}'),
('2024-05-25 15:21:32', 'user_004', 'store_005', '{"Date": "2024-05-15 06:16:00", "payload": {"change": "create", "products": {}}}'),

('2024-05-25 22:19:37', 'user_003', 'store_001', '{"Date": "2024-05-14 21:09:16", "payload": {"change": "add", "products": [{"Id": "246", "name": "T Shirt", "properties": {"size": "*", "color": "blue"}}]}}'),
('2024-05-25 06:31:52', 'user_002', 'store_002', '{"Date": "2024-05-14 01:13:54", "payload": {"change": "create", "products": {}}}'),
('2024-05-25 12:53:11', 'user_003', 'store_002', '{"Date": "2024-05-03 20:50:30", "payload": {"change": "remove", "products": [{"Id": "225"}]}}'),
('2024-05-25 10:45:11', 'user_004', 'store_003', '{"Date": "2024-05-05 06:32:04", "payload": {"change": "add", "products": [{"Id": "290", "name": "T Shirt", "properties": {"size": "*", "color": "red"}}]}}'),
('2024-05-25 05:12:45', 'user_003', 'store_002', '{"Date": "2024-05-03 17:49:16", "payload": {"change": "remove", "products": [{"Id": "272"}]}}'),
('2024-05-25 19:56:23', 'user_002', 'store_003', '{"Date": "2024-05-03 06:48:53", "payload": {"change": "create", "products": {}}}'),
('2024-05-25 16:30:10', 'user_005', 'store_003', '{"Date": "2024-05-04 09:12:26", "payload": {"change": "add", "products": [{"Id": "204", "name": "T Shirt", "properties": {"size": "*", "color": "white"}}]}}'),
('2024-05-25 09:11:19', 'user_002', 'store_001', '{"Date": "2024-05-02 16:16:31", "payload": {"change": "remove", "products": [{"Id": "221"}]}}'),
('2024-05-25 18:45:36', 'user_001', 'store_003', '{"Date": "2024-05-12 14:10:28", "payload": {"change": "create", "products": {}}}'),
('2024-05-25 17:42:30', 'user_005', 'store_001', '{"Date": "2024-05-02 20:36:41", "payload": {"change": "add", "products": [{"Id": "283", "name": "T Shirt", "properties": {"size": "*", "color": "blue"}}]}}'),
('2024-05-25 04:07:33', 'user_001', 'store_002', '{"Date": "2024-05-14 08:30:54", "payload": {"change": "remove", "products": [{"Id": "267"}]}}'),
('2024-05-25 14:21:15', 'user_004', 'store_001', '{"Date": "2024-05-06 11:47:36", "payload": {"change": "add", "products": [{"Id": "295", "name": "T Shirt", "properties": {"size": "*", "color": "white"}}]}}'),
('2024-05-25 16:35:18', 'user_003', 'store_002', '{"Date": "2024-05-18 01:36:12", "payload": {"change": "remove", "products": [{"Id": "297"}]}}'),
('2024-05-25 08:19:31', 'user_002', 'store_001', '{"Date": "2024-05-11 07:05:28", "payload": {"change": "create", "products": {}}}'),
('2024-05-25 21:24:42', 'user_001', 'store_002', '{"Date": "2024-05-12 13:24:01", "payload": {"change": "add", "products": [{"Id": "214", "name": "T Shirt", "properties": {"size": "*", "color": "blue"}}]}}');
