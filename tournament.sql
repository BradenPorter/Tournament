-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.
DROP DATABASE tournament; --uncomment this line to delete the databse
CREATE DATABASE tournament; --uncomment this line if you don't have the database
\c tournament
CREATE TABLE Players(
	id serial,
	name text,
	matches int DEFAULT 0,
	score int DEFAULT 0,
	PRIMARY KEY (id)
	);

CREATE TABLE Matches(
	match_number serial,
	loser_id int,
	winner_id int,
	PRIMARY KEY (match_number),
	FOREIGN KEY (loser_id) REFERENCES Players(id),
	FOREIGN KEY (winner_id) REFERENCES Players(id)
	);
