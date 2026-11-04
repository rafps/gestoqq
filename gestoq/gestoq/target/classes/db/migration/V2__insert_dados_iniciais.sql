-- CATEGORIAS
INSERT INTO categorias (nome) VALUES
('Ferramentas Manuais'),
('Ferramentas Elétricas'),
('Produtos Químicos'),
('Equipamentos de Proteção Individual'),
('Materiais de Construção');



-- FORNECEDORES
INSERT INTO fornecedores (nome, cnpj, telefone, email) VALUES
('Ferramentas Brasil Ltda', '12.345.678/0001-90', '(61) 3333-1000', 'contato@ferramentasbrasil.com'),
('Tech Tools Distribuidora', '23.456.789/0001-01', '(61) 3333-2000', 'vendas@techtools.com'),
('Química Forte Ltda', '34.567.890/0001-12', '(61) 3333-3000', 'contato@quimicaforte.com'),
('Protege Equipamentos', '45.678.901/0001-23', '(61) 3333-4000', 'vendas@protege.com');



-- PRODUTOS
INSERT INTO produtos
(nome, descricao, codigo, preco, estoque_atual, estoque_minimo, categoria_id, fornecedor_id)
VALUES
    (
        'Martelo de Unha 25mm',
        'Martelo de aço com cabo em madeira',
        'FER-001',
        49.90,
        25,
        5,
        1,
        1
    ),
    (
        'Alicate Universal 8"',
        'Alicate universal para uso geral',
        'FER-002',
        39.90,
        30,
        10,
        1,
        1
    ),
    (
        'Furadeira de Impacto 650W',
        'Furadeira elétrica de impacto 650W',
        'FER-003',
        289.90,
        12,
        5,
        2,
        2
    ),
    (
        'Desengraxante Industrial 5L',
        'Desengraxante para limpeza pesada',
        'QUI-001',
        79.90,
        20,
        5,
        3,
        3
    ),
    (
        'Removedor de Tinta 1L',
        'Removedor químico para tintas',
        'QUI-002',
        34.90,
        8,
        5,
        3,
        3
    ),
    (
        'Luva de Proteção',
        'Luva de proteção para trabalhos gerais',
        'EPI-001',
        14.90,
        50,
        15,
        4,
        4
    );