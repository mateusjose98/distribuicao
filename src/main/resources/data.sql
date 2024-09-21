INSERT INTO distribuicao_db.unidade_tratamento
(id, nome, porcentagem_maxima_diaria)
VALUES(1, 'A', 10.0);
INSERT INTO distribuicao_db.unidade_tratamento
(id, nome, porcentagem_maxima_diaria)
VALUES(2, 'B', 35.0);
INSERT INTO distribuicao_db.unidade_tratamento
(id, nome, porcentagem_maxima_diaria)
VALUES(3, 'C', 55.0);

INSERT INTO distribuicao_db.usuario
(nome)
VALUES('system');

INSERT INTO distribuicao_db.pacote
(numero_pacote, usuario_id)
VALUES('AWW10', 1);
