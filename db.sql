CREATE DATABASE IF NOT EXISTS notes_app;
use notes_app;

CREATE TABLE IF NOT EXISTS `notes` (
    `id` integer   auto_increment,
  `title` varchar(255) NOT NULL,
  `contents` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
);
CREATE TABLE IF NOT EXISTS `codeurs` (
    `id` integer   auto_increment,
  `firstname` varchar(255) NOT NULL,
  `lastname` text NOT NULL,
  `experience` ENUM ('JUNIOR', 'INTERMEDIAIRE', 'SEINIOR'),
  PRIMARY KEY (`id`)
);
ALTER TABLE notes ADD column idCodeur int DEFAULT(1);
ALTER TABLE notes ADD FOREIGN KEY fk_notes_codeurs(idCodeur) REFERENCES codeurs(id);


select * from notes where idCodeur=1;