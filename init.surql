-- remove table;
REMOVE TABLE users;
REMOVE TABLE caterers;

-- Create schemafull user table.
DEFINE TABLE users SCHEMAFULL;

-- Define some fields.
DEFINE FIELD first_name ON TABLE users TYPE string;
DEFINE FIELD last_name ON TABLE users TYPE string;
DEFINE FIELD email ON TABLE users TYPE string
  ASSERT string::is::email($value);
DEFINE INDEX userEmailIndex ON TABLE users COLUMNS email UNIQUE;

-- Create schemafull caterer table.
DEFINE TABLE caterers SCHEMAFULL;

-- Define some fields.
DEFINE FIELD cater_name ON TABLE caterers TYPE string;