

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
INSERT INTO distribuicao_db.cliente(nome, cpf) VALUES('Cairo', '860.123.456-77');
INSERT INTO distribuicao_db.cliente(nome, cpf) VALUES('Felipe', '201.234.567-88');
INSERT INTO distribuicao_db.cliente(nome, cpf) VALUES('Sérgio', '112.345.678-99');


INSERT INTO distribuicao_db.usuario(nome) VALUES('User_Unidade A');
INSERT INTO distribuicao_db.usuario(nome) VALUES('User_Unidade B');
INSERT INTO distribuicao_db.usuario(nome) VALUES('User_Unidade C');
INSERT INTO distribuicao_db.usuario(nome) VALUES('User_Unidade D');
INSERT INTO distribuicao_db.usuario(nome) VALUES('App_User');

INSERT INTO distribuicao_db.unidade_tratamento (id, nome, usuario_impessoal_id, porcentagem_maxima_diaria) VALUES(1, 'Unidade A', 1, 5.0);
INSERT INTO distribuicao_db.unidade_tratamento (id, nome, usuario_impessoal_id, porcentagem_maxima_diaria) VALUES(2, 'Unidade B', 2,  5.0);
INSERT INTO distribuicao_db.unidade_tratamento (id, nome, usuario_impessoal_id, porcentagem_maxima_diaria) VALUES(3, 'Unidade C', 3, 65.0);
INSERT INTO distribuicao_db.unidade_tratamento(id, nome, usuario_impessoal_id, porcentagem_maxima_diaria) VALUES(4, 'Unidade D',4 , 25.0);

INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG1', 5, 1);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG2', 5, 2);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG3', 5, 1);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG4', 5, 2);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG5', 5, 3);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG6', 5, 3);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG7', 5, 3);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG8', 5, 4);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG9', 5, 4);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG10', 5, 4);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG11', 5, 4);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG12', 5, 5);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG13', 5, 5);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG14', 5, 5);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG15', 5, 5);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG16', 5, 6);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG17', 5, 6);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG18', 5, 6);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG19', 5, 6);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG20', 5, 7);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG21', 5, 7);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG22', 5, 7);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG23', 5, 7);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG24', 5, 8);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG25', 5, 8);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG26', 5, 8);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG27', 5, 8);



INSERT INTO distribuicao_db.distribuicao_cliente_estrategico(cliente_id, unidade_tratamento_id) VALUES(1, 1);
INSERT INTO distribuicao_db.distribuicao_cliente_estrategico(cliente_id, unidade_tratamento_id) VALUES(2, 2);



