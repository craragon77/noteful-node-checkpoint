CREATE TABLE notes (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    title TEXT NOT NULL,
    content TEXT NOT NULL,
    date_published TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE folders (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    note_id INTEGER NOT NULL
);