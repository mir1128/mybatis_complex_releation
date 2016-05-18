CREATE TABLE `blog` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_title` varchar(100) DEFAULT NULL,
  `blog_author_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`blog_id`)
);


CREATE TABLE `author` (
  `author_id` int(11) NOT NULL AUTO_INCREMENT,
  `author_username` varchar(100) DEFAULT NULL,
  `author_password` varchar(100) DEFAULT NULL,
  `author_email` varchar(100) DEFAULT NULL,
  `author_bio` varchar(100) DEFAULT NULL,
  `author_favourite_section` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`author_id`)
);
CREATE TABLE `post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_subject` varchar(100) DEFAULT NULL,
  `post_body` varchar(100) DEFAULT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `post_author_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`post_id`)
);

CREATE TABLE `tag` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`tag_id`)
);

CREATE TABLE `post_tag` (
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`post_id`,`tag_id`)
);