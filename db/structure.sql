CREATE TABLE "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
CREATE TABLE "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "drugs" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "active_ingredient" varchar, "description" text, "metric" varchar, "dosage" integer, "brand" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "picture_file_name" varchar, "picture_content_type" varchar, "picture_file_size" integer, "picture_updated_at" datetime);
CREATE TABLE "prices" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "drug_id" integer, "drug_store_id" integer, "price" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE INDEX "index_prices_on_drug_id" ON "prices" ("drug_id");
CREATE INDEX "index_prices_on_drug_store_id" ON "prices" ("drug_store_id");
CREATE TABLE "drug_stores" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "address" varchar, "hour_open_regular" time, "hour_close_regular" time, "days_regular" varchar, "hour_open_other" time, "hour_close_other" time, "days_other" varchar, "payment_options" varchar, "delivery_radius" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "logo_file_name" varchar, "logo_content_type" varchar, "logo_file_size" integer, "logo_updated_at" datetime);
CREATE TABLE "carts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "line_items" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "price_id" integer, "cart_id" integer, "quantity" integer DEFAULT 1, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE INDEX "index_line_items_on_price_id" ON "line_items" ("price_id");
CREATE INDEX "index_line_items_on_cart_id" ON "line_items" ("cart_id");
CREATE TABLE "states" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "cities" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "state_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE INDEX "index_cities_on_state_id" ON "cities" ("state_id");
INSERT INTO "schema_migrations" (version) VALUES
('20170222142624'),
('20170223142613'),
('20170223154243'),
('20170223162338'),
('20170306201158'),
('20170313034757'),
('20170313035615'),
('20170313063459'),
('20170320211453'),
('20170320212137');


