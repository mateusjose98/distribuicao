-- V1__Create_tables.sql

CREATE TABLE `pagamento` (
    `id` bigint NOT NULL AUTO_INCREMENT,
    `valor` decimal(38,2) DEFAULT NULL,
    `data_pagamento` datetime(6) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `unidade_tratamento` (
    `id` bigint NOT NULL AUTO_INCREMENT,
    `nome` varchar(255) DEFAULT NULL,
    `porcentagem_maxima_diaria` double DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `usuario` (
    `id` bigint NOT NULL AUTO_INCREMENT,
    `nome` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `pacote` (
    `id` bigint NOT NULL AUTO_INCREMENT,
    `numero_pacote` varchar(255) DEFAULT NULL,
    `pagamento_id` bigint DEFAULT NULL,
    `usuario_id` bigint DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `UK_pagamento` (`pagamento_id`),
    KEY `FK_pacote_usuario` (`usuario_id`),
    CONSTRAINT `FK_pacote_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`),
    CONSTRAINT `FK_pacote_pagamento` FOREIGN KEY (`pagamento_id`) REFERENCES `pagamento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `distribuicao` (
    `id` bigint NOT NULL AUTO_INCREMENT,
    `data_distribuicao` datetime(6) DEFAULT NULL,
    `pacote_id` bigint DEFAULT NULL,
    `unidade_tratamento_id` bigint DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `FK_distribuicao_pacote` (`pacote_id`),
    KEY `FK_distribuicao_unidade_tratamento` (`unidade_tratamento_id`),
    CONSTRAINT `FK_distribuicao_pacote` FOREIGN KEY (`pacote_id`) REFERENCES `pacote` (`id`),
    CONSTRAINT `FK_distribuicao_unidade_tratamento` FOREIGN KEY (`unidade_tratamento_id`) REFERENCES `unidade_tratamento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
