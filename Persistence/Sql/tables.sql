CREATE TABLE product 
(
	id CHAR(36) PRIMARY KEY NOT NULL,
	product_code VARCHAR(50) NOT NULL UNIQUE,
	[name] VARCHAR(100) NOT NULL,
	branch VARCHAR(100),
	model VARCHAR(100)
);

CREATE TABLE capacity 
(
	id CHAR(36) PRIMARY KEY NOT NULL,
	product_code VARCHAR(50) NOT NULL,
	storage_id CHAR(36) NOT NULL,
	quantity INT NOT NULL DEFAULT 0,
	CONSTRAINT FK_storage_product FOREIGN KEY (product_code) REFERENCES product(product_code),
	CONSTRAINT FK_storage_capacity FOREIGN KEY (storage_id) REFERENCES storage(id)
);

CREATE TABLE storage 
(
	id CHAR(36) PRIMARY KEY NOT NULL,
	[name] VARCHAR(100) NOT NULL,
	description VARCHAR(255)
);
