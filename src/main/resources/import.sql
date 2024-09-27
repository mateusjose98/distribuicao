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
INSERT INTO distribuicao_db.cliente(nome, cpf) VALUES('Larissa Martins', '223.456.789-10');
INSERT INTO distribuicao_db.cliente(nome, cpf) VALUES('Bruno Almeida', '334.567.890-21');
INSERT INTO distribuicao_db.cliente(nome, cpf) VALUES('Renata Gomes', '445.678.901-32');
INSERT INTO distribuicao_db.cliente(nome, cpf) VALUES('Gustavo Araújo', '556.789.012-43');
INSERT INTO distribuicao_db.cliente(nome, cpf) VALUES('Tatiana Barros', '667.890.123-54');
INSERT INTO distribuicao_db.cliente(nome, cpf) VALUES('Eduardo Nunes', '778.901.234-65');
INSERT INTO distribuicao_db.cliente(nome, cpf) VALUES('Camila Duarte', '889.012.345-76');
INSERT INTO distribuicao_db.cliente(nome, cpf) VALUES('Ricardo Pires', '990.123.456-87');
INSERT INTO distribuicao_db.cliente(nome, cpf) VALUES('Amanda Silva', '101.234.567-98');
INSERT INTO distribuicao_db.cliente(nome, cpf) VALUES('Daniel Costa', '212.345.678-09');
INSERT INTO distribuicao_db.cliente(nome, cpf) VALUES('Carla Fernandes', '323.456.789-10');
INSERT INTO distribuicao_db.cliente(nome, cpf) VALUES('Thiago Ribeiro', '434.567.890-21');
INSERT INTO distribuicao_db.cliente(nome, cpf) VALUES('Bianca Lopes', '545.678.901-32');
INSERT INTO distribuicao_db.cliente(nome, cpf) VALUES('Lucas Vieira', '656.789.012-43');
INSERT INTO distribuicao_db.cliente(nome, cpf) VALUES('Letícia Silva', '767.890.123-54');
INSERT INTO distribuicao_db.cliente(nome, cpf) VALUES('Bruna Monteiro', '878.901.234-65');
INSERT INTO distribuicao_db.cliente(nome, cpf) VALUES('Marcelo Sousa', '989.012.345-76');


INSERT INTO distribuicao_db.unidade_tratamento (id, nome,  porcentagem_maxima_diaria) VALUES(1, 'Unidade A',  25.0);
INSERT INTO distribuicao_db.unidade_tratamento (id, nome,  porcentagem_maxima_diaria) VALUES(2, 'Unidade B',  25.0);
INSERT INTO distribuicao_db.unidade_tratamento (id, nome,  porcentagem_maxima_diaria) VALUES(3, 'Unidade C',  25.0);
INSERT INTO distribuicao_db.unidade_tratamento(id, nome,  porcentagem_maxima_diaria) VALUES(4, 'Unidade D', 25.0);


INSERT INTO distribuicao_db.usuario(id, nome, unidade_tratamento_id, porcentagem_maxima_diaria) VALUES(1, 'Func1A', 1, 50);
INSERT INTO distribuicao_db.usuario(id, nome, unidade_tratamento_id,  porcentagem_maxima_diaria) VALUES(2, 'Func2A', 1, 45);
INSERT INTO distribuicao_db.usuario(id, nome, unidade_tratamento_id,  porcentagem_maxima_diaria) VALUES(3, 'Func3A', 1, 5);

INSERT INTO distribuicao_db.usuario(id, nome, unidade_tratamento_id,  porcentagem_maxima_diaria) VALUES(4, 'Func1B', 2, 50);
INSERT INTO distribuicao_db.usuario(id, nome, unidade_tratamento_id,  porcentagem_maxima_diaria) VALUES(5, 'Func2B', 2, 50);

INSERT INTO distribuicao_db.usuario(id, nome, unidade_tratamento_id,  porcentagem_maxima_diaria) VALUES(6, 'Func1C', 3, 60);
INSERT INTO distribuicao_db.usuario(id, nome, unidade_tratamento_id,  porcentagem_maxima_diaria) VALUES(7, 'Func2C', 3, 40);

INSERT INTO distribuicao_db.usuario(id, nome, unidade_tratamento_id,  porcentagem_maxima_diaria) VALUES(8, 'Func1D', 4, 90);
INSERT INTO distribuicao_db.usuario(id, nome, unidade_tratamento_id,  porcentagem_maxima_diaria) VALUES(9, 'Func2D', 4, 10);




INSERT INTO distribuicao_db.usuario(id, nome, unidade_tratamento_id,  porcentagem_maxima_diaria) VALUES(10, 'App_User', null, null);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG1', 10, 1);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG2', 10, 2);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG3', 10, 1);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG4', 10, 2);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG5', 10, 3);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG6', 10, 3);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG7', 10, 3);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG8', 10, 4);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG9', 10, 4);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG10', 10, 4);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG11', 10, 4);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG12', 10, 5);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG13', 10, 5);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG14', 10, 5);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG15', 10, 5);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG16', 10, 6);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG17', 10, 6);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG18', 10, 6);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG19', 10, 6);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG20', 10, 7);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG21', 10, 7);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG22', 10, 7);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG23', 10, 7);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG24', 10, 8);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG25', 10, 8);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG26', 10, 8);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG27', 10, 8);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG28', 10, 8);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG29', 10, 8);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG30', 10, 8);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG31', 10, 9);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG32', 10, 9);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG33', 10, 9);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG34', 10, 9);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG35', 10, 10);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG36', 10, 10);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG37', 10, 10);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG38', 10, 10);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG39', 10, 11);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG40', 10, 11);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG41', 10, 11);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG42', 10, 11);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG43', 10, 12);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG44', 10, 12);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG45', 10, 12);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG46', 10, 12);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG47', 10, 13);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG48', 10, 13);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG49', 10, 13);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG50', 10, 13);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG51', 10, 14);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG52', 10, 14);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG53', 10, 14);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG54', 10, 14);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG55', 10, 15);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG56', 10, 15);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG57', 10, 15);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG58', 10, 15);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG59', 10, 16);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG60', 10, 16);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG61', 10, 16);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG62', 10, 16);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG63', 10, 17);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG64', 10, 17);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG65', 10, 17);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG66', 10, 17);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG67', 10, 18);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG68', 10, 18);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG69', 10, 18);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG70', 10, 18);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG71', 10, 19);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG72', 10, 19);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG73', 10, 19);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG74', 10, 19);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG75', 10, 20);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG76', 10, 20);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG77', 10, 20);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG78', 10, 20);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG79', 10, 21);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG80', 10, 21);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG81', 10, 21);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG82', 10, 21);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG83', 10, 22);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG84', 10, 22);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG85', 10, 22);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG86', 10, 22);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG87', 10, 23);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG88', 10, 23);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG89', 10, 23);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG90', 10, 23);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG91', 10, 24);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG92', 10, 24);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG93', 10, 24);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG94', 10, 24);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG95', 10, 25);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG96', 10, 25);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG97', 10, 25);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG98', 10, 25);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG99', 10, 26);
INSERT INTO distribuicao_db.pacote(numero_pacote, usuario_id, cliente_id) VALUES('PKG100', 10, 26);




--INSERT INTO distribuicao_db.distribuicao_cliente_estrategico(cliente_id, unidade_tratamento_id) VALUES(1, 1);
--INSERT INTO distribuicao_db.distribuicao_cliente_estrategico(cliente_id, unidade_tratamento_id) VALUES(2, 2);



