CREATE TABLE tanques (
	id_tanque INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	nome varchar(50) NOT NULL,
	capacidade_litros INT NOT NULL,
	capacidade_peixes INT NOT NULL
);

CREATE TABLE sensores (
	id_sensor INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	tipo varchar(40) NOT NULL,
	id_tanque INT NOT NULL,
	valor INT NOT NULL,
	grandeza varchar(30) NOT NULL,
	data timestamp DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (id_tanque) REFERENCES tanques (id_tanque)
);