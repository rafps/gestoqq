CREATE TABLE categorias (
    id BIGSERIAL PRIMARY KEY,
         nome VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE fornecedores (
id BIGSERIAL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
        cnpj VARCHAR(18) UNIQUE,
              telefone VARCHAR(30),
                    email VARCHAR(150)
);

CREATE TABLE produtos (
                          id BIGSERIAL PRIMARY KEY,
                          nome VARCHAR(150) NOT NULL,
                          descricao TEXT,
                          codigo VARCHAR(50) NOT NULL UNIQUE,
                          preco NUMERIC(10, 2) NOT NULL CHECK (preco >= 0),
                          estoque_atual INTEGER NOT NULL DEFAULT 0 CHECK (estoque_atual >= 0),
                          estoque_minimo INTEGER NOT NULL DEFAULT 0 CHECK (estoque_minimo >= 0),
                          categoria_id BIGINT NOT NULL,
                          fornecedor_id BIGINT NOT NULL,

                          CONSTRAINT fk_produto_categoria
                              FOREIGN KEY (categoria_id)
                                  REFERENCES categorias(id),

                          CONSTRAINT fk_produto_fornecedor
                              FOREIGN KEY (fornecedor_id)
                                  REFERENCES fornecedores(id)
);

CREATE TABLE movimentacoes_estoque (
                                       id BIGSERIAL PRIMARY KEY,
                                       produto_id BIGINT NOT NULL,
                                       tipo VARCHAR(10) NOT NULL,
                                       quantidade INTEGER NOT NULL CHECK (quantidade > 0),
                                       data_movimentacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                       observacao TEXT,

                                       CONSTRAINT fk_movimentacao_produto
                                           FOREIGN KEY (produto_id)
                                               REFERENCES produtos(id),

                                       CONSTRAINT ck_movimentacao_tipo
                                           CHECK (tipo IN ('ENTRADA', 'SAIDA'))
);