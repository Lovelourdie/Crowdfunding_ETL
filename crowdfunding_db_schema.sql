-- Create the category table
CREATE TABLE "category" (
    "category_id" VARCHAR PRIMARY KEY,
    "category_name" VARCHAR NOT NULL
);


	
-- Create the subcategory table
CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR PRIMARY KEY,
    "subcategory_name" VARCHAR NOT NULL
);

-- Create the campaign table
CREATE TABLE "campaign" (
    "cf_id" int PRIMARY KEY,
    "contact_id" int,
    "company_name" VARCHAR,
    "description" TEXT,
    "goal" FLOAT,
    "pledged" FLOAT,
    "outcome" VARCHAR,
    "backers_count" INT,
    "country" VARCHAR,
    "currency" VARCHAR,
    "launch_date" DATE,
    "end_date" DATE,
    "category_id" VARCHAR REFERENCES category(category_id),
    "subcategory_id" VARCHAR REFERENCES subcategory(subcategory_id)
);




-- Create the contacts table
CREATE TABLE "contacts" (
    "contact_id" int PRIMARY KEY,
    "first_name" VARCHAR,
    "last_name" VARCHAR,
    "email" VARCHAR
);
