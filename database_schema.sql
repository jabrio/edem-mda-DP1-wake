-- DATABASE SCRIPT

-- client table
CREATE TABLE client (
	id int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY,
	name varchar NOT NULL,
	age int4 NOT NULL,
	email varchar NOT NULL,
	CONSTRAINT client_pkey PRIMARY KEY (id)
);

-- degree table
CREATE TABLE degree (
	id int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY,
	degree varchar NOT NULL,
	CONSTRAINT degree_pkey PRIMARY KEY (id)
);

-- city table
CREATE TABLE city (
	id int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY,
	name varchar NOT NULL,
	country varchar NOT NULL,
	university varchar NOT NULL,
	university_ranking int4 NOT NULL,
	distance_to_vlc float4 NOT NULL,
	avg_temp float4 NOT NULL,
	rainy_days int4 NOT NULL,
	transport varchar NOT NULL,
	direct_flight bool NOT NULL,
	CONSTRAINT city_pkey PRIMARY KEY (id)
);

-- form table
CREATE TABLE form (
	id int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY,
	id_client int4 NOT NULL,
	id_degree int4 NOT NULL,
	english_level varchar NOT NULL,
	budget float4 NOT NULL,
	working_after bool NOT NULL,
	return_freq text NOT NULL,
	clima varchar NOT NULL,
	public_transport bool NOT NULL,
	date timestamp NOT NULL,
	id_city int4 NOT NULL,
	CONSTRAINT form_pkey PRIMARY KEY (id),
    CONSTRAINT form_fk FOREIGN KEY (id) REFERENCES client(id),
    CONSTRAINT form_fk_1 FOREIGN KEY (id) REFERENCES degree(id),
    CONSTRAINT form_fk_2 FOREIGN KEY (id) REFERENCES city(id)
);