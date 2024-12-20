-- Tabela Introdução
CREATE TABLE introducao (
    id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Identificador único da entrada',
    titulo VARCHAR(255) NOT NULL COMMENT 'Título da introdução',
    descricao TEXT NOT NULL COMMENT 'Descrição detalhada sobre o jogo',
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'Data de criação do registro'
);

-- Tabela Características
CREATE TABLE caracteristicas (
    id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Identificador único',
    nome VARCHAR(100) NOT NULL COMMENT 'Nome da característica',
    descricao TEXT NOT NULL COMMENT 'Descrição detalhada da característica',
    data_adicao TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'Data de adição ao banco'
);

-- Tabela Jogabilidade
CREATE TABLE jogabilidade (
    id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Identificador único',
    tipo VARCHAR(100) NOT NULL COMMENT 'Tipo de jogabilidade (single-player, multiplayer, etc.)',
    descricao TEXT NOT NULL COMMENT 'Descrição da jogabilidade',
    duracao_media INT COMMENT 'Duração média de uma sessão em minutos',
    data_insercao TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'Data de inserção'
);

-- Tabela Mecânicas
CREATE TABLE mecanicas (
    id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Identificador único',
    nome VARCHAR(100) NOT NULL COMMENT 'Nome da mecânica',
    descricao TEXT NOT NULL COMMENT 'Descrição detalhada da mecânica',
    nivel_dificuldade ENUM('Fácil', 'Moderado', 'Difícil') DEFAULT 'Moderado' COMMENT 'Nível de dificuldade',
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'Data de criação do registro'
);

-- Tabela Dúvidas
CREATE TABLE duvidas (
    id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Identificador único',
    pergunta TEXT NOT NULL COMMENT 'Pergunta feita pelo jogador',
    resposta TEXT NOT NULL COMMENT 'Resposta à pergunta',
    data_postagem TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'Data de postagem da dúvida'
);

-- Inserção Introdução
INSERT INTO introducao (titulo, descricao)
VALUES 
('Bem-vindo ao Clandestine Battlegrounds', 'Um jogo de Battleground ambientado no mundo do Roblox gratuito para você.');

-- Inserção Características
INSERT INTO caracteristicas (nome, descricao)
VALUES
('Mundo Aberto', 'Os jogadores podem explorar vastos territórios sem restrições.'),
('Multijogador Online', 'Possibilidade de jogar com amigos em tempo real.');

-- Inserção Jogabilidade
INSERT INTO jogabilidade (tipo, descricao, duracao_media)
VALUES 
('Single-player', 'A história principal pode ser jogada individualmente.', 120),
('Multiplayer', 'Até 2 jogadores podem formar um grupo para completar missões.', 60);

-- Inserção Mecânicas
INSERT INTO mecanicas (nome, descricao)
VALUES 
('Combate Tático', 'O jogador deve planejar ataques utilizando diferentes habilidades e armas.'),
('Estratégia', 'Desafios inteligentes com várias recompensas.'),

-- Inserção Dúvidas
INSERT INTO duvidas (pergunta, resposta)
VALUES 
('Como salvar o progresso no jogo?', 'O jogo salva automaticamente após cada missão.'),
('É possível jogar offline?', 'Sim, o modo single-player é totalmente offline.');