CREATE TABLE osm_favorites (
  id serial PRIMARY KEY,
  name text NOT NULL UNIQUE,
  area text NOT NULL,
  route_num text,
  route_box text,
  long numeric NOT NULL,
  lat numeric NOT NULL,
  notes text
);