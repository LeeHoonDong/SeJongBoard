CREATE TABLE IF NOT EXISTS post(
post_id INT NOT NULL AUTO_INCREMENT,
author INT NOT NULL,
reg_date DATETIME NOT NULL,
exp_date DATETIME NOT NULL,
title VARCHAR(500) NOT NULL,
content TEXT NOT NULL,
url TEXT,
img_url VARCHAR(1000),
view_count INT NOT NULL,
size TINYINT NOT NULL,
INDEX(exp_date),
PRIMARY KEY(post_id),
FOREIGN KEY(author) REFERENCES user(student_id) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;