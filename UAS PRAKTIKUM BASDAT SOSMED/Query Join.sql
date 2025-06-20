-- Inner Join : User Dan Post
SELECT u.username, p.post_id, p.content
FROM user u
INNER JOIN post p ON u.user_id = p.user_id;

-- Inner Join : Post Dan Komen
SELECT p.post_id, p.content AS isi_post, c.comment_id, c.content AS isi_komentar
FROM post p
INNER JOIN comment c ON p.post_id = c.post_id;


-- Inner Join : User dan Like
SELECT u.username, l.like_id, l.post_id
FROM user u
INNER JOIN `like` l ON u.user_id = l.user_id;

-- Inner Join : Post dan Share
SELECT u.username, p.post_id, s.shared_at
FROM share s
INNER JOIN user u ON s.user_id = u.user_id
INNER JOIN post p ON s.post_id = p.post_id;

-- Left Join : Tampilkan semua user dan postingan yang mereka buat (jika ada).
SELECT u.username, p.post_id, p.content
FROM user u
LEFT JOIN post p ON u.user_id = p.user_id;

-- Right Join : Tampilkan semua postingan dan user yang membuatnya (jika datanya ada).
SELECT u.username, p.post_id, p.content
FROM user u
RIGHT JOIN post p ON u.user_id = p.user_id;

-- Full Outer Join : Tampilkan semua user dan semua post, termasuk yang tidak saling cocok.
SELECT u.username, p.post_id, p.content
FROM user u
LEFT JOIN post p ON u.user_id = p.user_id

UNION

SELECT u.username, p.post_id, p.content
FROM user u
RIGHT JOIN post p ON u.user_id = p.user_id;
