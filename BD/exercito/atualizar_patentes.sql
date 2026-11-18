USE exercito;

-- Execute este arquivo apenas se voce ja tinha importado a versao antiga
-- do banco, na qual a tabela patentes estava ligada aos soldados.
ALTER TABLE patentes
    DROP FOREIGN KEY fk_patentes_soldados,
    DROP COLUMN id_soldado,
    DROP COLUMN nome_soldado,
    CHANGE COLUMN salario salario DECIMAL(11,2) NOT NULL,
    ADD COLUMN nome_patente VARCHAR(100) NOT NULL DEFAULT '';
