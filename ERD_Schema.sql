CREATE TABLE "License_Dates"(
    "PK_Date_ID" BIGINT NOT NULL,
    "Expiration Date" DATE NOT NULL,
    "Creation Date" DATE NOT NULL,
    "Num_Years" INTEGER NOT NULL
);
ALTER TABLE
    "License_Dates" ADD PRIMARY KEY("PK_Date_ID");
CREATE TABLE "Business_Info"(
    "PK_Info_ID" BIGINT NOT NULL,
    "Industry" TEXT NOT NULL,
    "Name" TEXT NOT NULL,
    "City" TEXT NOT NULL
);
ALTER TABLE
    "Business_Info" ADD PRIMARY KEY("PK_Info_ID");
CREATE TABLE "License_Status"(
    "PK_Business_ID" BIGINT NOT NULL,
    "FK_Info_ID" BIGINT NOT NULL,
    "FK_Date_ID" BIGINT NOT NULL,
    "Status_State" BOOLEAN NOT NULL
);
ALTER TABLE
    "License_Status" ADD PRIMARY KEY("PK_Business_ID");
ALTER TABLE
    "License_Status" ADD CONSTRAINT "license_status_fk_info_id_foreign" FOREIGN KEY("FK_Info_ID") REFERENCES "Business_Info"("PK_Info_ID");
ALTER TABLE
    "License_Status" ADD CONSTRAINT "license_status_fk_date_id_foreign" FOREIGN KEY("FK_Date_ID") REFERENCES "License_Dates"("PK_Date_ID");