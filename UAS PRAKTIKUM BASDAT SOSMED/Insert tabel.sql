-- tabel user
INSERT INTO user (email, password, username, created_at) VALUES
('ilham@mail.com', 'pass123', 'ilham_fajar', NOW()),
('febri@mail.com', 'pass456', 'febri_febrian', NOW()),
('azhar@mail.com', 'pass789', 'azhar_azmi', NOW());

-- tabel friend
INSERT INTO friendship (user_id, status, created_at) VALUES
(1, 'accepted', NOW()),
(2, 'pending', NOW()),
(3, 'accepted', NOW());

-- tabel post
INSERT INTO post (user_id, content, created_at) VALUES
(1, 'Capek kerja, tapi gak kerja juga capek', NOW()),
(2, 'orang orang pada healing, aku masih dealing', NOW()),
(3, 'Niatnya nugas eh malah scrool', NOW());

-- tabel komen
INSERT INTO comment (user_id, post_id, content, created_at) VALUES
(2, 1, 'Relate parah, Gue banget', NOW()),
(3, 2, 'Ditampar realita', NOW()),
(1, 3, 'fokus? apa itu,yang penting scrool dulu', NOW());

-- tabel like
INSERT INTO `like` (user_id, post_id) VALUES
(2, 1),
(3, 2),
(1, 3);

-- tabel share
INSERT INTO share (user_id, post_id, shared_at) VALUES
(2, 1, NOW()),
(3, 2, NOW());

-- tabel pesan
INSERT INTO message (user_id, message_text, sent_at) VALUES
(1, 'Bro,check tiktok gue deh', NOW()),
(2, 'bang ada seratus gak?', NOW()),
(3, 'ngopi sore ini? sekalian update gosip', NOW());
