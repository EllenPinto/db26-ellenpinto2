CREATE SCHEMA a22604505;
GO

CREATE TABLE a22604505.alojamento (
    id         INT IDENTITY(1,1) CONSTRAINT id_alojamento PRIMARY KEY,
    nome       VARCHAR(50)  NOT NULL CONSTRAINT id_alojamento_nome UNIQUE,
    tipo  VARCHAR(30)  NOT NULL,   
    hotel    VARCHAR(80)  NOT NULL    
);

CREATE TABLE a22604505.hospede (
    id         INT IDENTITY(1,1) CONSTRAINT id_hospede PRIMARY KEY,
    nome       VARCHAR(80)  NOT NULL,
    email      VARCHAR(100) NOT NULL CONSTRAINT id_hospede_email UNIQUE,
    nacionalidade VARCHAR(40) NULL
);

GO 

SELECT s.name AS aluno, t.name AS tabela
FROM sys.tables t
JOIN sys.schemas s ON s.schema_id = t.schema_id
WHERE s.name = 'a22604505'
ORDER BY t.name;
