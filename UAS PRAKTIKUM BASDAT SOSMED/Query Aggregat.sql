-- Jumlah Postingan User
SELECT u.username, COUNT(p.post_id) AS total_postingan
FROM user u
LEFT JOIN post p ON u.user_id = p.user_id
GROUP BY u.username;

-- Jumlah Like Per Postingan
SELECT p.post_id, COUNT(l.like_id) AS total_like
FROM post p
LEFT JOIN `like` l ON p.post_id = l.post_id
GROUP BY p.post_id;

-- Jumlah Komentar Per Postingan
SELECT p.post_id, COUNT(c.comment_id) AS total_komentar
FROM post p
LEFT JOIN comment c ON p.post_id = c.post_id
GROUP BY p.post_id;

-- Jumlah Teman User
SELECT u.username, COUNT(f.friendship_id) AS total_teman
FROM user u
LEFT JOIN friendship f ON u.user_id = f.user_id
WHERE f.status = 'accepted'  -- asumsi: status ada "accepted", "pending", dll
GROUP BY u.username;

-- Jumlah Share Per Postingan
SELECT p.post_id, COUNT(s.share_id) AS total_share
FROM post p
LEFT JOIN share s ON p.post_id = s.post_id
GROUP BY p.post_id;

-- Jumlah Share yang dikirim ke user yang lain
SELECT u.username, COUNT(m.message_id) AS total_pesan
FROM user u
LEFT JOIN message m ON u.user_id = m.user_id
GROUP BY u.username;
