CREATE TABLE IF NOT EXISTS 'users' (
  'id' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  'username' TEXT NOT NULL,
  'hash' TEXT NOT NULL,
  'cash' NUMERIC NOT NULL DEFAULT 10000.00
);

CREATE UNIQUE INDEX 'username' ON "users" ("username");


CREATE TABLE IF NOT EXISTS 'shares' (
  'id' NOT NULL,
  'symbol' TEXT NOT NULL,
  'name' TEXT,
  'shares' TEXT
);


CREATE TABLE IF NOT EXISTS 'history' (
  'id' NOT NULL,
  'symbol' TEXT NOT NULL,
  'shares' TEXT NOT NULL,
  'price' NUMERIC NOT NULL,
  'transacted' DATE DEFAULT (datetime('now','localtime'))
);
