

INSERT INTO  CardapioDoDia (nome_cardapio, valor_cardapio) VALUES ('Água', '2.50');
INSERT INTO  CardapioDoDia (nome_cardapio, valor_cardapio) VALUES ('Café', '1.00');
INSERT INTO  CardapioDoDia (nome_cardapio, valor_cardapio) VALUES ('Refrigerante', '3.50');
INSERT INTO  CardapioDoDia (nome_cardapio, valor_cardapio) VALUES ('Cuscuz com queijo', '4.50');
INSERT INTO  CardapioDoDia (nome_cardapio, valor_cardapio) VALUES ('Cuscuz com carne', '5.00');
INSERT INTO  CardapioDoDia (nome_cardapio, valor_cardapio) VALUES ('Cuscuz com ovos', '4.50');
INSERT INTO  CardapioDoDia (nome_cardapio, valor_cardapio) VALUES ('Baguete com queijo', '3.50');
INSERT INTO  CardapioDoDia (nome_cardapio, valor_cardapio) VALUES ('Baguete com carne', '4.00');
INSERT INTO  CardapioDoDia (nome_cardapio, valor_cardapio) VALUES ('Baguete com ovos', '3.50');



INSERT INTO  atendente (nome_atendente) VALUES ('Joaquim');
INSERT INTO  atendente (nome_atendente) VALUES ('Joana');
INSERT INTO  atendente (nome_atendente) VALUES ('Anne');

INSERT INTO  cliente (nome_cliente) VALUES ('Pedro');
INSERT INTO  cliente (nome_cliente) VALUES ('Luiz');
INSERT INTO  cliente (nome_cliente) VALUES ('Valter');
INSERT INTO  cliente (nome_cliente) VALUES ('Sidraque');
INSERT INTO  cliente (nome_cliente) VALUES ('Deyvid');


INSERT INTO  Pedido (descricao_pedido, cod_cliente, data_pedido) VALUES ('Cuscuz com queijo', '1', '2019-05-06');
INSERT INTO  Pedido (descricao_pedido, cod_cliente, data_pedido) VALUES ('Baguete com carne', '2', '2019-05-06');
INSERT INTO  Pedido (descricao_pedido, cod_cliente, data_pedido) VALUES ('Cuscuz com queijo', '3', '2019-05-07');
INSERT INTO  Pedido (descricao_pedido, cod_cliente, data_pedido) VALUES ('Baguete com carne', '4', '2019-05-08');
INSERT INTO  Pedido (descricao_pedido, cod_cliente, data_pedido) VALUES ('Cuscuz com queijo', '5', '2019-05-08');
INSERT INTO  Pedido (descricao_pedido, cod_cliente, data_pedido) VALUES ('Baguete com carne', '1', '2019-05-08');
INSERT INTO  Pedido (descricao_pedido, cod_cliente, data_pedido) VALUES ('Baguete com ovos', '2', '2019-05-07');
INSERT INTO  Pedido (descricao_pedido, cod_cliente, data_pedido) VALUES ('Refrigerante', '3','2019-05-05');
INSERT INTO  Pedido (descricao_pedido, cod_cliente, data_pedido) VALUES ('Café', '4', '2019-05-05');

INSERT INTO  venda (valor_venda, fk_cod_pedido) VALUES ('4.50', '1');
INSERT INTO  venda (valor_venda, fk_cod_pedido) VALUES ('4.00', '2');
INSERT INTO  venda (valor_venda, fk_cod_pedido) VALUES ('4.50', '3');
INSERT INTO  venda (valor_venda, fk_cod_pedido) VALUES ('4.00', '4');
INSERT INTO  venda (valor_venda, fk_cod_pedido) VALUES ('4.50', '5');
INSERT INTO  venda (valor_venda, fk_cod_pedido) VALUES ('4.00', '6');
INSERT INTO  venda (valor_venda, fk_cod_pedido) VALUES ('3.50', '7');
INSERT INTO  venda (valor_venda, fk_cod_pedido) VALUES ('3.50', '8');
INSERT INTO  venda (valor_venda, fk_cod_pedido) VALUES ('1.00', '9');











hora_pedido TIME,
descricao_pedido VARCHAR(200),
status_pedido VARCHAR(200),
cod_cliente INT,
foreign key(cod_cliente) references Cliente(cod_cliente),
cod_atendente INT,

SELECT * FROM pedido WHERE data_pedido > '2019-05-06' AND data_pedido < '2019-05-08';

SELECT SUM(valor_venda) FROM venda WHERE cod_venda >= 2 AND cod_venda <= 3;

UPDATE pedido SET cod_atendente=1 WHERE cod_pedido = 2;

SELECT pedido.cod_pedido, pedido.data_pedido, pedido.hora_pedido, pedido.descricao_pedido, pedido.status_pedido, pedido.obs_pedido, pedido.cod_cliente, pedido.cod_atendente, cliente.cod_cliente, cliente.nome_cliente  FROM pedido INNER JOIN cliente ON pedido.cod_cliente = cliente.cod_cliente;

SELECT pedido.cod_pedido, pedido.data_pedido, pedido.hora_pedido, pedido.descricao_pedido, pedido.status_pedido, pedido.obs_pedido, pedido.cod_cliente, pedido.cod_atendente, cliente.cod_cliente, cliente.nome_cliente  FROM pedido INNER JOIN cliente ON pedido.cod_cliente = cliente.cod_cliente WHERE cliente.nome_cliente = "Pedro"

SELECT  SUM(valor_venda)  FROM venda INNER JOIN pedido ON venda.fk_cod_pedido = pedido.cod_pedido WHERE pedido.data_pedido = "2019-05-07";

