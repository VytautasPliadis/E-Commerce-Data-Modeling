CREATE TABLE raw_data (
    Timestamp TIMESTAMP,
    user_id VARCHAR(50),
    Store_id VARCHAR(50),
    Digest TEXT
)

INSERT INTO raw_data (Timestamp, user_id, Store_id, Digest) VALUES
('2016-05-12 05:24:53', 'user_002', 'store_002', '{"Date": "2016-05-18 23:54:42", "payload": {"change": "add", "products": [{"Id": "201", "name": "T Shirt", "properties": {"size": "*", "color": "red"}}]}}'),
('2016-05-19 03:10:42', 'user_005', 'store_003', '{"Date": "2016-05-06 17:56:11", "payload": {"change": "create", "products": {}}}'),
('2016-05-12 10:56:03', 'user_001', 'store_001', '{"Date": "2016-05-06 16:37:26", "payload": {"change": "add", "products": [{"Id": "217", "name": "T Shirt", "properties": {"size": "*", "color": "white"}}]}}'),
('2016-05-02 14:11:05', 'user_004', 'store_002', '{"Date": "2016-05-13 21:18:18", "payload": {"change": "create", "products": {}}}'),
('2016-05-09 15:21:32', 'user_001', 'store_001', '{"Date": "2016-05-10 06:16:00", "payload": {"change": "remove", "products": [{"Id": "246"}]}}'),
('2016-05-04 22:19:37', 'user_003', 'store_001', '{"Date": "2016-05-14 21:09:16", "payload": {"change": "add", "products": [{"Id": "246", "name": "T Shirt", "properties": {"size": "*", "color": "blue"}}]}}'),
('2016-05-10 06:31:52', 'user_002', 'store_002', '{"Date": "2016-05-14 01:13:54", "payload": {"change": "create", "products": {}}}'),
('2016-05-16 12:53:11', 'user_003', 'store_002', '{"Date": "2016-05-03 20:50:30", "payload": {"change": "remove", "products": [{"Id": "225"}]}}'),
('2016-05-19 10:45:11', 'user_004', 'store_003', '{"Date": "2016-05-05 06:32:04", "payload": {"change": "add", "products": [{"Id": "290", "name": "T Shirt", "properties": {"size": "*", "color": "red"}}]}}'),
('2016-05-03 05:12:45', 'user_003', 'store_002', '{"Date": "2016-05-03 17:49:16", "payload": {"change": "remove", "products": [{"Id": "272"}]}}'),
('2016-05-10 19:56:23', 'user_002', 'store_003', '{"Date": "2016-05-03 06:48:53", "payload": {"change": "create", "products": {}}}'),
('2016-05-14 16:30:10', 'user_005', 'store_003', '{"Date": "2016-05-04 09:12:26", "payload": {"change": "add", "products": [{"Id": "204", "name": "T Shirt", "properties": {"size": "*", "color": "white"}}]}}'),
('2016-05-08 09:11:19', 'user_002', 'store_001', '{"Date": "2016-05-02 16:16:31", "payload": {"change": "remove", "products": [{"Id": "221"}]}}'),
('2016-05-11 18:45:36', 'user_001', 'store_003', '{"Date": "2016-05-12 14:10:28", "payload": {"change": "create", "products": {}}}'),
('2016-05-05 17:42:30', 'user_005', 'store_001', '{"Date": "2016-05-02 20:36:41", "payload": {"change": "add", "products": [{"Id": "283", "name": "T Shirt", "properties": {"size": "*", "color": "blue"}}]}}'),
('2016-05-06 04:07:33', 'user_001', 'store_002', '{"Date": "2016-05-14 08:30:54", "payload": {"change": "remove", "products": [{"Id": "267"}]}}'),
('2016-05-09 14:21:15', 'user_004', 'store_001', '{"Date": "2016-05-06 11:47:36", "payload": {"change": "add", "products": [{"Id": "295", "name": "T Shirt", "properties": {"size": "*", "color": "white"}}]}}'),
('2016-05-07 16:35:18', 'user_003', 'store_002', '{"Date": "2016-05-18 01:36:12", "payload": {"change": "remove", "products": [{"Id": "297"}]}}'),
('2016-05-08 08:19:31', 'user_002', 'store_001', '{"Date": "2016-05-11 07:05:28", "payload": {"change": "create", "products": {}}}'),
('2016-05-12 21:24:42', 'user_001', 'store_002', '{"Date": "2016-05-12 13:24:01", "payload": {"change": "add", "products": [{"Id": "214", "name": "T Shirt", "properties": {"size": "*", "color": "blue"}}]}}');
