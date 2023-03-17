-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Campaign" (
    "category_ids" VARCHAR(256)   NOT NULL,
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR(256)   NOT NULL,
    "description" VARCHAR(256)   NOT NULL,
    "goal" INT   NOT NULL,
    "pledged" INT   NOT NULL,
    "outcome" VARCHAR(256)   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR(256)   NOT NULL,
    "currency" VARCHAR(256)   NOT NULL,
    "launch_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "subcategory_ids" VARCHAR(256)   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "Category" (
    "category" VARCHAR(256)   NOT NULL,
    "category_ids" VARCHAR(256)   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category_ids"
     )
);

CREATE TABLE "Subcategory" (
    "subcategory" VARCHAR(256)   NOT NULL,
    "subcategory_ids" VARCHAR(256)   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcategory_ids"
     )
);

CREATE TABLE "Contacts" (
    "contact_id" INT   NOT NULL,
    "First_name" VARCHAR(256)   NOT NULL,
    "Last_name" VARCHAR(256)   NOT NULL,
    "email" VARCHAR(256)   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact_id"
     )
);

ALTER TABLE "Category" ADD CONSTRAINT "fk_Category_category_ids" FOREIGN KEY("category_ids")
REFERENCES "Campaign" ("category_ids");

ALTER TABLE "Subcategory" ADD CONSTRAINT "fk_Subcategory_subcategory_ids" FOREIGN KEY("subcategory_ids")
REFERENCES "Campaign" ("subcategory_ids");

ALTER TABLE "Contacts" ADD CONSTRAINT "fk_Contacts_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Campaign" ("contact_id");

