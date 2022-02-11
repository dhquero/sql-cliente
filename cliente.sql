CREATE DATABASE cliente;
USE cliente;

CREATE TABLE TB_USUARIO (
    ID_USU int(11) AUTO_INCREMENT NOT NULL,
    NM_USU varchar(255) NOT NULL,
    PRIMARY KEY(ID_USU)
);

CREATE TABLE TB_ENDERECO (
    ID_END int(11) AUTO_INCREMENT NOT NULL,
    ID_USU int(11) NOT NULL,
    DESC_END varchar(255) NOT NULL,
    PRIMARY KEY(ID_END),
    FOREIGN KEY (ID_USU) REFERENCES TB_USUARIO(ID_USU)
);

CREATE TABLE TB_DEPENDENTE (
    ID_DEPEND int(11) AUTO_INCREMENT NOT NULL,
    ID_USU int(11) NOT NULL,
    NM_DEPEND varchar(255) NOT NULL,
    PRIMARY KEY(ID_DEPEND),
    FOREIGN KEY (ID_USU) REFERENCES TB_USUARIO(ID_USU)
);

INSERT INTO TB_USUARIO (NM_USU) VALUES ('Elias Rodrigo Gomes'), ('Lucca Kevin Felipe Freitas'), ('Isaac Felipe Augusto Cardoso'), ('Gabriela Yasmin da Silva'), ('Calebe Tomás Lima');
INSERT INTO TB_ENDERECO (ID_USU, DESC_END) VALUES (2, 'Rua Oderico Nilo Menin, Guarulhos-SP'), (4, 'Rua Paulo Leiria, Rio Grande-RS'), (1, 'Av Américo Belay, Maringa-PR'), (3, 'Rod Governador Mário Covas, Angra dos Reis-RJ'), (5, 'Rua Eugênio Bernardes Pereira, Poços de Caldas-MG');
INSERT INTO TB_DEPENDENTE (ID_USU, NM_DEPEND) VALUES (2, 'Kamilly Giovanna Martins'), (5, 'Vinicius Hugo Yuri Costa'), (4, 'Danilo Nathan Barros'), (1, 'Diego Ian Pinto'), (3, 'Heloisa Emanuelly Moura'), (3, 'Débora Isabel Juliana Carvalho'), (4, 'Marcelo Caio Thiago Rodrigues'), (1, 'Luiza Joana Marina Lima'), (4, 'Alexandre Calebe Pereira'), (5, 'Raul Bruno Souza');


-- Selecionar todos os dados da tabela usuário
SELECT * FROM TB_USUARIO;

-- Selecionar todos os dados da tabela endereço
SELECT * FROM TB_ENDERECO;

-- Selecionar todos os dados da tabela dependente
SELECT * FROM TB_DEPENDENTE;

-- Selecionar os dependentes de Gabriela Yasmin: nome e endereço
SELECT NM_USU, DESC_END, NM_DEPEND
FROM TB_USUARIO
INNER JOIN TB_ENDERECO ON (TB_ENDERECO.ID_USU = TB_USUARIO.ID_USU)
INNER JOIN TB_DEPENDENTE ON (TB_DEPENDENTE.ID_USU = TB_ENDERECO.ID_USU)
WHERE NM_USU = 'Gabriela Yasmin da Silva';

-- Selecionar os dependentes do usuário que contenha o nome Rodrigo: nome e endereço
SELECT NM_USU, DESC_END, NM_DEPEND
FROM TB_USUARIO
INNER JOIN TB_ENDERECO ON (TB_ENDERECO.ID_USU = TB_USUARIO.ID_USU)
INNER JOIN TB_DEPENDENTE ON (TB_DEPENDENTE.ID_USU = TB_ENDERECO.ID_USU)
WHERE NM_USU LIKE '%Rodrigo%';
