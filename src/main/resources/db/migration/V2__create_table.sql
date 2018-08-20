CREATE TABLE author (
	id bigint NOT NULL,
	name text,
	CONSTRAINT author_pk PRIMARY KEY (id)
);

CREATE TABLE book (
	id bigint NOT NULL,
	title text,
	author_id bigint,
	CONSTRAINT book_pk PRIMARY KEY (id),
    CONSTRAINT fk_book_author FOREIGN KEY (author_id)
      REFERENCES public.author (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);