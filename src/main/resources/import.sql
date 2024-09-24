


INSERT INTO distribuicao_db.cliente(nome, cpf) VALUES('João Silva', '123.456.789-00');
INSERT INTO distribuicao_db.cliente(nome, cpf) VALUES('Maria Oliveira', '234.567.890-11');
INSERT INTO distribuicao_db.cliente(nome, cpf) VALUES('Carlos Pereira', '345.678.901-22');
INSERT INTO distribuicao_db.cliente(nome, cpf) VALUES('Ana Souza', '456.789.012-33');
INSERT INTO distribuicao_db.cliente(nome, cpf) VALUES('Fernanda Lima', '567.890.123-44');
INSERT INTO distribuicao_db.cliente(nome, cpf) VALUES('Paulo Mendes', '678.901.234-55');
INSERT INTO distribuicao_db.cliente(nome, cpf) VALUES('Juliana Rocha', '789.012.345-66');
INSERT INTO distribuicao_db.cliente(nome, cpf) VALUES('Roberto Alves', '890.123.456-77');
INSERT INTO distribuicao_db.cliente(nome, cpf) VALUES('Patrícia Costa', '901.234.567-88');
INSERT INTO distribuicao_db.cliente(nome, cpf) VALUES('Marcos Ferreira', '012.345.678-99');




INSERT INTO distribuicao_db.usuario(nome) VALUES('system');
INSERT INTO distribuicao_db.usuario(nome) VALUES('u_EA');
INSERT INTO distribuicao_db.usuario(nome) VALUES('u_EB');
INSERT INTO distribuicao_db.usuario(nome) VALUES('u_EC');
INSERT INTO distribuicao_db.usuario(nome) VALUES('u_ED');

INSERT INTO distribuicao_db.unidade_tratamento (id, nome, usuario_impessoal_id, porcentagem_maxima_diaria) VALUES(1, 'EA', 2, 25.0);
INSERT INTO distribuicao_db.unidade_tratamento (id, nome, usuario_impessoal_id, porcentagem_maxima_diaria) VALUES(2, 'EB', 3,  25.0);
INSERT INTO distribuicao_db.unidade_tratamento (id, nome, usuario_impessoal_id, porcentagem_maxima_diaria) VALUES(3, 'EC', 4, 25.0);
INSERT INTO distribuicao_db.unidade_tratamento(id, nome, usuario_impessoal_id, porcentagem_maxima_diaria) VALUES(4, 'ED',5 , 25.0);

INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG1', 1, 1);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG2', 1, 2);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG3', 1, 3);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG4', 1, 1);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG5', 1, 2);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG6', 1, 3);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG7', 1, 1);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG8', 1, 2);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG9', 1, 3);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG10', 1, 1);

INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG11', 1, 4);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG12', 1, 5);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG13', 1, 4);


INSERT INTO distribuicao_db.distribuicao_cliente_estrategico(cliente_id, unidade_tratamento_id) VALUES(1, 1);
INSERT INTO distribuicao_db.distribuicao_cliente_estrategico(cliente_id, unidade_tratamento_id) VALUES(2, 2);



