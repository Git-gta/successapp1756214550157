CREATE TABLE Project (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    category VARCHAR(50) NOT NULL,
    targetAudience TEXT NOT NULL,
    logoPrompt TEXT NOT NULL,
    colorScheme VARCHAR(50) NOT NULL
);

CREATE TABLE Feature (
    id SERIAL PRIMARY KEY,
    projectId INTEGER REFERENCES Project(id),
    featureDescription TEXT NOT NULL
);

CREATE TABLE TechStack (
    id SERIAL PRIMARY KEY,
    projectId INTEGER REFERENCES Project(id),
    techName VARCHAR(50) NOT NULL
);

INSERT INTO Project (name, description, category, targetAudience, logoPrompt, colorScheme)
VALUES ('SuccessApp1756214550157', 'Application SaaS complète avec dashboard, authentification et API REST pour suivre et gérer les indicateurs de réussite d'une entreprise.', 'Gestion d'entreprise', 'Dirigeants et cadres de PME et d'entreprises de taille moyenne', 'Un logo minimaliste représentant la réussite d'une entreprise avec des formes géométriques simples et des couleurs contrastées', '#1a73e8,#34a853');

INSERT INTO Feature (projectId, featureDescription)
VALUES
(1, 'Tableau de bord personnalisable avec indicateurs clés de performance'),
(1, 'Authentification sécurisée avec gestion des utilisateurs et des rôles'),
(1, 'API REST pour intégrer les données avec d'autres systèmes');

INSERT INTO TechStack (projectId, techName)
VALUES
(1, 'React'),
(1, 'Node.js'),
(1, 'PostgreSQL');