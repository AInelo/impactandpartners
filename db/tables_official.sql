
-- DROP TABLE IF EXISTS customers;
-- DROP TABLE IF EXISTS contacts;


-------------------------START OFFICIAL TABLES ------------------------------------------



CREATE TABLE typesclasse (
  id INT GENERATED ALWAYS AS IDENTITY,
  name VARCHAR,
  PRIMARY KEY(id)
);

CREATE TABLE classes_comptes (
  id INT GENERATED ALWAYS AS IDENTITY,
  typesclasse_id INT,
  nbr VARCHAR,
  name VARCHAR,
  description VARCHAR,
  PRIMARY KEY(id),
  CONSTRAINT fk_typesclasse
      FOREIGN KEY(typesclasse_id) 
        REFERENCES typesclasse(id)
        ON DELETE SET NULL
);

CREATE TABLE comptes (
  id INT GENERATED ALWAYS AS IDENTITY,
  classes_comptes_id INT,
  name VARCHAR,
  nbr VARCHAR,
  description VARCHAR,

  PRIMARY KEY (id),
  CONSTRAINT fk_classes_comptes
    FOREIGN KEY(classes_comptes_id)
      REFERENCES classes_comptes(id)
      ON DELETE SET NULL
);

CREATE TABLE sous_comptes (
  id INT GENERATED ALWAYS AS IDENTITY,
  comptes_id INT,
  name VARCHAR,
  nbr VARCHAR,
  description VARCHAR,

  PRIMARY KEY (id),
  CONSTRAINT fk_comptes
    FOREIGN KEY(comptes_id)
      REFERENCES comptes(id)
      ON DELETE SET NULL
);


CREATE TABLE comptes_inf (
    id INT GENERATED ALWAYS AS IDENTITY,
    sous_comptes_id INT,
    nbr VARCHAR,
    name VARCHAR,
    description VARCHAR,

    PRIMARY KEY (id),
    CONSTRAINT fk_sous_comptes
        FOREIGN KEY(sous_comptes_id)
            REFERENCES sous_comptes(id)
            ON DELETE SET NULL
);

CREATE TABLE users (
  users_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  firstname VARCHAR(255),
  lastname VARCHAR(255),
  email VARCHAR(255),
  password VARCHAR(255),
  numero_tel VARCHAR(20) DEFAULT NULL,
  date_inscription DATE,
  date_paiement DATE,
  status_paiement BOOLEAN DEFAULT false,
  duree_abonnement INT DEFAULT 365,
  user_category VARCHAR(50),
  type_user VARCHAR(50)
);

INSERT INTO users (firstname, lastname, email, password, numero_tel, date_inscription, date_paiement, status_paiement, duree_abonnement, user_category, type_user)
VALUES 
('Lionel', 'TOTON', 'totonlionel@gmail.com', '$2b$10$avfInxCAPcG0wn0ZLs49l.ZL1d5/3H0Zfo241z3RS02Q2Sklc0DrS', '96769716', '2024-01-02', '2024-02-02', true, 365, 'entreprise', 'simple');


1	"Lionel"	"TOTON"	"totonlionel@gmail.com"	"$2b$10$avfInxCAPcG0wn0ZLs49l.ZL1d5/3H0Zfo241z3RS02Q2Sklc0DrS"						
2	"Lionel"	"TOTON"	"totonlion2002@gmail.com"	"$2b$10$p5sfX9ALsPrsLbBCBK1hpuxl3h3i.vkPyLdQqujlB1M4wszYTxqha"						
3	"Jean"	"DOSSOU"	"impact@gmail.com"	"$2b$10$aPtxa3vryjnm6WgIl978W.OnSflcKjHGVQOtGX0fwbkUn5z.4HBa."						
4	"John"	"Doe"	"john@example.com"	"$2b$10$aPtxa3vryjnm6WgIl978W.OnSflcKjHGVQOtGX0fwbkUn5z.4HBa."	"96769716"	"2024-04-24 10:00:00"	"2024-04-24 10:00:00"	true	30	6
5	"Jane"	"Doe"	"jane@example.com"	"$2b$10$aPtxa3vryjnm6WgIl978W.OnSflcKjHGVQOtGX0fwbkUn5z.4HBa.asse"	"96769716"	"2024-04-22 08:00:00"	"2024-04-22 08:00:00"	true	30	24
6	"Bob"	"Johnson"	"bob@example.com"	"$2b$10$aPtxa3vryjnm6WgIl978W.OnSflcKjHGVQOtGX0fwbkUn5z.4HBa."	"96769716"	"2024-04-21 15:00:00"	"2024-04-21 15:00:00"	false	30	0
7	"Person"	"Add"	"person@gmail.com"	"$2b$10$gM5mEBhXc6PoKwzYtzrPBugqYidhjJYa8g6HoWEjdbRt00nNNbMKi"						




ALTER TABLE users
ADD temps_abonnement_restant INT;




---------------------- END OFFICIAL TABLES--------------------------------



















CREATE TABLE typesclasse (
  typesclasse_id INT GENERATED ALWAYS AS IDENTITY,
  typesclasse_name VARCHAR,
  PRIMARY KEY(typesclasse_id)
);

CREATE TABLE classes_comptes (
  classes_comptes_id INT GENERATED ALWAYS AS IDENTITY,
  typesclasse_id INT,
  class_nbr VARCHAR,
  class_comptes_name VARCHAR,
  class_comptes_description VARCHAR,
  PRIMARY KEY(classes_comptes_id),
  CONSTRAINT fk_typesclasse
      FOREIGN KEY(typesclasse_id) 
        REFERENCES typesclasse(typesclasse_id)
        ON DELETE SET NULL
);

CREATE TABLE comptes (
  comptes_id INT GENERATED ALWAYS AS IDENTITY,
  classes_comptes_id INT,
  comptes_name VARCHAR,
  comptes_nbr VARCHAR,
  comptes_description VARCHAR,

  PRIMARY KEY (comptes_id),
  CONSTRAINT fk_classes_comptes
    FOREIGN KEY(classes_comptes_id)
      REFERENCES classes_comptes(classes_comptes_id)
      ON DELETE SET NULL
);

CREATE TABLE sous_comptes (
  sous_comptes_id INT GENERATED ALWAYS AS IDENTITY,
  comptes_id INT,
  sous_comptes_name VARCHAR,
  sous_comptes_nbr VARCHAR,
  sous_comptes_description VARCHAR,

  PRIMARY KEY (sous_comptes_id),
  CONSTRAINT fk_comptes
    FOREIGN KEY(comptes_id)
      REFERENCES comptes(comptes_id)
      ON DELETE SET NULL
);


CREATE TABLE comptes_inf (
    comptes_inf_id INT GENERATED ALWAYS AS IDENTITY,
    sous_comptes_id INT,
    comptes_inf_nbr VARCHAR,
    comptes_inf_name VARCHAR,
    comptes_inf_description VARCHAR,
    PRIMARY KEY (comptes_inf_id),
    CONSTRAINT fk_sous_comptes
        FOREIGN KEY(sous_comptes_id)
            REFERENCES sous_comptes(sous_comptes_id)
            ON DELETE SET NULL
);

CREATE TABLE users (
  users_id INT GENERATED ALWAYS AS IDENTITY,
  firstname VARCHAR,
  lastname VARCHAR,
  email VARCHAR,
  password VARCHAR,
  numero_tel VARCHAR,
  date_inscription TIMESTAMP,
  date_paiement TIMESTAMP,
  status_paiement BOOLEAN,
  duree_abonnement INT,
  PRIMARY KEY (users_id)
);

CREATE TABLE "sous_comptes" (
  "id" SERIAL PRIMARY KEY,
  "class_nbr" VARCHAR,
  "name" VARCHAR,
  "description" VARCHAR,
  FOREIGN KEY ("id") REFERENCES "comptes" ("id")
);

CREATE TABLE "users" (
  "id" SERIAL PRIMARY KEY,
  "firstname" VARCHAR,
  "lastname" VARCHAR,
  "email" VARCHAR,
  "numero_tel" INT,
  "date_inscription" TIMESTAMP,
  "date_paiement" TIMESTAMP,
  "status_paiement" BOOLEAN,
  "duree_paiement" VARCHAR
);

CREATE TABLE "roles" (
  "id" SERIAL PRIMARY KEY,
  "users_simple" VARCHAR,
  "Admin" VARCHAR
);

CREATE TABLE "users_roles" (
  "users_id" INT,
  "roles_id" INT,
  PRIMARY KEY ("users_id", "roles_id"),
  FOREIGN KEY ("users_id") REFERENCES "users" ("id"),
  FOREIGN KEY ("roles_id") REFERENCES "roles" ("id")
);


INSERT INTO users (firstname, lastname, email, numero_tel, date_inscription, date_paiement, status_paiement, duree_paiement)
VALUES 
  ('John', 'Doe', 'john@example.com', 96769716, '2024-04-10', '2024-04-10', true, '1 month'),
  ('Jane', 'Smith', 'jane@example.com', 96769716, '2024-04-11', '2024-04-11', true, '1 month');


INSERT INTO typesclasse (name) VALUES ('COMPTES-SYSCOHADA REVISE'), ('COMPTES DES ENTITES A BUT NON LUCRATIF');


-- INSERT INTO classes_comptes (class_nbr, name, descrption)
-- VALUES
-- ('classe 1', 'Capitaux propres', 1),
-- ('classe 2', 'Immobilisations', 1);
-- ('classe 3', 'Stocks et en cours', 1),
-- ('classe 4', 'Tiers', 1),
-- ('classe 5', 'Tresorerie',)


INSERT INTO classes_comptes (nbr, typesclasse_id, name, description)
VALUES
('classe 1', 1 ,'Capitaux propres', 'Cette classe regroupe les comptes liés aux fonds propres de l''entreprise, y compris le capital social, les réserves, les bénéfices non distribués, etc. Elle reflète la partie de la valeur de l''entreprise détenue par ses actionnaires ou propriétaires.'),
('classe 2', 1, 'Immobilisations', 'Cette classe regroupe les comptes liés aux actifs immobilisés de l''entreprise, tels que les biens immobiliers, les équipements, les machines, les véhicules, etc. Ces actifs sont généralement détenus à long terme et sont utilisés dans les activités opérationnelles de l''entreprise.'),
('classe 3', 1, 'Stocks et en cours', 'Cette classe regroupe les comptes liés aux stocks de marchandises, de matières premières ou de produits en cours de production. Elle reflète la valeur des biens détenus par l''entreprise en vue de la vente ou de la transformation ultérieure.'),
('classe 4', 1, 'Tiers', 'Cette classe regroupe les comptes liés aux relations de l''entreprise avec des tiers, tels que les clients, les fournisseurs, les partenaires commerciaux, etc. Elle comprend généralement les comptes clients, les comptes fournisseurs, les dettes à court terme, etc.'),
('classe 5', 1, 'Tresorerie', 'Cette classe regroupe les comptes liés aux liquidités de l''entreprise, y compris les comptes bancaires, la caisse, les placements à court terme, etc. Elle reflète la disponibilité immédiate des ressources financières de l''entreprise.'),
('classe 6', 1, 'Charges des activités ordinaires', 'Cette classe regroupe les comptes liés aux charges d''exploitation de l''entreprise, telles que les salaires, les loyers, les fournitures de bureau, les frais généraux, etc. Elle reflète les coûts associés à la réalisation des activités principales de l''entreprise.'),
('classe 7', 1, 'Produits des activités ordinaires', 'Cette classe regroupe les comptes liés aux revenus générés par les activités principales de l''entreprise, tels que les ventes de produits ou de services, les revenus de location, les intérêts perçus, etc. Elle reflète les flux de revenus provenant des opérations commerciales régulières de l''entreprise.'),
('classe 8', 1, 'Autres charges et produits', 'Cette classe regroupe les comptes liés aux charges et aux produits qui ne sont pas directement liés aux activités ordinaires de l''entreprise. Elle peut inclure des éléments tels que les charges financières, les produits exceptionnels, les charges exceptionnelles, etc.'),
('classe 9', 1, 'Engagements hors bilan', 'Cette classe regroupe les comptes liés aux engagements de l''entreprise qui ne sont pas directement reflétés dans son bilan, mais qui peuvent avoir un impact financier significatif. Elle comprend généralement les garanties, les contrats de location, les engagements de pension, etc.');

INSERT INTO classes_comptes (nbr, typesclasse_id, name, description)
VALUES
('classe 1', 2 ,'Ressources durables', 'Cette classe regroupe les comptes liés aux ressources durables de l''entité à but non lucratif, tels que les fonds propres, les subventions permanentes, les dons affectés à long terme, etc. Elle reflète les ressources financières qui sont destinées à être utilisées sur le long terme pour soutenir les activités de l''entité.'),
('classe 2', 2 ,'Actif immobilise', 'Cette classe regroupe les comptes liés aux actifs immobilisés détenus par l''entité à but non lucratif, tels que les terrains, les bâtiments, les équipements, les véhicules, etc. Ces actifs sont généralement détenus à long terme et utilisés dans le cadre des activités opérationnelles de l''entité.'),
('classe 3', 2 ,'Stocks', 'Cette classe regroupe les comptes liés aux stocks détenus par l''entité à but non lucratif, tels que les fournitures de bureau, les équipements de première nécessité, les matériaux pour les programmes, etc. Elle reflète la valeur des biens détenus par l''entité pour une utilisation future dans ses activités.'),
('classe 4', 2 ,'Tiers', 'Cette classe regroupe les comptes liés aux relations de l''entité à but non lucratif avec des tiers, tels que les donateurs, les fournisseurs, les partenaires, etc. Elle comprend généralement les comptes de créances et de dettes à court terme, ainsi que les comptes de produits et de charges liés aux transactions avec des tiers.'),
('classe 5', 2 ,'Tresorerie resorerie', 'Cette classe regroupe les comptes liés à la trésorerie de l''entité à but non lucratif, y compris les comptes bancaires, la caisse, les placements à court terme, etc. Elle reflète la disponibilité immédiate des ressources financières de l''entité.'),
('classe 6', 2 ,'Charges des activités ordinaires', 'Cette classe regroupe les comptes liés aux charges d''exploitation de l''entité à but non lucratif, telles que les salaires, les frais administratifs, les frais de programme, les frais de collecte de fonds, etc. Elle reflète les coûts associés à la réalisation des activités principales de l''entité.'),
('classe 7', 2 ,'Produits des activités ordinaires', 'Cette classe regroupe les comptes liés aux revenus générés par les activités principales de l''entité à but non lucratif, tels que les dons, les subventions, les revenus des programmes, les revenus de collecte de fonds, etc. Elle reflète les flux de revenus provenant des opérations régulières de l''entité.'),
('classe 8', 2 ,'Autres charges et produits', 'Cette classe regroupe les comptes liés aux charges et aux produits qui ne sont pas directement liés aux activités ordinaires de l''entité à but non lucratif. Elle peut inclure des éléments tels que les charges financières, les produits exceptionnels, les charges exceptionnelles, etc.'),
('classe 9', 2 ,'Contributions volontaires', 'Cette classe regroupe les comptes liés aux contributions volontaires reçues par l''entité à but non lucratif, telles que les dons non affectés, les legs, les dons en nature, etc. Elle reflète les contributions financières ou matérielles reçues de tiers pour soutenir les activités de l''entité.');



SELECT id name FROM classes_comptes WHERE typesclasse_id = 1;

-------------------------------------INSERTION DES COMPTES DANS LA TABLES comptes--------------------------------

INSERT INTO comptes (classes_comptes_id, name, nbr, description)
VALUES 
(1, 'Capital', '10', 'Cet ensemble de comptes regroupe les comptes liés au capital social de l''entreprise, y compris les comptes pour les différentes classes d''actions émises, les primes d''émission, les ajustements de valeur, etc.'),
(1, 'Réserves', '11','Cet ensemble de comptes regroupe les comptes qui enregistrent les différentes réserves de l''entreprise, telles que les réserves légales, les réserves statutaires, les réserves pour investissement, les réserves pour actions propres, etc.' ),
(1, 'Report à nouveau','12', 'Cet ensemble de comptes regroupe les comptes qui reflètent les soldes reportés d''une année à l''autre, y compris les bénéfices non distribués ou les pertes accumulées des exercices précédents.'),
(1, 'Résultat net de l''exercices','13', 'Cet ensemble de comptes regroupe les comptes qui enregistrent le résultat net de l''entreprise pour la période comptable en cours, comprenant les produits, les charges, les produits financiers, les charges financières, etc.'),
(1, 'Subvention d''investissement', '14', ' Le groupe de compte (Subvention d''investissement) enregistre les fonds alloués pour financer des investissements spécifiques, provenant souvent d''entités gouvernementales ou privées. Ces subventions sont initialement comptabilisées comme des produits et transférées progressivement vers les comptes d''actifs concernés lors de leur utilisation, assurant ainsi la transparence financière de l''entreprise. '),
(1, 'Provision règlementées et fonds assimilés','15','Cet ensemble de comptes regroupe les comptes qui enregistrent les provisions réglementées et les fonds similaires constitués par l''entreprise pour se conformer à des exigences légales ou réglementaires spécifiques.'),
(1, 'Emprunts et dettes assimilés', '16', 'Cet ensemble de comptes regroupe les comptes qui enregistrent les emprunts et les dettes contractées par l''entreprise, y compris les dettes à court terme, les dettes à long terme, les emprunts bancaires, les obligations émises, etc.'),
(1, 'Dettes de location aquisition', '17', 'Cet ensemble de comptes regroupe les comptes qui enregistrent les dettes contractées par l''entreprise dans le cadre de contrats de location-acquisition, où les biens loués sont acquis par l''entreprise à la fin de la période de location.'),
(1, 'Dettes liées à des participations et comptes de liaison des établissements et sociétés en participation', '18', 'Cet ensemble de comptes regroupe les comptes qui enregistrent les dettes contractées par l''entreprise en relation avec ses participations dans d''autres entreprises ou ses comptes de liaison avec des établissements ou des sociétés en participation.'),
(1, 'Provisions pour risques et charges', '19', 'Cet ensemble de comptes regroupe les comptes qui enregistrent les provisions constituées par l''entreprise pour faire face à des risques ou à des charges probables mais incertains, tels que les provisions pour litiges, les provisions pour pertes sur créances douteuses, etc.'),
(2, 'Immobilisations incorporelles', '21', 'Ce compte regroupe les dépenses d''acquisition ou de développement d''actifs incorporels, tels que les brevets, les marques de commerce, les logiciels, les licences, les droits d''auteur, etc. Ces actifs n''ont pas de substance physique mais ont une valeur pour l''entreprise.'),
(2, 'Terrains', '22', 'Ce compte enregistre la valeur des terrains détenus par l''entreprise, y compris les terrains sur lesquels des bâtiments ou des installations sont construits, ainsi que les terrains détenus à des fins d''investissement ou de développement futur.'),
(2, 'Batiment, intallations techniques et agencements', '23', 'Ce compte regroupe les coûts d''acquisition, de construction ou d''aménagement des bâtiments, des installations techniques (telles que les installations de production, les équipements de traitement, etc.) et des agencements intérieurs.'),
(2, 'Materiel, mobilier et actifs biologiques', '24', 'Ce compte enregistre la valeur des actifs matériels et mobiliers détenus par l''entreprise, tels que les équipements de bureau, les machines, les véhicules, les meubles, ainsi que les actifs biologiques tels que les animaux ou les cultures agricoles.'),
(2, 'Avances et acomptes verses sur immobilisations financières', '25', 'Ce compte enregistre les paiements anticipés effectués par l''entreprise pour l''acquisition ou la construction d''immobilisations, mais dont la livraison ou la finalisation n''a pas encore eu lieu.'),
(2, 'Titres de participations', '26', 'Ce compte regroupe les investissements de l''entreprise dans des participations dans d''autres entreprises, généralement sous forme de actions ou de parts sociales. Il enregistre la valeur comptable de ces investissements.'),
(2, 'Autres immobilisations financières', '27', 'Ce compte regroupe les autres investissements financiers à long terme de l''entreprise qui ne sont pas classés comme des titres de participation, tels que les prêts à long terme, les dépôts de garantie, les créances à long terme, etc.'),
(2, 'Amortissements', '28', 'Ce compte enregistre les amortissements accumulés sur les actifs immobilisés de l''entreprise, représentant la répartition systématique des coûts d''acquisition ou de construction de ces actifs sur leur durée de vie utile estimée.'),
(2, 'Dépréciation des immobilisations', '29', 'Ce compte enregistre les dépréciations accumulées sur les actifs immobilisés de l''entreprise, reflétant la diminution de la valeur comptable de ces actifs en raison de l''obsolescence, de la détérioration, ou de toute autre raison jugée nécessaire.'),
(3, 'Marchandise', '31', 'Ce compte enregistre la valeur des marchandises achetées par l''entreprise pour la revente dans le cours normal de ses activités commerciales. Il comprend les biens destinés à être revendus tels quels, sans transformation significative.'),
(3, 'Matières premières et fournitures', '32', 'Ce compte regroupe les matières premières et les fournitures utilisées par l''entreprise dans le processus de production de biens ou de services. Il comprend les matières premières qui sont incorporées dans les produits finis ainsi que les fournitures consommables nécessaires à la production.'),
(3, 'Autres approvisionnements', '33', 'Ce compte enregistre les autres types d''approvisionnements ou de fournitures utilisés par l''entreprise dans ses activités, tels que les pièces de rechange, les consommables de maintenance, les emballages, etc.'),
(3, 'Produit en cours', '34', 'Ce compte enregistre la valeur des produits en cours de fabrication ou de transformation dans l''entreprise. Il s''agit des biens qui sont partiellement achevés mais qui ne sont pas encore considérés comme des produits finis prêts à être vendus.'),
(3, 'Services en cours', '35', 'Ce compte enregistre la valeur des services en cours d''exécution par l''entreprise pour ses clients. Il s''agit des services qui ont été commencés mais qui ne sont pas encore achevés à la fin de la période comptable.'),
(3, 'Produits finis', '36', 'Ce compte enregistre la valeur des produits entièrement achevés par l''entreprise et prêts à être vendus à des clients. Il représente la valeur des biens fabriqués ou assemblés qui sont disponibles pour la vente.'),
(3, 'Produits intermédiaires et résiduels', '37', 'Ce compte regroupe les produits intermédiaires ou les résidus qui sont générés dans le processus de production de l''entreprise. Il peut s''agir de sous-produits, de déchets ou de matériaux recyclables issus de la production principale de l''entreprise.'),
(3, 'Stocks en cours de route, en consignation ou en dépôt', '38', 'Ce compte enregistre la valeur des stocks détenus par l''entreprise qui sont en transit, en consignation chez des tiers ou en dépôt dans des entrepôts externes. Il représente les biens qui sont détenus temporairement en dehors des installations de l''entreprise.'),
(3, 'Dépréciation des stockes en cours de production', '39', 'Ce compte enregistre les dépréciations accumulées sur les stocks en cours de production de l''entreprise, reflétant la diminution de la valeur comptable de ces stocks en raison de l''obsolescence, de la détérioration ou de toute autre raison jugée nécessaire.'),
(4, 'Fournisseur et comptes rattachés', '40', 'Ce compte enregistre les dettes de l''entreprise envers ses fournisseurs pour l''achat de biens ou de services. Il inclut également les comptes rattachés tels que les dettes non échues, les escomptes accordés par les fournisseurs, les avoirs à recevoir, etc.'),
(4, 'Clients et compte rattachés', '41', 'Ce compte enregistre les créances de l''entreprise sur ses clients pour la vente de biens ou de services. Il comprend également les comptes rattachés tels que les créances non échues, les escomptes consentis aux clients, les remises à accorder, etc.'),
(4, 'Personnel', '42', 'Ce compte regroupe les comptes relatifs aux transactions financières impliquant le personnel de l''entreprise, y compris les salaires et les traitements, les charges sociales, les avantages sociaux, les indemnités de congés payés, etc.'),
(4, 'Organisation sociaux', '43', 'Ce compte enregistre les transactions financières de l''entreprise avec des organisations sociales telles que les syndicats, les caisses de retraite, les fonds de sécurité sociale, etc.'),
(4, 'Etat et collectivités publiques', '44', 'Ce compte regroupe les transactions financières de l''entreprise avec l''État et les collectivités publiques, y compris les impôts, les taxes, les cotisations sociales, les amendes, les subventions gouvernementales, etc.'),
(4, 'organismes internationaux', '45', 'Ce compte enregistre les transactions financières de l''entreprise avec des organismes internationaux tels que l''Union européenne, les Nations unies, la Banque mondiale, etc.'),
(4, 'Apporteurs, associés et groupe', '46', 'Ce compte regroupe les comptes liés aux transactions financières de l''entreprise avec ses actionnaires, ses associés ou d''autres entités du même groupe économique. Il inclut les capitaux propres, les dividendes à payer, les participations dans d''autres sociétés, etc.'),
(4, 'Débiteurs et créditeur divers', '47', 'Ce compte enregistre les créances et les dettes de l''entreprise qui ne sont pas classées dans d''autres catégories spécifiques. Il peut inclure des transactions diverses telles que les avances et les acomptes, les dépôts de garantie, les intérêts courus, etc.'),
(4, 'Créances et dettes Hors Activités Ordinaires (H.A.O)', '48', 'Ce compte regroupe les créances et les dettes de l''entreprise qui ne sont pas liées à ses activités commerciales ordinaires. Il peut inclure des transactions telles que les prêts accordés ou reçus, les investissements à long terme, les opérations de financement hors bilan, etc.'),
(4, 'Dépréciation et provisions pour risques à court terme', '49', 'Ce compte enregistre les dépréciations et les provisions constituées par l''entreprise pour faire face à des risques ou à des pertes probables à court terme liés à des tiers, tels que les créances douteuses, les litiges en cours, les garanties à honorer, etc.'),
(5, 'Titres de déplacement', '50', 'Ce compte enregistre les investissements de l''entreprise dans des titres financiers à court ou à long terme qui ne sont pas détenus en vue d''être revendus rapidement. Il comprend des titres tels que les actions, les obligations, les certificats de dépôt, les fonds communs de placement, etc.'),
(5, 'Valeurs à encaisser', '51', 'Ce compte regroupe les effets de commerce, les chèques, les lettres de change et autres valeurs qui sont encaissables par l''entreprise mais qui n''ont pas encore été déposées ou encaissées auprès des banques.'),
(5, 'Banques', '52', 'Ce compte enregistre les soldes des comptes bancaires détenus par l''entreprise, y compris les comptes courants, les comptes d''épargne, les comptes de dépôt à terme, etc.'),
(5, 'Etablissements financiers et assimilés', '53', 'Ce compte regroupe les soldes des comptes détenus par l''entreprise auprès d''établissements financiers autres que des banques, tels que les sociétés de crédit, les coopératives de crédit, les compagnies d''assurance, etc.'),
(5, 'Instruments de trésorerie', '54', 'Ce compte enregistre les instruments financiers à court terme utilisés par l''entreprise pour gérer sa trésorerie, tels que les bons du Trésor, les certificats de dépôt, les billets à ordre, etc.'),
(5, 'Instruments de monnaie électronique', '55', 'Ce compte enregistre les transactions financières de l''entreprise réalisées au moyen d''instruments de monnaie électronique, tels que les cartes de crédit, les cartes de débit, les virements électroniques, etc.'),
(5, 'Banques, crédits de trésorerie et descompte', '56', 'Ce compte regroupe les opérations financières de l''entreprise liées aux crédits de trésorerie accordés par les banques, ainsi qu''aux opérations d''escompte de traites ou de billets à ordre.'),
(5, 'Caisse', '57', 'Ce compte enregistre les espèces détenues physiquement par l''entreprise, généralement dans sa caisse ou son coffre-fort, et utilisées pour les transactions courantes et les petites dépenses.'),
(5, 'Régies d''avance, accréditifs et virements internes', '58', 'Ce compte enregistre les avances consenties par l''entreprise à ses employés ou à des tiers, ainsi que les opérations de virements internes entre différents comptes de l''entreprise.'),
(5, 'Dépréciation et provisions pour risques à court terme', '59', 'Ce compte enregistre les dépréciations et les provisions constituées par l''entreprise pour faire face à des risques ou à des pertes probables à court terme, tels que les créances douteuses, les pertes sur investissements, les litiges en cours, etc.'),
(6, 'Achats et variations de stocks', '60', 'Ce compte enregistre le coût d''achat des biens destinés à la revente ou à la production, ainsi que les variations de stocks de marchandises, de matières premières et de produits en cours sur une période donnée.'),
(6, 'Transports', '61', 'Ce compte regroupe les coûts liés au transport des biens achetés ou vendus par l''entreprise, y compris les frais de transport, les frais de douane, les frais d''expédition, etc.'),
(6, 'Services Extérieurs', '62', 'Ce compte enregistre les dépenses engagées par l''entreprise pour l''acquisition de services fournis par des tiers, tels que les honoraires professionnels, les frais de consultation, les frais de maintenance, etc.'),
(6, 'Autres services extérieurs', '63', 'Ce compte regroupe les autres dépenses engagées par l''entreprise pour l''acquisition de services fournis par des tiers, qui ne sont pas incluses dans le compte "Services extérieurs". Il peut inclure des frais tels que les frais de publicité, les frais de communication, les frais de formation, etc.'),
(6, 'Impôt et Taxes', '64', 'Ce compte enregistre les impôts et les taxes payés par l''entreprise au cours de l''exercice financier, y compris les impôts sur le revenu, les taxes de vente, les taxes foncières, les taxes sur la valeur ajoutée, etc.'),
(6, 'Autres charges', '65', 'Ce compte regroupe les charges qui ne sont pas classées dans d''autres catégories spécifiques de charges. Il peut inclure des dépenses telles que les pertes sur créances douteuses, les charges exceptionnelles, les frais de déménagement, etc.'),
(6, 'Charges de personnel', '66', 'Ce compte enregistre les dépenses liées à la rémunération et aux avantages sociaux du personnel de l''entreprise, y compris les salaires, les cotisations sociales, les indemnités de congés payés, les avantages sociaux, etc.'),
(6, 'Frais financiers et charges assimilées', '67', 'Ce compte regroupe les frais financiers engagés par l''entreprise, tels que les intérêts sur les emprunts, les frais bancaires, les commissions sur les transactions financières, etc.'),
(6, 'Dotation aux amortissements', '68', 'Ce compte enregistre les montants alloués par l''entreprise pour amortir ses actifs immobilisés sur une période donnée, afin de refléter leur dépréciation progressive due à l''usage et à l''obsolescence.'),
(6, 'Dotations aux provisions et aux dépréciations', '69', 'Ce compte regroupe les montants alloués par l''entreprise pour constituer des provisions destinées à couvrir des risques ou des pertes probables, ainsi que des dépréciations d''actifs pour refléter leur valeur réduite ou leur obsolescence.'),
(7, 'Vente', '70', 'Ce compte enregistre le produit des ventes de biens ou de services effectuées par l''entreprise au cours de l''exercice financier. Il inclut le chiffre d''affaires réalisé par l''entreprise à partir de ses activités principales.'),
(7, 'Subventions d''exploitation', '71', 'Ce compte enregistre les subventions reçues par l''entreprise pour financer ses activités opérationnelles courantes. Ces subventions peuvent provenir d''organismes gouvernementaux, d''organisations internationales ou d''autres entités.'),
(7, 'Production immobilisée', '72', 'Ce compte enregistre la valeur des biens produits par l''entreprise pour son propre usage ou sa propre consommation, plutôt que pour la vente sur le marché. Il peut s''agir, par exemple, de biens fabriqués pour être utilisés dans le processus de production de l''entreprise.'),
(7, 'Variation de stocks de biens et de services produits', '73', 'Ce compte enregistre les variations de stocks de biens et de services produits par l''entreprise au cours de l''exercice financier. Il reflète les changements dans la quantité et la valeur des stocks détenus par l''entreprise en raison de la production ou de la consommation.'),
(7, 'Autres produits', '75', 'Ce compte regroupe les revenus de l''entreprise qui ne sont pas liés aux ventes de biens ou de services, ni aux subventions d''exploitation. Il peut inclure des revenus tels que les revenus de location, les intérêts sur les placements, les gains sur les cessions d''actifs, etc.'),
(7, 'Revenus financières et assimilés', '77', 'Ce compte enregistre les revenus de l''entreprise provenant de ses activités financières, telles que les intérêts sur les placements, les dividendes sur les actions détenues, les gains sur les opérations de change, etc.'),
(7, 'Transferts de charges', '78', 'Ce compte enregistre les transferts de charges entre différents secteurs ou départements de l''entreprise. Il permet de répartir les coûts entre les différentes entités ou activités de l''entreprise.'),
(7, 'Reprises de provision, de dépécriations et autres', '79', 'Ce compte enregistre les montants repris par l''entreprise des provisions et des dépréciations précédemment constituées, ainsi que d''autres ajustements de comptabilisation qui n''entrent pas dans d''autres catégories spécifiques de revenus.'),
(8, 'Valeurs comptables des cessions d''immobilisations', '81', 'Ce compte enregistre la valeur comptable des immobilisations cédées par l''entreprise au cours de l''exercice financier. Il reflète le montant net obtenu par l''entreprise après avoir déduit les amortissements cumulés et éventuellement les dépréciations enregistrées sur ces immobilisations.'),
(8, 'Produits des cessions d''immobilisations', '82', 'Ce compte enregistre les produits générés par les ventes d''immobilisations de l''entreprise au cours de l''exercice financier. Il inclut les gains réalisés sur ces cessions, calculés comme la différence entre le produit de la vente et la valeur comptable de l''immobilisation cédée.'),
(8, 'Charges hors activités ordinaires', '83', 'Ce compte regroupe les charges exceptionnelles ou extraordinaires engagées par l''entreprise en dehors de ses activités ordinaires. Il peut inclure des dépenses telles que les pertes sur créances irrécouvrables, les amendes et pénalités, les frais de restructuration, etc.'),
(8, 'Produits hors activités ordinaires', '84', 'Ce compte enregistre les produits exceptionnels ou extraordinaires générés par l''entreprise en dehors de ses activités ordinaires. Il peut inclure des revenus tels que les gains sur la vente d''actifs non courants, les indemnités de sinistre, les subventions non liées à l''exploitation, etc.'),
(8, 'Dotation hors activités ordinaires', '85', 'Ce compte enregistre les dotations aux amortissements ou aux provisions effectuées par l''entreprise pour des raisons exceptionnelles ou extraordinaires, qui ne sont pas liées à ses activités ordinaires. Il peut s''agir, par exemple, de dotations pour dépréciation d''actifs non courants, de provisions pour litiges, etc.'),
(8, 'Reprises hors activités ordinaires', '86', 'Ce compte enregistre les montants repris par l''entreprise des dotations aux amortissements ou aux provisions précédemment constituées pour des raisons exceptionnelles ou extraordinaires. Il permet de corriger les estimations antérieures qui ne sont plus valides.'),
(8, 'Participations des travailleurs', '87', 'Ce compte enregistre les montants versés par l''entreprise aux travailleurs ou aux salariés sous forme de participation aux bénéfices, de participation aux résultats, de primes d''intéressement, ou d''autres formes de rémunération variable liées aux performances de l''entreprise.'),
(8, 'Subventions d''equilibre', '88', 'Ce compte enregistre les subventions accordées à l''entreprise pour compenser des pertes ou des déséquilibres financiers résultant de facteurs externes ou de circonstances exceptionnelles. Ces subventions visent à soutenir la viabilité économique de l''entreprise dans des situations difficiles.'),
(8, 'Impôts sur le résultat', '89', 'Ce compte enregistre les impôts sur le résultat payés par l''entreprise au titre de l''exercice financier, y compris l''impôt sur les sociétés, les impôts différés, les impôts locaux, etc. Il reflète la charge fiscale supportée par l''entreprise sur ses bénéfices imposables.'),
(9, 'Engagements obtenus et engagements accordés', '90', 'Ce compte enregistre les engagements contractés par l''entreprise envers des tiers (engagements obtenus) ainsi que les engagements pris par des tiers envers l''entreprise (engagements accordés). Il peut inclure des engagements financiers, juridiques, commerciaux, etc.'),
(9, 'Contreparties des engagements', '91', 'Ce compte enregistre les contreparties des engagements contractés par l''entreprise. Il reflète les obligations ou les droits liés aux engagements pris ou reçus par l''entreprise vis-à-vis des tiers.'),
(9, 'Comptes réfléchis', '92', 'Ce compte regroupe les comptes comptables utilisés pour refléter des opérations ou des événements qui ne correspondent pas à des transactions réelles, mais qui sont nécessaires pour des raisons de présentation ou de comptabilisation. Ils sont généralement utilisés pour des ajustements ou des reclassements comptables.'),
(9, 'Comptes de reclassments', '93', 'Ce compte regroupe les comptes comptables utilisés pour reclasser des opérations ou des éléments comptables d''un compte à un autre. Ils sont utilisés pour corriger des erreurs de comptabilisation, pour ajuster des soldes de comptes, ou pour regrouper des opérations de même nature.'),
(9, 'Comptes de coûts', '94', 'Ce compte enregistre les coûts supportés par l''entreprise dans le cadre de ses activités opérationnelles. Il peut inclure les coûts de production, les coûts d''achat, les coûts de distribution, les coûts administratifs, etc.'),
(9, 'Comptes de stocks', '95', 'Ce compte enregistre la valeur des stocks détenus par l''entreprise, tels que les matières premières, les produits en cours de production, les produits finis, etc. Il reflète la valeur des biens détenus en vue de la vente ou de l''utilisation dans le processus de production.'),
(9, 'Comptes d''écarts sur coûts préétablis', '96', 'Ce compte enregistre les écarts constatés entre les coûts réels et les coûts préétablis ou prévus par l''entreprise. Il permet d''analyser les variations de coûts et d''identifier les écarts par rapport aux prévisions ou aux normes établies.'),
(9, 'Comptes de différences de traitement comptable', '97', 'Ce compte enregistre les différences de traitement comptable entre les principes comptables utilisés par l''entreprise et les normes comptables généralement acceptées. Il est utilisé pour corriger les erreurs comptables ou pour ajuster les soldes de comptes afin de se conformer aux règles comptables applicables.'),
(9, 'Comptes de résultats', '98', 'Ce compte regroupe les comptes comptables utilisés pour enregistrer les résultats financiers de l''entreprise, tels que les produits, les charges, les profits, les pertes, etc. Il permet de calculer le résultat net de l''entreprise pour une période donnée.'),
(9, 'Comptes de liaisons internes', '99', 'Ce compte enregistre les transactions ou les soldes résultant d''opérations entre différentes entités ou départements au sein de la même entreprise. Il est utilisé pour suivre les flux financiers ou comptables entre les différentes entités internes de l''entreprise.'),
(10, 'Dotation', '10', 'Ce compte enregistre les dotations aux amortissements, aux dépréciations ou aux provisions effectuées par l''entreprise au cours de l''exercice financier. Il permet de constater la dépréciation des actifs ou de constituer des réserves pour faire face à des risques ou à des charges futures.'),
(10, 'Réserves', '11', 'Ce compte regroupe les différentes réserves constituées par l''entreprise, telles que les réserves légales, les réserves statutaires, les réserves facultatives, etc. Il permet de capitaliser une partie des bénéfices de l''entreprise en vue de renforcer sa structure financière ou de financer des investissements futurs.'),
(10, 'Report à nouveau', '12', 'Ce compte enregistre le solde reporté des résultats non distribués d''un exercice financier à l''autre. Il reflète la partie du résultat net de l''exercice précédent qui n''a pas été distribuée aux actionnaires ou réinvestie dans l''entreprise.'),
(10, 'Résultat net de l''exercice', '13', 'Ce compte enregistre le résultat net de l''exercice financier, c''est-à-dire la différence entre les produits et les charges de l''entreprise pour la période considérée. Il reflète le bénéfice ou la perte réalisé par l''entreprise au cours de l''exercice.'),
(10, 'Subvention d''investissement', '14', 'Ce compte enregistre les subventions reçues par l''entreprise pour financer des investissements en immobilisations. Il permet de suivre les fonds affectés spécifiquement à des projets d''investissement et de les distinguer des autres sources de financement.'),
(10, 'Provisions règlements et fonds assimilés', '15', 'Ce compte regroupe les provisions réglementées ou les fonds assimilés constitués par l''entreprise conformément à des dispositions légales ou réglementaires. Il peut inclure des provisions pour risques spécifiques, des fonds de garantie, des fonds de retraite, etc.'),
(10, 'Fonds affectés et provenant de dons ou legs d''immobilisations', '16', 'Ce compte enregistre les fonds affectés ou spécifiquement destinés à des fins particulières par des donateurs ou des legs. Il permet de suivre les ressources financières dédiées à des projets ou à des activités spécifiques, souvent liés à des dons ou des héritages.'),
(10, 'Fonds reportés', '17', 'Ce compte enregistre les fonds reportés d''un exercice financier à l''autre, qui n''ont pas été utilisés ou affectés à des fins spécifiques. Il permet de suivre les ressources financières non utilisées ou non affectées et de les reporter pour une utilisation ultérieure.'),
(10, 'Emprunts et dettes assimilés', '18', 'Ce compte regroupe les emprunts contractés par l''entreprise auprès de tiers, tels que des banques, des institutions financières ou des créanciers. Il permet de suivre les engagements financiers de l''entreprise liés à ses activités opérationnelles ou à ses investissements.'),
(10, 'Provisions pour risques et charges', '19', 'Ce compte enregistre les provisions constituées par l''entreprise pour faire face à des risques ou à des charges futures dont l''issue ou le montant est incertain. Il permet de provisionner des montants pour couvrir des pertes potentielles ou des engagements éventuels.'),
(11, 'Immobilisations destinés à la vente provenant de dons et les non encore reçus Usufruit', '20', 'Ce compte regroupe les immobilisations détenues par l''entreprise qui sont destinées à être vendues dans un avenir proche. Il peut également inclure les biens reçus par dons ou legs mais qui n''ont pas encore été officiellement reçus, ainsi que les biens pour lesquels l''entreprise détient un usufruit temporaire.'),
(11, 'Immobilisation incorporelles', '21', 'Ce compte regroupe les immobilisations qui ont une valeur pour l''entreprise mais qui ne sont pas des biens matériels. Il peut inclure des éléments tels que les brevets, les licences, les marques de commerce, les logiciels, etc.'),
(11, 'Terrains', '22', 'Ce compte enregistre la valeur des terrains détenus par l''entreprise dans le cadre de ses activités. Il inclut le coût d''acquisition des terrains ainsi que les frais connexes tels que les frais de notaire, les frais d''aménagement, etc.'),
(11, 'Batiments, intsallations techniques et agencements', '23', 'Ce compte regroupe la valeur des bâtiments, des installations techniques et des agencements détenus par l''entreprise pour soutenir ses activités opérationnelles. Il comprend les coûts liés à la construction, à l''achat ou à l''aménagement de ces biens.'),
(11, 'Matériel, mobilier, et actifs biologiques', '24', 'Ce compte enregistre la valeur du matériel, du mobilier et des actifs biologiques détenus par l''entreprise dans le cadre de ses opérations. Il inclut les équipements, les véhicules, le mobilier de bureau, ainsi que les actifs biologiques tels que les cultures, les animaux d''élevage, etc.'),
(11, 'Avances et accomptes versés sur immobilisations', '25', 'Ce compte enregistre les avances ou les acomptes versés par l''entreprise pour l''acquisition ou la construction d''immobilisations. Il permet de suivre les montants payés à l''avance pour des biens ou des services qui seront reçus ultérieurement.'),
(11, 'Titres de participation', '26', 'Ce compte regroupe la valeur des titres de participation détenus par l''entreprise dans d''autres entreprises. Il inclut les actions ou les parts sociales détenues dans des sociétés affiliées ou des filiales, ainsi que les participations dans des entreprises associées.'),
(11, 'autres immobilisation finanières', '27', 'Ce compte regroupe les autres immobilisations financières détenues par l''entreprise qui ne sont pas des titres de participation. Il peut inclure des investissements à long terme dans des obligations, des prêts à des tiers, des dépôts à terme, etc.'),
(11, 'Amortissements', '28', 'Ce compte enregistre les montants d''amortissement comptabilisés par l''entreprise pour refléter la dépréciation des immobilisations incorporelles, corporelles ou financières. Il permet de répartir le coût des immobilisations sur leur durée d''utilisation estimée.'),
(11, 'Dépréciations des immobilisations', '29', 'Ce compte enregistre les dépréciations comptabilisées par l''entreprise pour refléter la perte de valeur des immobilisations qui résulte d''événements ou de circonstances spécifiques. Il permet de constater la réduction de la valeur recouvrable des actifs de l''entreprise.'),
(12, 'Biens liés à l''activités', '31', 'Ce compte regroupe les biens détenus par l''entreprise qui sont directement liés à ses activités principales. Il peut inclure les équipements, les outils, les machines, les installations, etc., utilisés pour produire des biens ou fournir des services.'),
(12, 'Marchandises, matières premières et fournitures liées', '32', 'Ce compte enregistre la valeur des marchandises, des matières premières et des fournitures nécessaires à la production de biens ou à la prestation de services par l''entreprise. Il comprend les matériaux bruts, les composants, les pièces détachées, etc.'),
(12, 'autres approvisionnements', '33', 'Ce compte regroupe d''autres types d''approvisionnements ou de stocks détenus par l''entreprise qui ne sont pas spécifiquement des marchandises ou des matières premières. Il peut inclure des fournitures de bureau, des emballages, des consommables, etc.'),
(12, 'Dons en Nature', '34', 'Ce compte enregistre la valeur des dons reçus par l''entreprise sous forme de biens plutôt que d''argent liquide. Il peut inclure des équipements, des fournitures, des produits, etc., offerts par des tiers à l''entreprise.'),
(12, 'Produits et services en cours', '35', 'Ce compte regroupe les produits et services en cours de production ou de prestation par l''entreprise. Il représente la valeur des biens qui sont en train d''être fabriqués ou des services qui sont en cours de réalisation mais qui ne sont pas encore achevés.'),
(12, 'Produits finis', '36', 'Ce compte enregistre la valeur des biens produits par l''entreprise et prêts à être vendus ou distribués à des clients. Il inclut les articles qui ont été entièrement fabriqués ou assemblés et qui sont prêts à être livrés ou mis sur le marché.'),
(12, 'Stocks en cours de route, en consignation ou en dépôt', '37', 'Ce compte regroupe les stocks qui sont en transit, en consignation chez des tiers ou en dépôt dans des entrepôts ou des magasins. Il représente les biens qui sont en mouvement entre différents lieux ou qui sont temporairement entreposés avant d''être distribués ou vendus.'),
(12, 'Dons en Nature HAO', '38', 'Ce compte enregistre les dons en nature reçus par l''entreprise qui sont spécifiquement destinés à des activités hors activités ordinaires (HAO). Il peut s''agir de biens ou de services offerts à des fins spécifiques, telles que des projets de développement, des actions caritatives, etc.'),
(12, 'Dépréciations des stocks et des production en cours', '39', 'Ce compte enregistre les dépréciations comptabilisées par l''entreprise pour refléter la perte de valeur des stocks et des productions en cours. Il permet de constater la réduction de la valeur recouvrable des stocks détenus par l''entreprise.'),
(13, 'Fournisseurs et comptes rattachés', '40', 'Ce compte enregistre les dettes de l''entreprise envers ses fournisseurs pour l''achat de biens ou de services. Il inclut les factures non payées, les achats à crédit, les dettes commerciales et tout autre montant dû aux fournisseurs. Les comptes rattachés peuvent inclure des charges liées aux achats, des frais de transport, des taxes à récupérer, etc.'),
(13, 'Adhérents, clients-usagers et comptes rattachés', '41', 'Ce compte regroupe les créances de l''entreprise sur ses adhérents, clients ou usagers pour la vente de biens ou la prestation de services. Il inclut les montants dus par les clients pour des ventes à crédit, des abonnements, des cotisations, des loyers, etc. Les comptes rattachés peuvent inclure des produits liés aux ventes, des intérêts sur créances, des remises à accorder, etc.'),
(13, 'Personnel', '42', 'Ce compte enregistre les transactions financières liées au personnel de l''entreprise, telles que les salaires, les avantages sociaux, les charges sociales, les primes, les indemnités, les frais de formation, etc.'),
(13, 'Organismes sociaux', '43', 'Ce compte regroupe les transactions financières liées aux organismes sociaux, tels que les cotisations sociales, les contributions aux régimes de sécurité sociale, les taxes sur les salaires, etc.'),
(13, 'Etat et collectivités publiques', '44', 'Ce compte enregistre les transactions financières de l''entreprise avec l''État et les collectivités publiques, telles que les impôts sur les bénéfices, les taxes sur la valeur ajoutée (TVA), les taxes foncières, les taxes locales, les redevances, etc.'),
(13, 'Fondateur, apporteurs et comptes courants', '45', 'Ce compte regroupe les transactions financières de l''entreprise avec ses fondateurs, ses actionnaires ou ses associés, ainsi que les comptes courants détenus par ces parties prenantes. Il peut inclure les apports en capital, les avances de trésorerie, les prêts consentis, les comptes de régularisation, etc.'),
(13, 'Bailleurs, Etat et autres organismes, donfs d''administration', '46', 'Ce compte enregistre les transactions financières de l''entreprise avec les bailleurs de fonds, l''État, les organismes publics ou privés, ainsi que les fonds d''administration. Il peut inclure les emprunts contractés, les subventions reçues, les aides financières, les dons, etc.'),
(13, 'Débiteurs et créduteurs divers', '47', 'Ce compte regroupe les autres débiteurs et créanciers de l''entreprise qui ne sont pas spécifiquement classés dans d''autres catégories. Il peut inclure des partenaires commerciaux, des tiers, des personnes physiques ou morales, des institutions financières, etc.'),
(13, 'Créances et dettes dons Hors Activités Ordinaires (H.A.O)', '48', 'Ce compte enregistre les créances et les dettes de l''entreprise qui sont hors du cadre de ses activités ordinaires. Il peut inclure des opérations non courantes, des transactions exceptionnelles, des engagements spécifiques, des événements extraordinaires, etc.'),
(13, 'Dépréciations et provisions pour risques et charges à court terme (TIERS)', '49', 'Ce compte regroupe les dépréciations et les provisions comptabilisées par l''entreprise pour couvrir les risques et les charges à court terme liés à des tiers. Il permet de constater les pertes potentielles ou les engagements financiers anticipés associés à des tiers, tels que des clients en difficulté, des litiges en cours, des garanties à honorer, etc.'),
(14, 'Titres de placement', '50', 'Ce compte enregistre les investissements de l''entreprise dans des titres financiers tels que des actions, des obligations, des fonds communs de placement, des certificats de dépôt, etc. Ces titres sont détenus par l''entreprise dans le but de réaliser un profit à court ou à long terme.'),
(14, 'Valeurs à encaisser', '51', 'Ce compte regroupe les valeurs mobilières et les instruments financiers facilement convertibles en espèces. Il peut inclure des chèques encaissables, des effets de commerce, des billets à ordre, des traites, des lettres de change, etc.'),
(14, 'Banques', '52', 'Ce compte enregistre les fonds déposés par l''entreprise dans ses comptes bancaires. Il inclut les soldes de compte courant, les dépôts à terme, les comptes d''épargne, les comptes de chèques, etc.'),
(14, 'Etablissements financières et assimilés', '53', 'Ce compte regroupe les transactions financières de l''entreprise avec des institutions financières autres que des banques, telles que des sociétés de crédit, des compagnies d''assurance, des caisses de retraite, des sociétés de financement, etc.'),
(14, 'Instruments de monnaie électronique', '55', 'Ce compte enregistre les fonds détenus par l''entreprise sous forme de monnaie électronique ou de paiements électroniques. Il peut inclure des soldes de portefeuilles électroniques, des fonds sur des cartes prépayées, des comptes de paiement en ligne, etc.'),
(14, 'Banques, crédits de trésorerie', '56', 'Ce compte regroupe les emprunts contractés par l''entreprise auprès des banques ou d''autres institutions financières pour financer ses activités de trésorerie à court terme. Il peut inclure des crédits de caisse, des facilités de découvert, des lignes de crédit renouvelables, etc.'),
(14, 'Caisse', '57', 'Ce compte enregistre les fonds liquides détenus physiquement par l''entreprise, tels que la monnaie, les pièces de monnaie et les billets de banque, conservés dans sa caisse ou son coffre-fort.'),
(14, 'Virement internes', '58', 'Ce compte est utilisé pour enregistrer les transferts de fonds entre différents comptes ou entités au sein de la même entreprise. Il peut inclure des transferts entre comptes bancaires, des déplacements de fonds entre divisions ou filiales, des réallocations de ressources internes, etc.'),
(14, 'Dépréciations et provisions pour risques et charges à court terme', '59', 'Ce compte regroupe les dépréciations et les provisions comptabilisées par l''entreprise pour couvrir les risques et les charges à court terme. Il permet de constater les pertes potentielles ou les engagements financiers anticipés qui ne sont pas liés à des tiers.'),
(15, 'Achats et variation de stocks', '60', 'Ce compte enregistre le coût d''achat des marchandises et des matières premières destinées à la vente ou à la production, ainsi que les variations de stock sur une période donnée. Il permet de suivre les coûts d''approvisionnement et les fluctuations de stockage de l''entreprise.'),
(15, 'Transports', '61', 'Ce compte regroupe les dépenses liées au transport des marchandises, des matières premières, des produits finis ou des personnes. Il inclut les frais de transport routier, ferroviaire, maritime, aérien ou par tout autre moyen de transport.'),
(15, 'Services extérieurs', '62', 'Ce compte enregistre les dépenses liées aux services fournis à l''entreprise par des tiers. Il inclut les honoraires professionnels, les services de conseil, les frais de sous-traitance, les services publics, etc.'),
(15, 'Autres services extérieurs', '63', 'Ce compte regroupe les dépenses pour des services externes autres que ceux spécifiquement mentionnés dans d''autres comptes. Il peut inclure une gamme variée de services nécessaires au fonctionnement de l''entreprise mais qui ne rentrent pas dans des catégories spécifiques.'),
(15, 'Impôts et taxes', '64', 'Ce compte enregistre les impôts et taxes payés par l''entreprise au gouvernement ou aux autorités fiscales. Il inclut les impôts sur le revenu, les taxes sur la valeur ajoutée (TVA), les taxes foncières, les taxes sur les salaires, etc.'),
(15, 'Autres charges', '65', 'Ce compte regroupe les charges qui ne sont pas spécifiquement liées à des catégories précises de dépenses. Il peut inclure divers frais généraux, charges administratives, frais d''exploitation, etc.'),
(15, 'Charges de personnel', '66', 'Ce compte enregistre les coûts liés à la rémunération et aux avantages sociaux du personnel de l''entreprise. Il inclut les salaires, les traitements, les charges sociales, les cotisations de retraite, les indemnités, etc.'),
(15, 'Frais financiers et charges assimilées', '67', 'Ce compte regroupe les frais financiers engagés par l''entreprise, tels que les intérêts sur les emprunts, les frais de gestion de la dette, les frais bancaires, les commissions financières, etc.'),
(15, 'Dotations aux amortissements', '68', 'Ce compte enregistre les provisions comptables pour l''amortissement des immobilisations de l''entreprise. Il permet de constater la dépréciation progressive de la valeur des actifs fixes sur leur durée de vie utile.'),
(15, 'Dotations aux provisions et aux dépréciations', '69', 'Ce compte regroupe les provisions comptables pour faire face à des pertes potentielles ou à des risques identifiés, ainsi que les dépréciations des actifs de l''entreprise. Il permet de constituer des réserves pour couvrir des engagements futurs incertains.'),
(16, 'Revenus', '70', 'Ce compte enregistre les recettes et les gains réalisés par l''entreprise au cours de ses activités commerciales normales. Il inclut les ventes de produits, les prestations de services, les revenus locatifs, les commissions, etc.'),
(16, 'Subventions d''exploitation', '71', 'Ce compte enregistre les subventions reçues par l''entreprise pour soutenir ses activités opérationnelles. Il peut s''agir de subventions gouvernementales, de subventions d''organisations internationales ou d''autres formes de financement non remboursable.'),
(16, 'Production immobilisée', '72', 'Ce compte concerne la valeur des biens produits par l''entreprise pour son propre usage ou pour être incorporés dans ses actifs immobilisés. Il enregistre la valeur des biens produits et non vendus sur le marché.'),
(16, 'Variations des stocks de biens produits', '73', 'Ce compte enregistre les variations de valeur des stocks de biens produits par l''entreprise. Il inclut les augmentations ou les diminutions de valeur des stocks en cours de production, des produits finis ou des produits intermédiaires.'),
(16, 'Autres produits', '75', 'Ce compte regroupe les revenus qui ne sont pas spécifiquement liés à des catégories particulières de recettes. Il peut inclure des revenus exceptionnels, des gains sur des opérations non courantes, des remboursements d''impôts, etc.'),
(16, 'Revenus financiers et produits assimilés', '77', 'Ce compte enregistre les revenus générés par les investissements financiers de l''entreprise. Il inclut les intérêts perçus sur les placements, les dividendes reçus, les gains de change, etc.'),
(16, 'Transfert de charges', '78', 'Ce compte concerne les transferts de charges entre différentes sections ou départements de l''entreprise. Il permet de répartir les coûts indirects ou communs entre les différentes entités ou activités de l''entreprise.'),
(16, 'Reprises de provosion, de dépréciation et autres', '79', 'Ce compte enregistre les montants repris sur les provisions ou les dépréciations précédemment constatées. Il est utilisé lorsque les circonstances qui ont justifié la constitution de ces provisions ou dépréciations ne sont plus présentes.'),
(17, 'Valeurs comptables des cesions d''immobilisations', '81', 'Ce compte enregistre les valeurs comptables des biens immobiliers cédés par l''entreprise. Il reflète le montant des ventes ou des cessions des actifs immobilisés, déduction faite de leur amortissement ou de leur dépréciation accumulée.'),
(17, 'Produits des cessions d''immobilisations', '82', 'Ce compte enregistre les produits réalisés par l''entreprise lors de la cession ou de la vente d''actifs immobilisés. Il inclut les gains réalisés sur la vente de terrains, de bâtiments, d''équipements, etc.'),
(17, 'Charges hors activités ordinaires', '83', 'Ce compte regroupe les charges qui ne sont pas directement liées aux activités opérationnelles habituelles de l''entreprise. Il peut inclure des charges exceptionnelles, des pertes sur des opérations non courantes, des frais de restructuration, etc.'),
(17, 'Revenus hors activités ordinaires', '84', 'Ce compte regroupe les revenus qui ne sont pas générés par les activités commerciales principales de l''entreprise. Il peut inclure des gains exceptionnels, des revenus sur des opérations non courantes, des subventions non liées à l''exploitation, etc.'),
(17, 'Dotations hors activités ordinaires', '85', 'Ce compte enregistre les dotations aux provisions ou aux dépréciations qui ne sont pas directement liées aux activités ordinaires de l''entreprise. Il peut inclure des dotations pour des risques exceptionnels, des pertes sur des créances douteuses, etc.'),
(17, 'Reprises d''amortissments, provisions et dépréciations HAO', '86', 'Ce compte enregistre les montants repris sur les amortissements, les provisions ou les dépréciations antérieurement constatées et qui ne sont plus nécessaires. Il est utilisé lorsque les circonstances qui ont justifié ces constatations ne sont plus présentes.'),
(17, 'Variations de stocks de dons en nature HAO', '87', 'Ce compte enregistre les variations de valeur des stocks constitués de dons en nature. Il concerne les biens reçus en don par l''entreprise et qui sont destinés à être utilisés dans ses activités.'),
(17, 'Subventions d''equilibre', '88', 'Ce compte enregistre les subventions reçues par l''entreprise pour compenser des déséquilibres financiers ou pour assurer son équilibre financier. Ces subventions peuvent être accordées par des organismes publics ou privés dans le cadre de politiques de soutien ou de redressement.'),
(18, 'Emplois des contributions volontaires en nature', '90', 'Ce compte enregistre les utilisations ou les emplois des contributions volontaires reçues sous forme de biens ou de services. Il permet de suivre l''affectation des ressources fournies par des donateurs ou des partenaires sous forme non monétaire.'),
(18, 'Contributions volontaires en nature', '91', 'Ce compte enregistre les dons ou les contributions reçus par l''entreprise sous forme de biens ou de services plutôt que d''argent liquide. Il peut s''agir de dons de produits, de matériaux, d''équipements, de services professionnels, etc.'),
(18, 'Comptes réfléchis', '92', 'Ce terme peut désigner des comptes fictifs ou des comptes temporaires utilisés pour des opérations de calcul ou d''analyse interne. Ces comptes peuvent être créés pour simplifier le processus de comptabilité ou pour effectuer des ajustements temporaires.'),
(18, 'Comptes de reclassement', '93', 'Les comptes de reclassifications sont utilisés pour effectuer des ajustements ou des reclassements temporaires dans les états financiers. Ils permettent de corriger des erreurs comptables ou d''isoler des opérations spécifiques avant leur intégration définitive dans les comptes finaux.'),
(18, 'Comptes de coûts', '94', 'Les comptes de coûts enregistrent les dépenses directes et indirectes associées à la production de biens ou de services. Ils permettent de suivre les coûts liés aux différents aspects de l''activité de l''entreprise, tels que les coûts de production, les coûts de distribution, les coûts administratifs, etc.'),
(18, 'Comptes de stocks', '95', 'Les comptes de stocks enregistrent la valeur des biens ou des produits détenus par l''entreprise en vue de la vente ou de l''utilisation ultérieure. Ils incluent les stocks de matières premières, de produits en cours de fabrication, de produits finis, etc.'),
(18, 'Comptes d''ecarts sur coûts préétablis', '96', 'Ces comptes enregistrent les écarts entre les coûts réels et les coûts préétablis ou budgétés. Ils permettent d''analyser les variations de coûts et d''identifier les écarts par rapport aux prévisions ou aux normes établies.'),
(18, 'Comptes de défférences de traitement comptable', '97', 'Ces comptes sont utilisés pour enregistrer les différences résultant de variations dans les méthodes comptables ou dans le traitement des opérations entre les exercices comptables. Ils permettent de rendre compte des ajustements nécessaires pour assurer la comparabilité des états financiers.'),
(18, 'Comptes de résultats', '98', 'Les comptes de résultats enregistrent les produits, les charges, les produits financiers et les charges financières de l''entreprise pour une période donnée, généralement un exercice comptable. Ils permettent de calculer le résultat net de l''entreprise et de présenter sa performance financière.'),
(18, 'Comptes de liaisons internes', '99', 'Ces comptes sont utilisés pour enregistrer les transactions internes ou les transferts de fonds entre différentes entités ou départements au sein de la même entreprise. Ils facilitent le suivi des flux financiers et des relations économiques internes.');


SELECT comptes_id, classes_comptes_id, comptes_name, comptes_nbr FROM comptes;

SELECT comptes_id, comptes_name, comptes_nbr FROM comptes;

SELECT comptes_id, comptes_name, comptes_nbr FROM comptes WHERE comptes_id = 40;





























------------ INSERTION DANS LES SOUS-COMPTES--------------


INSERT INTO sous_comptes (comptes_id, sous_comptes_name, sous_comptes_nbr, sous_comptes_description)
VALUES
------ 1 ----------
INSERT INTO sous_comptes (comptes_id, sous_comptes_name, sous_comptes_nbr, sous_comptes_description)
VALUES
(1, 'Capital social', '101', 'Ce compte enregistre le montant total du capital investi par les actionnaires ou les propriétaires dans l''entreprise. Il représente la valeur nominale des actions émises par l''entreprise et constitue une partie importante de ses fonds propres.'),
(1, 'Capital par adoption', '102', 'Ce compte peut être utilisé pour enregistrer les montants investis dans l''entreprise par des partenaires ou des associés en cas de reprise ou d''adoption d''une entreprise existante. Il représente les fonds apportés par les nouveaux propriétaires lors de l''acquisition de l''entreprise.'),
(1, 'Capital personnel', '103', 'Ce compte enregistre les fonds investis dans l''entreprise par le propriétaire ou les dirigeants de l''entreprise à titre personnel. Il peut s''agir de capitaux propres apportés par les fondateurs ou les actionnaires principaux de l''entreprise.'),
(1, 'Comptes de l''exploitant', '104', 'Ce compte regroupe les transactions financières personnelles du propriétaire ou de l''exploitant individuel de l''entreprise. Il permet de distinguer les finances de l''entreprise de celles de son propriétaire et d''assurer une séparation claire des actifs et des passifs.'),
(1, 'Primes liées au capital social', '105', 'Ce compte enregistre les primes ou les montants supplémentaires versés par les actionnaires lors de l''émission de nouvelles actions ou de l''augmentation du capital social de l''entreprise. Il représente les sommes payées au-dessus de la valeur nominale des actions.'),
(1, 'Ecart de réévaluation', '106', 'Ce compte est utilisé pour enregistrer les écarts résultant de la réévaluation des actifs ou des passifs de l''entreprise, généralement à la hausse. Il représente la différence entre la valeur comptable des actifs ou des passifs et leur valeur de marché actualisée.'),
(1, 'Apporteurs, Capital souscrit, non appelé', '109', 'Ce compte enregistre les montants du capital social souscrit par les actionnaires ou les associés mais qui n''ont pas encore été appelés ou versés à l''entreprise. Il représente les engagements financiers des actionnaires envers l''entreprise qui doivent encore être honorés.');

------ 2--------------
(2, 'Réserves Légales', '111', 'Ce compte enregistre les montants réservés légalement par l''entreprise en vertu de la réglementation en vigueur. Ces réserves sont généralement constituées pour assurer la stabilité financière de l''entreprise et garantir le respect des obligations légales.'),
(2, 'Réserves Statutaires ou contractuelles', '112', 'Ce compte regroupe les montants réservés par l''entreprise conformément à ses statuts ou à des accords contractuels spécifiques. Ces réserves sont généralement constituées pour répondre à des besoins particuliers de l''entreprise ou pour anticiper des dépenses futures.'),
(2, 'Réserves règlementées', '113', 'Ce compte enregistre les montants réservés par l''entreprise conformément à des dispositions légales ou réglementaires spécifiques. Ces réserves peuvent être utilisées pour des activités ou des investissements spécifiques autorisés par la loi.'),
(2, 'Autres réserves', '118', 'Ce compte regroupe les montants réservés par l''entreprise pour diverses raisons qui ne correspondent pas aux catégories spécifiques de réserves légales, statutaires ou règlementées. Il peut s''agir de réserves constituées pour des projets d''expansion, des provisions pour risques ou des besoins futurs non spécifiés.'),


---- 3 ---------------
(3, 'Report à nouveau créditeur', '121', 'Ce compte enregistre les soldes créditeurs reportés à partir de l''exercice précédent. Il représente les bénéfices accumulés de l''entreprise qui n''ont pas été distribués aux actionnaires ou réaffectés à d''autres comptes de réserve.'),
(3, 'Report à nouveau débiteur', '129', 'Ce compte enregistre les soldes débiteurs reportés à partir de l''exercice précédent. Il représente les pertes accumulées de l''entreprise qui n''ont pas été compensées ou absorbées par les bénéfices futurs.'),


--- 4 --------
(4, 'Résultat en instance d''affectation', '130', 'Ce compte représente le résultat de l''exercice qui est en attente d''affectation, c''est-à-dire le bénéfice ou la perte nette qui doit être réparti entre les actionnaires ou utilisé conformément aux politiques de distribution des bénéfices de l''entreprise.'),
(4, 'Résultat Net : bénéfice', '131', 'Ce compte enregistre le bénéfice net réalisé par l''entreprise au cours de l''exercice, résultant de la différence positive entre les produits et les charges.'),
(4, 'Marge commerciale (M.C)', '132', 'La marge commerciale représente la différence entre le chiffre d''affaires et le coût d''achat des marchandises vendues. C''est un indicateur de la rentabilité des activités commerciales de l''entreprise.'),
(4, 'Valeur Ajoutée (V.A)', '133', 'La valeur ajoutée mesure la richesse créée par l''entreprise au cours de son processus de production. Elle correspond à la valeur de la production moins la consommation intermédiaire.'),
(4, 'Exédent Brut d''Exploitation (E.B.E)', '134', 'L''excédent brut d''exploitation représente le résultat de l''exploitation de l''entreprise avant déduction des charges financières et des impôts. Il est calculé en ajoutant aux produits d''exploitation les subventions d''exploitation et en retranchant les charges d''exploitation.'),
(4, 'Résultat d''Exploitation (R.E.)', '135', 'Le résultat d''exploitation correspond au résultat obtenu après déduction de toutes les charges d''exploitation (hors charges financières et exceptionnelles) des produits d''exploitation. Il reflète la rentabilité des activités principales de l''entreprise.'),
(4, 'Résultat Financier (R.F.)', '136', 'Le résultat financier représente le résultat obtenu après déduction des charges financières des produits financiers. Il reflète la performance de l''entreprise dans ses activités financières telles que les placements, les emprunts, etc.'),
(4, 'Résultat des Activités Ordinaires (R.A.O.)', '137', 'Le résultat des activités ordinaires correspond au résultat obtenu après déduction de toutes les charges (exploitation, financières, exceptionnelles) des produits, à l''exception des activités extraordinaires.'),
(4, 'Résultat Hors Activité Ordinaires (R.H.A.O)', '138', 'Le résultat hors activité ordinaires représente le résultat obtenu après déduction des charges et produits exceptionnels des activités ordinaires. Il englobe les événements et transactions qui ne sont pas liés aux activités principales de l''entreprise.'),
(4, 'Résultat Net : Perte', '139', 'Ce compte enregistre la perte nette réalisée par l''entreprise au cours de l''exercice, résultant de la différence négative entre les produits et les charges.'),


--- 5 -----
(5, 'Subvention d''équipement', '141', 'Ce compte enregistre les subventions octroyées à l''entreprise pour financer l''acquisition ou la modernisation d''équipements. Ces subventions sont généralement destinées à encourager les investissements productifs et à soutenir le développement économique.'),
(5, 'Autres subvention d''investissement', '148', 'Ce compte regroupe les subventions d''investissement autres que celles liées à l''équipement. Il peut inclure des subventions pour des projets spécifiques, des subventions régionales ou sectorielles, etc. Ces subventions sont destinées à soutenir les investissements de l''entreprise dans divers domaines.'),

---- 6 ------
(6, 'Amortissments dérogations', '151', 'Ce compte enregistre les amortissements pratiqués de manière dérogatoire par rapport aux règles comptables habituelles. Ils peuvent être autorisés dans certaines circonstances exceptionnelles, par exemple lorsqu''une réévaluation des actifs conduit à des amortissements différents de ceux calculés selon les méthodes comptables traditionnelles.'),
(6, 'Plus-Values de Cession à Réinvestir', '152', 'Ce compte concerne les bénéfices réalisés lors de la cession d''actifs immobilisés, qui sont réinvestis dans l''entreprise plutôt que distribués aux actionnaires. Ces plus-values sont généralement réaffectées à des investissements futurs ou à des projets de développement.'),
(6, 'Fonds Règlementés', '153', 'Ce compte regroupe les fonds spécifiquement réglementés par la législation ou la réglementation en vigueur. Il peut s''agir de fonds destinés à des fins spécifiques, tels que des fonds de garantie, des fonds de réserve obligatoires, etc.'),
(6, 'Provisions spéciales de Réévaluation', '154', 'Ce compte concerne les provisions constituées pour refléter les ajustements de valeurs des actifs ou des passifs de l''entreprise, réalisés dans le cadre d''une réévaluation spéciale. Ces provisions sont généralement établies pour compenser les fluctuations de valeur des éléments du bilan.'),
(6, 'Provisions Règlementés relatives aux immobilisations', '155', 'Ce compte regroupe les provisions constituées conformément à des dispositions réglementaires spécifiques, relatives aux immobilisations de l''entreprise. Ces provisions peuvent être obligatoires ou facultatives selon la nature des actifs et les exigences légales.'),
(6, 'Provisions Règlementée Relatives aux Stocks', '156', 'Ce compte concerne les provisions constituées conformément à des dispositions réglementaires spécifiques, relatives aux stocks de l''entreprise. Ces provisions sont généralement établies pour couvrir les pertes potentielles liées à la dépréciation, à l''obsolescence ou à d''autres risques associés aux stocks.'),
(6, 'Provisions pour Investissement', '157', 'Ce compte regroupe les provisions constituées en vue de financer des investissements futurs de l''entreprise. Ces provisions sont généralement établies pour accumuler des fonds destinés à des projets d''expansion, de modernisation ou de développement.'),
(6, 'Autres provisions et fonds règlementés', '158', 'Ce compte regroupe les provisions et les fonds règlementés qui ne sont pas spécifiquement catégorisés ailleurs. Il peut inclure diverses provisions et fonds établis pour se conformer à des exigences légales ou réglementaires spécifiques.'),


----- 7 ---------
(7, 'Emprunts obligataires', '161', 'Ce compte enregistre les emprunts contractés par l''entreprise sous forme d''obligations émises sur les marchés financiers. Les obligations sont des titres de créance à long terme qui garantissent généralement un paiement d''intérêts périodique et le remboursement du capital à l''échéance.'),
(7, 'Emprunts et dettes auprès des établissements de crédit', '162', 'Ce compte concerne les emprunts et les dettes contractés par l''entreprise auprès des établissements de crédit tels que les banques commerciales. Il peut inclure des lignes de crédit, des prêts à court, moyen ou long terme, des découverts bancaires, etc.'),
(7, 'Avances reçues de l''état', '163', 'Ce compte enregistre les avances financières accordées à l''entreprise par l''État ou les autorités publiques. Ces avances peuvent être destinées à financer des projets spécifiques, à soutenir l''activité économique ou à répondre à des besoins de trésorerie temporaires.'),
(7, 'Avances reçues et comptes courants bloqués', '164', 'Ce compte regroupe les avances financières reçues par l''entreprise qui sont bloquées ou soumises à des conditions particulières d''utilisation. Il peut également inclure les comptes courants bloqués auprès des associés ou des actionnaires de l''entreprise.'),
(7, 'Dépots et cautionnements reçus', '165', 'Ce compte concerne les dépôts de garantie et les cautionnements reçus par l''entreprise dans le cadre de transactions commerciales ou contractuelles. Ces dépôts sont généralement remboursables sous certaines conditions, telles que la fin d''un contrat ou l''exécution satisfaisante d''une obligation.'),
(7, 'Intérêts courus', '166', 'Ce compte enregistre les intérêts accumulés mais non encore payés sur les emprunts et les dettes de l''entreprise. Les intérêts courus représentent une charge pour l''entreprise et doivent être comptabilisés dans ses états financiers, même s''ils n''ont pas encore été réglés.'),
(7, 'Avances assorties de conditions particulières', '167', 'Ce compte regroupe les avances financières reçues par l''entreprise qui sont assorties de conditions spécifiques ou de restrictions quant à leur utilisation. Ces avances peuvent être soumises à des obligations contractuelles ou réglementaires particulières.'),
(7, 'Autres emprunts et dettes', '168', 'Ce compte regroupe les emprunts et les dettes qui ne sont pas spécifiquement catégorisés ailleurs. Il peut inclure divers types d''engagements financiers, tels que des contrats de location-financement, des emprunts obligataires convertibles, des dettes non bancaires, etc.'),


---- 8 ------
(8, 'Dettes de location - acquisition ou credit-bail immobilier', '172', 'Ce compte concerne les dettes contractées par l''entreprise dans le cadre de contrats de location-acquisition ou de crédit-bail immobilier. Ces dettes résultent de l''utilisation d''actifs immobiliers tels que des terrains, des bâtiments ou des installations techniques, pour lesquels l''entreprise paie des loyers avec une option d''achat à terme.'),
(8, 'Dettes de location - acquisition ou credit-bail mobilier', '173', 'Ce compte regroupe les dettes liées à des contrats de location-acquisition ou de crédit-bail mobilier. Il concerne l''utilisation d''actifs mobiliers tels que des équipements, des machines, des véhicules ou du matériel informatique, pour lesquels l''entreprise paie des loyers avec une option d''achat à terme.'),
(8, 'Dettes de location- acquisition ou location vente', '174', 'Ce compte concerne les dettes contractées dans le cadre de contrats de location-vente ou de location-acquisition avec option d''achat. Il englobe les dettes résultant de la location d''actifs avec une possibilité d''acquisition à terme, que ce soit pour des biens immobiliers ou mobiliers.'),
(8, 'Interets courus', '176', 'Ce compte enregistre les intérêts accumulés mais non encore payés sur les dettes de l''entreprise. Les intérêts courus représentent une charge financière pour l''entreprise et doivent être comptabilisés dans ses états financiers, même s''ils n''ont pas encore été réglés.'),
(8, 'Autres dettes de location - acquisition', '178', 'Ce compte regroupe les autres dettes liées à des contrats de location-acquisition ou de crédit-bail, qui ne sont pas spécifiquement catégorisées ailleurs. Il peut inclure des dettes résultant de la location de biens d''équipement, de logiciels, de droits d''utilisation ou d''autres actifs, avec une option d''achat ou des conditions de location particulières.'),

---- 9 --------
(9, 'Dettes liées a des participation', '181', 'Ce compte concerne les dettes contractées par l''entreprise en relation avec ses participations dans d''autres entreprises. Il peut s''agir de dettes résultant d''investissements dans des filiales, des coentreprises ou d''autres formes de participation, où l''entreprise est tenue responsable de certaines obligations financières.'),
(9, 'Dettes liées a des sociétés en participation', '182', 'Ce compte regroupe les dettes spécifiquement liées aux sociétés en participation auxquelles l''entreprise est associée. Les dettes peuvent résulter de transactions commerciales ou d''engagements financiers contractés par ces sociétés, pour lesquels l''entreprise est conjointement responsable.'),
(9, 'Intérêts courus sur dettes liées a des participations', '183', 'Ce compte enregistre les intérêts accumulés mais non encore payés sur les dettes contractées en relation avec les participations de l''entreprise dans d''autres sociétés. Les intérêts courus représentent une charge financière pour l''entreprise et doivent être comptabilisés dans ses états financiers.'),
(9, 'Comptes permanents bloqués des établissements et succursales', '184', 'Ce compte concerne les comptes permanents bloqués des établissements et succursales de l''entreprise. Il s''agit de comptes bancaires ou financiers qui sont soumis à des restrictions de retrait ou de transfert imposées par l''entreprise ou les autorités réglementaires.'),
(9, 'Comptes permanents non bloqués des établissements et succursales', '185', 'Ce compte regroupe les comptes permanents non soumis à des restrictions de retrait ou de transfert des établissements et succursales de l''entreprise. Il s''agit généralement de comptes bancaires ou financiers utilisés pour les opérations courantes de l''entreprise.'),
(9, 'Comptes de liaison charges', '186', 'Ce compte est utilisé pour enregistrer les opérations de transfert de charges entre différentes divisions ou départements de l''entreprise. Il permet de suivre les coûts supportés par chaque division tout en conservant une vue d''ensemble des charges totales de l''entreprise.'),
(9, 'Comptes de liaison produits', '187', 'Ce compte est utilisé pour enregistrer les opérations de transfert de produits entre différentes divisions ou départements de l''entreprise. Il permet de suivre les revenus générés par chaque division tout en conservant une vue d''ensemble des produits totaux de l''entreprise.'),
(9, 'Comptes de liaison des sociétés en participation', '188', 'Ce compte est utilisé pour enregistrer les transactions et les soldes entre l''entreprise et ses sociétés en participation. Il permet de consolider les opérations financières entre les entités liées et de refléter correctement la situation financière de l''entreprise consolidée.'),


---- 10 --------
(10, 'Provisions pour litiges', '191', 'Ce compte est utilisé pour enregistrer les montants mis de côté par l''entreprise pour faire face à des litiges ou des procédures judiciaires en cours ou anticipées. Les provisions pour litiges sont constituées afin de couvrir les éventuelles pertes financières découlant de ces litiges.'),
(10, 'Provisions pour garanties données aux clients', '192', 'Ce compte regroupe les montants provisionnés par l''entreprise pour couvrir les coûts potentiels liés aux garanties accordées aux clients sur ses produits ou services. Les provisions sont établies en fonction des estimations des coûts futurs associés à ces garanties.'),
(10, 'Provisions pour pertes sur marchés a achevement futur', '193', 'Ce compte concerne les provisions établies par l''entreprise pour couvrir les pertes potentielles sur des contrats à achèvement futur ou des projets en cours qui pourraient ne pas être achevés selon les termes prévus. Les provisions sont basées sur des évaluations des risques associés à ces projets.'),
(10, 'Provisions pour pertes de change', '194', 'Ce compte est utilisé pour enregistrer les montants provisionnés par l''entreprise pour faire face à des pertes potentielles découlant de fluctuations défavorables des taux de change. Les provisions pour pertes de change sont constituées pour atténuer l''impact financier de ces fluctuations sur les opérations de l''entreprise.'),
(10, 'Provisions pour impôts', '195', 'Ce compte regroupe les montants mis de côté par l''entreprise pour couvrir les impôts futurs qu''elle devra payer. Les provisions pour impôts sont établies en fonction des estimations des obligations fiscales futures de l''entreprise, afin de garantir qu''elle dispose des fonds nécessaires pour les régler.'),
(10, 'Provisions pour pensions et obligations similaires', '196', 'Ce compte concerne les provisions établies par l''entreprise pour couvrir les obligations futures liées aux régimes de retraite et autres avantages sociaux offerts à ses employés. Les provisions pour pensions sont constituées pour garantir que l''entreprise dispose des fonds nécessaires pour honorer ses engagements envers ses employés.'),
(10, 'Provisions pour restructuration', '197', 'Ce compte est utilisé pour enregistrer les montants mis de côté par l''entreprise pour faire face aux coûts de restructuration, tels que les indemnités de départ des employés, les coûts de fermeture d''installations et autres charges liées à des changements importants dans la structure ou les opérations de l''entreprise.'),
(10, 'Autres provisions pour risques et charges', '198', 'Ce compte regroupe les provisions établies par l''entreprise pour couvrir d''autres types de risques et de charges qui ne sont pas spécifiquement répertoriés dans d''autres comptes de provisions. Il peut s''agir de provisions pour des événements imprévus ou exceptionnels qui pourraient avoir un impact financier sur l''entreprise.'),




---- 11 --------
(11, 'Frais de développement', '211', 'Ce compte concerne les coûts engagés par l''entreprise pour développer de nouveaux produits, services ou technologies. Les frais de développement comprennent les dépenses liées à la recherche, à la conception, à la mise en oeuvre et à la mise sur le marché de ces développements.'),
(11, 'Brevets, licences, concessions, et droits similaires', '212', ''),
(11, 'Logiciels et sites internet', '213', 'Ce compte regroupe les actifs incorporels acquis par l''entreprise sous forme de brevets, licences, concessions ou autres droits similaires. Il s''agit des droits légaux exclusifs permettant à l''entreprise d''exploiter certains actifs ou technologies.'),
(11, 'Marques', '214', 'Ce compte concerne les actifs incorporels représentés par les logiciels informatiques et les sites internet détenus par l''entreprise. Il inclut les coûts d''acquisition ou de développement de logiciels et de sites internet utilisés dans les opérations commerciales de l''entreprise.'),
(11, 'Fonds commercial', '215', 'Ce compte regroupe la valeur des actifs incorporels liés à la réputation, à la clientèle, à la notoriété de la marque et à d''autres aspects immatériels de l''entreprise qui contribuent à sa rentabilité et à sa capacité à générer des revenus.'),
(11, 'Droit au bail', '216', 'Ce compte concerne les droits légaux acquis par l''entreprise pour occuper un bien immobilier en vertu d''un contrat de bail. Il représente la valeur des droits d''occupation de l''entreprise sur le bien immobilier loué.'),
(11, 'Investissements de création', '217', 'Ce compte concerne les investissements effectués par l''entreprise pour créer de nouveaux actifs incorporels, tels que des droits de propriété intellectuelle, des logiciels personnalisés ou d''autres actifs créés en interne.'),
(11, 'Autres droits et valeurs incorporels', '218', 'Ce compte regroupe les actifs incorporels qui ne sont pas spécifiquement répertoriés dans d''autres comptes. Il peut inclure une variété de droits et de valeurs immatériels détenus par l''entreprise, tels que des droits de publication, des droits d''utilisation de brevets tiers, etc.'),
(11, 'Immobilisations incorporelles en cours', '219', 'Ce compte concerne les coûts engagés par l''entreprise pour développer ou acquérir des actifs incorporels qui ne sont pas encore prêts à être mis en service. Il s''agit des coûts de développement ou d''acquisition de futurs actifs incorporels de l''entreprise.'),



---- 12 -------
(12, 'Terrains agricoles et forestiers', '221', 'Ce compte concerne les terrains détenus par l''entreprise destinés à des activités agricoles ou forestières. Il englobe les terres utilisées pour la culture, l''élevage ou la sylviculture, ainsi que les forêts ou les bois exploités par l''entreprise.'),
(12, 'Terrains nus', '222', 'Ce compte regroupe les terrains détenus par l''entreprise qui ne sont pas aménagés ou affectés à une activité spécifique. Il peut s''agir de terrains non développés, non construits ou non utilisés à des fins particulières.'),
(12, 'Terrains bâtis', '223', 'Ce compte concerne les terrains détenus par l''entreprise sur lesquels des bâtiments, des installations ou des structures ont été érigés. Il englobe les terrains occupés par des locaux commerciaux, des usines, des entrepôts ou des infrastructures similaires.'),
(12, 'Travaux de mise en valeur des terrains', '224', 'Ce compte concerne les coûts engagés par l''entreprise pour préparer et aménager des terrains en vue de leur utilisation future. Il inclut les dépenses liées à l''assainissement, au nivellement, à la viabilisation ou à d''autres travaux de développement des terrains.'),
(12, 'Terrains de carrieres-trefonds', '225', 'Ce compte concerne les terrains détenus par l''entreprise et exploités pour l''extraction de matériaux tels que la pierre, le sable, le gravier, etc. Il englobe les carrières, les gravières ou d''autres sites d''extraction de matériaux minéraux.'),
(12, 'Terrains aménagés', '226', 'Ce compte regroupe les terrains détenus par l''entreprise qui ont été spécifiquement aménagés ou équipés pour une utilisation particulière. Il peut inclure des terrains aménagés pour le sport, les loisirs, les parcs industriels, etc.'),
(12, 'Terrains mis en concession', '227', 'Ce compte concerne les terrains détenus par l''entreprise qui ont été concédés ou loués à des tiers pour une utilisation spécifique. Il englobe les terrains loués pour des activités commerciales, résidentielles, agricoles ou industrielles.'),
(12, 'Autres terrains', '228', 'Ce compte regroupe les terrains détenus par l''entreprise qui ne sont pas spécifiquement répertoriés dans d''autres comptes. Il peut inclure une variété de terrains détenus à des fins diverses mais qui ne correspondent pas aux catégories spécifiques énumérées.'),
(12, 'Aménagements de terrains en cours', '229', 'Ce compte concerne les coûts engagés par l''entreprise pour aménager des terrains qui ne sont pas encore prêts à être utilisés. Il inclut les dépenses liées à la préparation, à la viabilisation ou à d''autres travaux de développement en cours sur les terrains de l''entreprise.'),


---- 13 --------
(13, 'Bâtiments industriels, agricoles, administratifs et commerciaux sur sol propre', '231', ''),
(13, 'Bâtiments industriels, agricoles, administratifs et commerciaux sur sol d''autrui', '232', ''),
(13, 'Ouvrages d''infrastructures', '233', 'Ce compte concerne les ouvrages de grande envergure construits par l''entreprise pour des besoins d''infrastructures. Il englobe les constructions telles que les routes, les ponts, les barrages, les lignes électriques, etc., destinées à un usage public ou privé.'),
(13, 'Aménagements, agencements et installations techniques', '234', 'Ce compte regroupe les aménagements intérieurs et les installations techniques réalisés par l''entreprise pour répondre à ses besoins opérationnels. Il inclut les agencements de locaux, les installations électriques, les systèmes de climatisation, etc.'),
(13, 'Aménagements de bureaux', '235', 'Ce compte concerne les aménagements spécifiques réalisés par l''entreprise dans ses locaux administratifs. Il englobe les travaux d''agencement, de décoration et d''équipement des bureaux et des espaces de travail.'),
(13, 'Bâtiments industriels, agricoles et commerciaux mis en concession', '237', 'Ce compte concerne les bâtiments détenus par l''entreprise mais construits sur des terrains concédés ou loués à des tiers. Il englobe les structures industrielles, agricoles ou commerciales situées sur des terrains concédés à l''entreprise pour une période déterminée.'),
(13, 'Autres installations et agencements', '238', 'Ce compte regroupe les installations et les agencements réalisés par l''entreprise qui ne sont pas spécifiquement répertoriés dans d''autres comptes. Il peut inclure une variété d''aménagements intérieurs ou extérieurs répondant à des besoins particuliers de l''entreprise.'),
(13, 'Bâtiments aménagements, agencements et installations en cours', '239', 'Ce compte concerne les coûts engagés par l''entreprise pour la construction ou la rénovation de bâtiments, d''aménagements intérieurs, d''agencements ou d''installations techniques en cours de réalisation. Il inclut les travaux en cours sur les infrastructures de l''entreprise.'),


---- 14 -----------
(14, 'Matériel et outillage industriel et commercial', '241', 'Ce compte regroupe le matériel et l''outillage utilisés par l''entreprise dans ses activités industrielles et commerciales. Il inclut les équipements, les machines, les outils et les dispositifs nécessaires à la production, à la transformation ou à la vente des biens ou des services de l''entreprise.'),
(14, 'Matériel et outillage agricole', '242', 'Ce compte concerne le matériel et l''outillage spécifiquement utilisés dans les activités agricoles de l''entreprise. Il englobe les machines agricoles, les équipements de culture, de récolte et de traitement des cultures, ainsi que tout autre équipement nécessaire à l''exploitation agricole.'),
(14, 'Matériel d''emballage récupérable et identifiable', '243', 'Ce compte concerne le matériel d''emballage utilisé par l''entreprise pour conditionner ses produits et marchandises. Il inclut les emballages réutilisables et identifiables, tels que les palettes, les conteneurs et les caisses, qui peuvent être récupérés et réutilisés dans le processus logistique de l''entreprise.'),
(14, 'Matériel et mobilier', '244', 'Ce compte regroupe le matériel et le mobilier utilisés par l''entreprise dans ses activités administratives, commerciales ou opérationnelles. Il inclut les équipements de bureau, les meubles, les appareils électroniques, les équipements de sécurité, etc., nécessaires au fonctionnement de l''entreprise.'),
(14, 'Matériel de transport', '245', 'Ce compte concerne les véhicules et les moyens de transport utilisés par l''entreprise dans le cadre de ses activités. Il englobe les voitures, les camions, les véhicules utilitaires, les engins de manutention, ainsi que tout autre moyen de transport utilisé pour le déplacement des biens ou des personnes.'),
(14, 'Actifs biologiques', '246', 'Ce compte concerne les actifs biologiques détenus par l''entreprise, tels que les animaux, les cultures permanentes, les plantations forestières, etc. Il englobe les biens vivants utilisés ou détenus par l''entreprise dans le cadre de ses activités agricoles, forestières ou de production biologique.'),
(14, 'Agencements, aménagements du matériel et actifs biologiques', '247', 'Ce compte regroupe les coûts liés à l''agencement et à l''aménagement du matériel et des actifs biologiques de l''entreprise. Il inclut les dépenses engagées pour l''installation, la modification ou l''amélioration des équipements, des installations et des infrastructures associés au matériel et aux actifs biologiques.'),
(14, 'Autres matériels et mobiliers', '248', 'Ce compte concerne les autres types de matériel et de mobilier utilisés par l''entreprise mais qui ne sont pas spécifiquement répertoriés dans d''autres comptes. Il englobe les équipements et les biens mobiliers nécessaires aux activités de l''entreprise et qui ne sont pas classés ailleurs dans le plan comptable.'),
(14, 'Matériels et actifs biologiques en cours', '249', 'Ce compte concerne les coûts engagés par l''entreprise pour l''acquisition, la production ou la transformation de matériel et d''actifs biologiques en cours de réalisation. Il inclut les dépenses liées à la construction, à la fabrication ou à la croissance des biens matériels ou biologiques en cours de développement.'),

----- 15 ---------------
(15, 'Avances et acomptes versés sur immobilisations incorporelles', '251', 'Ce compte enregistre les paiements anticipés effectués par l''entreprise pour l''acquisition ou le développement d''immobilisations incorporelles. Il comprend les avances financières versées à des tiers ou à des fournisseurs en vue de l''acquisition de droits incorporels tels que des brevets, des licences logicielles, des droits d''auteur, etc.'),
(15, 'Avances et acomptes versés sur immobilisations corporelles', '252', 'Ce compte concerne les avances financières versées par l''entreprise pour l''acquisition ou la construction d''immobilisations corporelles telles que des terrains, des bâtiments, des machines, des équipements, etc. Il enregistre les acomptes versés à des fournisseurs ou des entrepreneurs pour la réalisation de travaux ou la livraison d''équipements.'),


----- 16 ---------------
(16, 'Titres de participation dans des sociétés sous contrôle exclusif', '261', 'Ce compte représente les participations détenues par l''entreprise dans des sociétés où elle exerce un contrôle exclusif, c''est-à-dire une participation majoritaire lui permettant de diriger les activités de la société contrôlée.'),
(16, 'Titres de participation dans des sociétés sous contrôle conjoint', '262', 'Ce compte concerne les participations détenues par l''entreprise dans des sociétés où elle exerce un contrôle conjoint avec d''autres parties prenantes. Il s''agit généralement de participations minoritaires où plusieurs actionnaires ont un pouvoir de décision partagé.'),
(16, 'Titres de participation dans des sociétés conférant une influence notable', '263', 'Ce compte enregistre les participations détenues par l''entreprise dans des sociétés où elle n''a pas de contrôle majoritaire mais dispose d''une influence notable sur les décisions stratégiques ou opérationnelles.'),
(16, 'Participations dans des organismes professionnels', '265', 'Ce compte concerne les participations détenues par l''entreprise dans des organismes ou des associations professionnelles où elle est membre.'),
(16, 'Parts dans des groupements d''intérêt économique (G.I.E)', '266', 'Ce compte représente les parts détenues par l''entreprise dans des groupements d''intérêt économique, qui sont des structures permettant à plusieurs entités de collaborer dans le cadre de projets communs tout en conservant leur indépendance juridique.'),
(16, 'Autres titres de participation', '268', 'Ce compte regroupe d''autres types de titres de participation qui ne sont pas spécifiquement couverts par les comptes précédents. Il peut inclure des participations dans des fonds d''investissement, des entreprises non cotées en bourse, etc.'),


------- 17 ---------------
(17, 'Prêts et créances', '271', 'Ce compte représente les sommes prêtées par l''entreprise à des tiers et les créances résultant de ventes de biens ou de prestations de services réalisées à crédit. Il inclut également les avances accordées et d''autres formes de créances détenues par l''entreprise.'),
(17, 'Prêts au personnel', '272', 'Ce compte enregistre les montants prêtés par l''entreprise à son personnel, tels que les avances sur salaire ou les prêts consentis aux employés dans le cadre de politiques de prêts internes.'),
(17, 'Créances sur l''etat', '273', 'Ce compte concerne les créances détenues par l''entreprise sur l''État, telles que les remboursements d''impôts, les subventions ou les paiements dus par l''administration publique.'),
(17, 'Titres immobilisés', '274', 'Ce compte regroupe les titres financiers détenus par l''entreprise à long terme, c''est-à-dire ceux qui ne sont pas destinés à être rapidement vendus ou négociés sur un marché actif. Il peut s''agir d''actions ou d''obligations d''autres entreprises détenues à des fins d''investissement.'),
(17, 'Dépôts et cautionnements versés', '275', 'Ce compte représente les dépôts de garantie et les cautionnements versés par l''entreprise à des tiers, tels que les dépôts de garantie versés à des fournisseurs ou les cautionnements exigés dans le cadre de contrats ou de transactions.'),
(17, 'Intérêts courus', '276', 'Ce compte enregistre les intérêts qui ont été accumulés mais qui n''ont pas encore été payés ou reçus à la date de clôture de l''exercice financier.'),
(17, 'Créances rattachées a des participations et avances a des (G.I.E.)', '277', 'Ce compte concerne les créances détenues par l''entreprise sur des participations dans des sociétés ou des avances accordées à des groupements d''intérêt économique (G.I.E.) dont elle est membre.'),
(17, 'Immobilisations financières diverses', '278', 'Ce compte regroupe d''autres types d''immobilisations financières qui ne sont pas spécifiquement couverts par les comptes précédents. Il peut inclure des investissements dans des fonds d''investissement, des participations dans des startups, etc.'),


----- 18 ----------------
(18, 'Amortissements des immobilisations incorporelles', '281', 'Ce compte enregistre les amortissements constatés sur les immobilisations incorporelles de l''entreprise, telles que les logiciels, les brevets, les marques, etc. Les amortissements représentent la répartition du coût de ces actifs sur leur durée d''utilisation prévue.'),
(18, 'Amortissements des terrains', '282', 'Ce compte concerne les amortissements constatés sur les terrains détenus par l''entreprise. Il est rare que les terrains fassent l''objet d''amortissements car ils sont considérés comme des actifs non dépréciables. Cependant, dans certains cas exceptionnels où leur valeur diminue, des amortissements peuvent être enregistrés.'),
(18, 'Amortissements des bâtiments, installations techniques et agencements', '283', 'Ce compte regroupe les amortissements constatés sur les bâtiments, les installations techniques et les agencements détenus par l''entreprise. Les amortissements sont comptabilisés pour refléter la dépréciation de la valeur de ces actifs au fil du temps, due à leur usure, à l''obsolescence ou à d''autres facteurs.'),
(18, 'Amortissements du matériel', '284', 'Ce compte concerne les amortissements constatés sur le matériel et l''outillage industriel et commercial de l''entreprise. Il inclut les équipements, les machines, les outils et autres actifs similaires. Les amortissements sont enregistrés pour refléter la perte de valeur de ces actifs au fur et à mesure de leur utilisation.'),


---- 19 ----------
(19, 'Dépréciations des immobilisations incorporelles', '291', 'Ce compte enregistre les dépréciations constatées sur les immobilisations incorporelles de l''entreprise, telles que les logiciels, les brevets, les marques, etc. Les dépréciations sont enregistrées lorsque la valeur recouvrable d''un actif est inférieure à sa valeur comptable nette.'),
(19, 'Dépréciations des terrains', '292', 'Ce compte concerne les dépréciations constatées sur les terrains détenus par l''entreprise. Les dépréciations peuvent être enregistrées lorsque la valeur des terrains diminue de façon durable et significative, par exemple en raison de changements dans l''environnement économique ou des conditions du marché.'),
(19, 'Dépréciations des bâtiments, installations techniques et agencements', '293', 'Ce compte regroupe les dépréciations constatées sur les bâtiments, les installations techniques et les agencements détenus par l''entreprise. Les dépréciations sont enregistrées pour refléter la perte de valeur de ces actifs, qui peut résulter de l''usure, de l''obsolescence ou d''autres facteurs.'),
(19, 'Dépréciations de matériel, du mobilier et de l''inactif biologique', '294', 'Ce compte concerne les dépréciations constatées sur le matériel, le mobilier et les actifs biologiques de l''entreprise. Les dépréciations sont enregistrées pour refléter la perte de valeur de ces actifs, qui peut résulter de l''usure, de l''obsolescence ou d''autres facteurs.'),
(19, 'Dépréciations des avances et acomptes versés sur immobilisations', '295', 'Ce compte enregistre les dépréciations constatées sur les avances et acomptes versés sur des immobilisations, telles que des avances sur des biens en construction ou en développement. Les dépréciations sont comptabilisées lorsque la valeur recouvrable des immobilisations concernées est inférieure à leur coût d''acquisition ou à leur valeur comptable nette.'),
(19, 'Dépréciations des titres de participation', '296', 'Ce compte concerne les dépréciations constatées sur les titres de participation détenus par l''entreprise dans d''autres sociétés. Les dépréciations sont enregistrées lorsque la valeur de ces titres diminue de façon durable et significative, par exemple en raison de performances financières médiocres ou de difficultés économiques rencontrées par les sociétés émettrices.'),
(19, 'Dépréciations des autres immobilisations financières', '297', 'Ce compte regroupe les dépréciations constatées sur d''autres types d''immobilisations financières détenues par l''entreprise, telles que des prêts, des créances à long terme, des placements à long terme, etc. Les dépréciations sont enregistrées lorsque la valeur recouvrable de ces actifs est inférieure à leur valeur comptable nette.'),


---------- 20 --------
(20, 'Marchandises A', '311', 'Ce compte représente la valeur des marchandises de type A détenues par l''entreprise dans le cadre de ses activités ordinaires. Les marchandises de type A sont généralement celles qui sont destinées à être revendues dans le cours normal des opérations commerciales de l''entreprise. Elles peuvent inclure des produits finis, des produits en cours de production ou des matières premières nécessaires à la fabrication de produits finis.'),
(20, 'Marchandises B', '312', 'Ce compte représente la valeur des marchandises de type B détenues par l''entreprise dans le cadre de ses activités ordinaires. Les marchandises de type B sont généralement celles qui sont destinées à être revendues dans le cours normal des opérations commerciales de l''entreprise, mais qui peuvent présenter des caractéristiques différentes ou être destinées à un marché spécifique par rapport aux marchandises de type A.'),
(20, 'Actifs biologiques', '313', 'Ce compte concerne la valeur des actifs biologiques détenus par l''entreprise, tels que des animaux vivants ou des cultures, qui sont utilisés dans ses activités opérationnelles. Les actifs biologiques peuvent être évalués à leur coût d''acquisition ou à leur valeur vénale, selon la méthode comptable choisie par l''entreprise.'),
(20, 'Marchandises hors activites ordinaires (H.A.O)', '318', 'Ce compte représente la valeur des marchandises détenues par l''entreprise qui ne sont pas directement liées à ses activités ordinaires. Il peut s''agir de marchandises destinées à des projets spécifiques, à des promotions ponctuelles ou à d''autres utilisations qui ne relèvent pas du fonctionnement habituel de l''entreprise. Les marchandises enregistrées dans ce compte peuvent être évaluées séparément des autres stocks pour permettre une meilleure analyse des activités hors activités ordinaires.'),


---- 21 -------------
(21, 'Matières A', '321', 'Ce compte représente les matières premières de type A utilisées dans le processus de production.Il inclut les matières premières de qualité spécifique nécessaires à la fabrication des produits.'),
(21, 'Matières B', '322', 'Ce compte englobe les matières premières de type B requises dans la chaîne de production.Il comprend les matières premières secondaires ou alternatives utilisées dans la fabrication des biens.'),
(21, 'Fournitures (A, B)', '323', 'Ce compte regroupe les fournitures nécessaires à la production, incluant à la fois les fournitures de type A et de type B.'),




------ 22 -------
(22, 'Matières consommables', '331', 'Ce compte représente les matières premières qui sont utilisées dans le processus de production et qui sont consommées au cours de ce processus.'),
(22, 'Fournitures d''atelier et d''usine', '332', 'Il englobe les fournitures utilisées dans les ateliers et les usines pour entretenir les équipements, les outils et les machines.'),
(22, 'Fournitures de magasin', '333', ' Ces fournitures sont utilisées dans les magasins pour l''entreposage des produits et pour assurer le bon fonctionnement des opérations de stockage.'),
(22, 'Fournitures de bureau', '334', 'Ce compte regroupe les fournitures nécessaires pour les tâches administratives, telles que le papier, les stylos, les cartouches d''encre, etc.'),
(22, 'Emballages', '335', 'Il inclut les matériaux d''emballage utilisés pour protéger les produits pendant le transport, le stockage et la vente.'),
(22, 'Autres matières', '338', 'Ce compte est utilisé pour enregistrer toutes les autres matières qui ne sont pas spécifiquement couvertes par les autres comptes.'),


------ 23 ----------
(23, 'Produits en cours', '341', 'Ce compte enregistre la valeur des produits qui sont en cours de fabrication mais qui ne sont pas encore achevés à la fin de la période comptable.'),
(23, 'Travaux en cours', '342', 'l représente la valeur des travaux qui sont en cours d''exécution mais qui ne sont pas encore terminés à la fin de la période comptable.'),
(23, 'Produits intermediaires en cours', '343', 'Ce compte concerne les produits qui sont partiellement transformés ou assemblés mais qui ne sont pas encore achevés.'),
(23, 'Produits résiduels en cours', '344', 'Il englobe les produits qui résultent du processus de production mais qui ne sont pas conformes aux spécifications finales et qui nécessitent des ajustements ou des transformations supplémentaires.'),
(23, 'Actifs biologiques en cours', '345', 'Ce compte est utilisé pour enregistrer la valeur des actifs biologiques, tels que les cultures agricoles ou les animaux d''élevage, qui sont en cours de croissance ou de développement.'),



------- 24 -------
(24, 'Etudes en cours', '351', 'Ce compte comptabilise les coûts liés aux études et aux recherches en cours qui n''ont pas encore abouti à un produit ou un service finalisé à la fin de la période comptable.'),
(24, 'Prestations de services en cours', '352', 'Il enregistre la valeur des services qui sont en cours d''exécution mais qui n''ont pas encore été entièrement fournis à la fin de la période comptable.'),


------ 25 ----------
(25, 'Produits finis A', '361', 'Ce compte représente la valeur des produits finis de catégorie A qui sont prêts à être vendus à la fin de la période comptable.'),
(25, 'Produits finis B', '362', 'Il enregistre la valeur des produits finis de catégorie B qui sont prêts à être vendus à la fin de la période comptable.'),
(25, 'Actifs biologiques', '363', 'Ce compte concerne les actifs biologiques, tels que les animaux ou les cultures, qui sont prêts à être récoltés ou exploités à la fin de la période comptable.'),


----- 26 ------
(26, 'Produits intermediaires', '371', 'Ce compte représente la valeur des produits en cours de production qui sont en cours de transformation pour devenir des produits finis.'),
(26, 'Produits résiduels', '372', 'Il enregistre la valeur des produits restants ou des sous-produits qui résultent du processus de production principale et qui ne sont pas destinés à être vendus indépendamment.'),
(26, 'Actifs biologiques', '373', 'Ce compte concerne les actifs biologiques, tels que les animaux ou les cultures, qui sont prêts à être récoltés ou exploités à la fin de la période comptable.'),


----- 27 ------
(27, 'Marchandises en cours de route', '381', 'Ce compte enregistre la valeur des marchandises qui sont en transit vers leur destination finale, mais qui n''ont pas encore été réceptionnées.'),
(27, 'Matières premières et fournitures liées en cours de route', '382', 'Il représente la valeur des matières premières et des fournitures qui ont été achetées mais qui n''ont pas encore été livrées ou réceptionnées.'),
(27, 'Autres approvisionnements en cours de route', '383', 'Ce compte concerne les autres types d''approvisionnements en transit vers leur destination finale.'),
(27, 'Produits finis en cours de route', '386', ' Il enregistre la valeur des produits finis qui ont été fabriqués mais qui n''ont pas encore été livrés à leurs clients.'),
(27, 'Stock en consignation ou en dépôt', '387', 'Ce compte représente les biens détenus par l''entreprise pour le compte d''un tiers, qui n''appartiennent pas directement à l''entreprise mais qui sont sous sa garde ou sa responsabilité.'),
(27, 'Stock provenant d''immobilisations mises hors service ou au rebut', '388', 'Il concerne les biens ou les stocks qui proviennent d''immobilisations qui ont été mises hors service ou au rebut et qui sont toujours en possession de l''entreprise.'),


------- 28 -----
(28, 'Dépréciations des stocks de marchandises', '391', 'Ce compte enregistre la valeur des dépréciations appliquées aux stocks de marchandises détenus par l''entreprise, reflétant la perte de valeur de ces marchandises.'),
(28, 'Dépréciations des stocks de matières premières et fournitures liées', '392', 'Il représente les dépréciations appliquées aux stocks de matières premières et de fournitures liées détenus par l''entreprise, reflétant la perte de valeur de ces éléments.'),
(28, 'Dépréciations des stocks d''autres appovisionnements', '393', 'Ce compte concerne les dépréciations appliquées aux stocks d''autres types d''approvisionnements détenus par l''entreprise, reflétant la perte de valeur de ces approvisionnements.'),
(28, 'Dépréciations des productions en cours', '394', 'Il enregistre les dépréciations appliquées aux productions en cours de fabrication ou de transformation, reflétant la perte de valeur de ces productions.'),
(28, 'Dépréciations des services en cours', '395', 'Ce compte concerne les dépréciations appliquées aux services en cours de réalisation ou de fourniture, reflétant la perte de valeur de ces services.'),
(28, 'Dépréciations des stocks de produits finis', '396', ' Il représente les dépréciations appliquées aux stocks de produits finis détenus par l''entreprise, reflétant la perte de valeur de ces produits.'),
(28, 'Dépréciations des stocks de produits intermédiaires et résiduels', '397', 'Ce compte enregistre les dépréciations appliquées aux stocks de produits intermédiaires et résiduels détenus par l''entreprise, reflétant la perte de valeur de ces produits.'),
(28, 'Dépréciations des stocks en cours de route, en consignation ou en dépôt', '398', 'Il concerne les dépréciations appliquées aux stocks en transit, en consignation ou en dépôt détenus par l''entreprise, reflétant la perte de valeur de ces stocks.'),


----- 29 -----
(29, 'Fournisseurs, dettes en compte', '401', 'Ce compte enregistre les dettes dues aux fournisseurs pour des biens ou des services reçus par l''entreprise, mais pour lesquels aucune facture n''a encore été émise.'),
(29, 'Fournisseurs, effets a payer', '402', 'Il représente les dettes dues aux fournisseurs pour des biens ou des services reçus par l''entreprise et pour lesquels des effets de commerce ont été émis, mais qui n''ont pas encore été payés.'),
(29, 'Fournisseurs, acquisitions courantes d''immobilisations', '404', 'Ce compte concerne les dettes dues aux fournisseurs pour l''acquisition courante d''immobilisations corporelles ou incorporelles par l''entreprise.'),
(29, 'Fournisseurs, acquisitions courantes d''immobilisations', '408', 'Il enregistre également les dettes dues aux fournisseurs pour l''acquisition courante d''immobilisations corporelles ou incorporelles par l''entreprise.'),
(29, 'Fournisseurs débiteurs', '409', 'Ce compte concerne les montants dus par les fournisseurs à l''entreprise en raison de retours de marchandises ou de crédits accordés par les fournisseurs.'),


---- 30 ---------
(30, 'Clients', '411', 'Ce compte représente les montants dus à l''entreprise par ses clients pour des biens ou des services fournis, mais qui n''ont pas encore été payés.'),
(30, 'Clients, effets a recevoir en portefeuille', '412', 'Il concerne les montants dus à l''entreprise par ses clients, pour lesquels des effets de commerce ont été émis et qui sont en attente de paiement à l''échéance.'),
(30, 'Clients, chèques, effets et autres valeurs impayés', '413', 'Ce compte enregistre les montants dus à l''entreprise par ses clients sous forme de chèques, d''effets de commerce ou d''autres valeurs monétaires qui sont encore impayés.'),
(30, 'Créances sur cessions courantes d''immobilisations', '414', 'Il représente les montants dus à l''entreprise par ses clients pour des cessions courantes d''immobilisations, telles que des ventes d''actifs.'),
(30, 'Clients, effets escomptes non échus', '415', 'Ce compte concerne les montants dus à l''entreprise par ses clients pour lesquels des effets de commerce ont été escomptés mais dont l''échéance n''est pas encore arrivée.'),
(30, 'Créances clients litigieuses ou douteuses', '416', 'Il enregistre les montants dus à l''entreprise par des clients pour lesquels il existe un litige ou une incertitude quant à leur recouvrement.'),
(30, 'Clients, produits a recevoir', '418', 'Ce compte représente les montants dus à l''entreprise par ses clients pour des biens ou des services qui ont été facturés mais qui n''ont pas encore été livrés ou fournis.'),
(30, 'Clients créditeurs', '419', 'Il concerne les montants dus par les clients à l''entreprise en raison de retours de marchandises ou de crédits accordés par l''entreprise.'),



---- 31 -----------
(31, 'Personnel, avances et acomptes', '421', 'Ce compte enregistre les avances et les acomptes versés au personnel pour des dépenses futures ou des avances sur salaire.'),
(31, 'Personnel, rémunérations dues', '422', 'Il concerne les montants dus par l''entreprise à son personnel pour les salaires, les traitements, les primes et autres rémunérations.'),
(31, 'Personnel, oppositions, saisies-arrêts', '423', 'Ce compte concerne les montants saisis ou retenus sur les rémunérations du personnel en raison d''oppositions ou de saisies-arrêts émises par des tiers.'),
(31, 'Personnel, oeuvres sociales internes', '424', 'Il représente les dépenses engagées par l''entreprise pour les activités sociales et culturelles destinées à son personnel, telles que les activités sportives, les voyages, etc.'),
(31, 'Représentants du personnel', '425', 'Ce compte enregistre les montants dus aux représentants du personnel pour leur participation aux réunions et aux activités liées à la représentation des salariés.'),
(31, 'Personnel, participation aux bénéfices et au capital', '426', 'Il concerne les montants dus au personnel au titre de sa participation aux bénéfices de l''entreprise ou à son capital, selon les dispositifs de participation mis en place.'),
(31, 'Personnel dépots', '427', 'Ce compte enregistre les dépôts effectués par le personnel auprès de l''entreprise, tels que les cautionnements ou les dépôts de garantie.'),
(31, 'Personnel, charges à payer et produits a recevoir', '428', 'Il concerne les charges à payer et les produits à recevoir liés au personnel, tels que les congés payés à provisionner ou les cotisations sociales à régulariser.'),



------ 32 -------
(32, 'Sécurite sociale', '431', 'Ce compte concerne les montants dus à la sécurité sociale pour le paiement des cotisations sociales obligatoires liées à la protection sociale des salariés.'),
(32, 'Caisses de retraite complémentaire', '432', 'Il représente les montants dus aux caisses de retraite complémentaire pour le financement des régimes de retraite supplémentaires des salariés.'),
(32, 'Autres organismes sociaux', '433', 'Ce compte enregistre les montants dus à d''autres organismes sociaux que ceux liés à la sécurité sociale ou aux retraites complémentaires, tels que les organismes de mutuelle ou d''assurance complémentaire.'),
(32, 'Organismes sociaux, charges à payer et produits a recevoir', '438', 'Il concerne les charges à payer et les produits à recevoir liés aux organismes sociaux, tels que les régularisations de cotisations ou les remboursements de prestations.'),


-------33 ------
(33, 'État, impôt sur les bénéfices', '441', 'Ce compte représente les montants dus à l''État au titre de l''impôt sur les bénéfices réalisés par l''entreprise.'),
(33, 'État, autres impôts et taxes', '442', 'Il concerne les montants dus à l''État pour d''autres types d''impôts et taxes, tels que la taxe foncière, la taxe professionnelle, ou d''autres taxes locales.'),
(33, 'État, T.V.A. facturée', '443', 'Ce compte enregistre le montant de la taxe sur la valeur ajoutée facturée aux clients sur les ventes de biens ou de services.'),
(33, 'État, T.V.A. due ou crédit de T.V.A.', '444', ' concerne la TVA due à l''État sur les opérations réalisées par l''entreprise, ainsi que les crédits de TVA récupérables.'),
(33, 'État, T.V.A. récupérable', '445', 'Ce compte enregistre les montants de TVA supportés par l''entreprise sur ses achats de biens et services et pouvant être récupérés auprès de l''État.'),
(33, 'État, autres taxes sur le chiffre daffaires', '446', 'Il concerne les autres taxes liées au chiffre d''affaires de l''entreprise, en dehors de la TVA, telles que la contribution sociale de solidarité des sociétés (C3S).'),
(33, 'État, impôts retenus à la source', '447', 'Ce compte concerne les montants d''impôts retenus à la source sur les revenus versés par l''entreprise à ses salariés ou à des tiers.'),
(33, 'État, charges à payer et produits a recevoir', '448', 'Il enregistre les charges fiscales à payer à l''État et les produits fiscaux à recevoir de l''État, autres que ceux liés spécifiquement aux impôts sur les bénéfices et à la TVA.'),
(33, 'État, créances et dettes diverses', '449', 'Ce compte regroupe les créances et les dettes de l''entreprise envers l''État qui ne sont pas spécifiquement liées à des impôts ou à la TVA.'),


------- 34 -------
(34, 'Opérations avec les organismes africains', '451', 'Ce compte enregistre les transactions financières et commerciales effectuées par l''entreprise avec des organismes basés en Afrique, tels que des partenaires commerciaux, des institutions financières ou des organisations non gouvernementales opérant sur le continent africain.'),
(34, 'Opérations avec les autres organismes internationaux', '452', 'Il concerne les opérations financières et commerciales de l''entreprise impliquant des organismes internationaux autres que ceux spécifiquement africains, comme des institutions internationales, des organisations intergouvernementales ou des organisations non gouvernementales opérant en dehors du continent africain.'),
(34, 'Organismes internationaux, fonds de dotation et subventions à recevoir', '458', 'Ce compte enregistre les fonds de dotation et les subventions que l''entreprise attend de recevoir des organismes internationaux, tels que des agences de développement, des fondations philanthropiques ou des programmes d''aide internationale.'),


---- 35 ---------
(35, 'Apporteurs, opérations sur le capital', '461', 'Ce compte enregistre les opérations financières liées aux apports des actionnaires ou des associés à la société, telles que les augmentations de capital, les réductions de capital ou d''autres transactions affectant la structure du capital social de l''entreprise.'),
(35, 'Associés (2), comptes courants', '462', 'Il enregistre les transactions financières effectuées entre les associés et la société via des comptes courants, notamment les avances de fonds, les prêts consentis ou les remboursements effectués dans le cadre des relations financières entre les associés et l''entreprise.'),
(35, 'Associés (2), opérations faites en commun et GIE', '463', 'Ce compte concerne les opérations financières réalisées en commun entre les associés ou dans le cadre d''un groupement d''intérêt économique (GIE), telles que les investissements communs, les activités commerciales conjointes ou les projets collaboratifs.'),
(35, 'Associés (1), dividendes à payer', '465', 'Il enregistre les montants dus aux associés au titre des dividendes à payer, c''est-à-dire les bénéfices distribuables de l''entreprise qui doivent être versés aux actionnaires ou aux associés.'),
(35, 'Groupe, comptes courants', '466', 'Ce compte comptabilise les transactions financières effectuées entre les différentes entités appartenant au même groupe, telles que les prêts, les avances de fonds ou d''autres transactions internes entre les filiales et la société mère.'),
(35, 'Apporteurs, restant du sur capital appelé', '467', 'Il enregistre les montants restant dus par les actionnaires ou les associés sur le capital appelé, c''est-à-dire la partie du capital social pour laquelle ils se sont engagés à contribuer mais qui n''a pas encore été entièrement versée.'),



----- 36  -----
(36, 'Débiteurs et créditeurs divers', '471', 'Ce compte enregistre les créances et les dettes qui ne relèvent pas des autres catégories spécifiques de comptes, telles que les créances et les dettes résultant de transactions diverses avec des tiers qui ne sont pas classées ailleurs dans le plan comptable.'),
(36, 'Créances et dettes sur titres de placement', '472', 'Il concerne les créances et les dettes résultant de transactions liées à des titres de placement, tels que les actions, les obligations ou d''autres instruments financiers négociables.'),
(36, 'Intermédiaires - opérations faites pour comptes de tiers', '473', 'Ce compte est utilisé pour enregistrer les opérations réalisées par l''entreprise en tant qu''intermédiaire pour le compte de tiers, telles que les transactions de courtage, les opérations de commission ou les mandats exécutés pour le compte de clients.'),
(36, 'Comptes de répartition périodique des charges et des produits', '474', ' Il est utilisé pour répartir les charges et les produits sur plusieurs périodes comptables lorsque les montants ne peuvent pas être affectés directement à une seule période, par exemple, les charges ou les produits constatés d''avance qui doivent être répartis sur plusieurs exercices.'),
(36, 'Compte transitoire, ajustement spécial lié a la révision du syscohada', '475', 'Ce compte est utilisé pour enregistrer les ajustements spéciaux liés à la révision du système comptable OHADA (Organisation pour l''Harmonisation en Afrique du Droit des Affaires), notamment pour les entreprises soumises à ce régime comptable.'),
(36, 'Charges constatées d''avance', '476', ' Il enregistre les charges supportées par l''entreprise mais qui n''ont pas encore été consommées ou utilisées, et qui doivent donc être reportées sur les exercices futurs en tant que dépenses à constater ultérieurement.'),
(36, 'Produits constatés d''avance', '477', 'Ce compte comptabilise les produits ou les revenus perçus par l''entreprise mais qui ne sont pas encore gagnés ou réalisés, et qui doivent donc être reportés sur les exercices futurs en tant que produits à constater ultérieurement.'),
(36, 'Écarts de conversion actif', '478', 'Il enregistre les écarts de conversion liés à la conversion des éléments d''actif libellés dans une devise étrangère en devise locale, selon les principes de comptabilité internationale.'),
(36, 'Écarts de conversion passif', '479', 'Ce compte concerne les écarts de conversion résultant de la conversion des éléments de passif libellés dans une devise étrangère en devise locale, conformément aux normes comptables internationales.'),





----  37 ---
(37, 'Fournisseurs d''investissements', '481', 'Ce compte reflète les dettes à court ou à long terme envers les fournisseurs pour les investissements effectués. Il est souvent utilisé dans les entreprises qui acquièrent des actifs importants et qui ont besoin de payer les fournisseurs sur une période prolongée, souvent en plusieurs versements échelonnés dans le temps.'),
(37, 'Fournisseurs d''investissements, effets a payer', '482', 'Ce compte enregistre les dettes envers les fournisseurs liées aux investissements de l''entreprise, notamment les achats d''actifs immobilisés ou d''autres éléments nécessaires à son fonctionnement futur, qui sont payables par effet de commerce.'),
(37, 'Autres dettes hors activités ordinaires (H.A.O.)', '484', 'Il concerne les dettes qui ne sont pas directement liées aux activités ordinaires de l''entreprise, telles que les passifs résultant d''événements exceptionnels ou extraordinaires qui ne se produisent pas régulièrement dans le cadre de son exploitation habituelle.'),
(37, 'Créances sur cessions d''immobilisations', '485', 'Ce compte enregistre les créances de l''entreprise découlant de la vente ou de la cession d''immobilisations corporelles ou incorporelles à des tiers, qui sont généralement payables par des versements échelonnés sur une période de temps déterminée.'),
(37, 'Autres créances hors activités ordinaires (H.A.O.)', '488', 'Il s''agit des créances qui ne sont pas directement liées aux activités opérationnelles courantes de l''entreprise, telles que les créances résultant d''événements exceptionnels ou extraordinaires qui ne se produisent pas régulièrement dans le cadre de son exploitation habituelle.'),



--- 38 -----
(38, 'Dépréciations des comptes fournisseurs', '490', 'Ce compte enregistre les dépréciations constatées sur les comptes fournisseurs, qui représentent une estimation des pertes potentielles résultant de l''insolvabilité ou du défaut de paiement des fournisseurs.'),
(38, 'Dépréciations des comptes clients', '491', 'Il concerne les dépréciations constatées sur les comptes clients, représentant une estimation des pertes potentielles résultant de l''insolvabilité ou du défaut de paiement des clients.'),
(38, 'Dépréciations des comptes personnel', '492', 'Ce compte enregistre les dépréciations constatées sur les comptes liés au personnel, comme les avances sur salaire ou les prêts accordés aux employés, en raison de la possibilité de non-remboursement.'),
(38, 'Dépréciations des comptes organismes sociaux', '493', 'Il concerne les dépréciations constatées sur les comptes liés aux organismes sociaux, tels que les cotisations de sécurité sociale ou les contributions aux régimes de retraite complémentaire, en raison de risques potentiels de non-paiement.'),
(38, 'Dépréciations des comptes état et collectivités publiques', '494', 'Ce compte enregistre les dépréciations constatées sur les comptes liés à l''État et aux collectivités publiques, comme les impôts ou les taxes à payer, en raison de risques potentiels de non-paiement.'),
(38, 'Dépréciations des comptes organismes internationaux', '495', 'Il concerne les dépréciations constatées sur les comptes liés aux organismes internationaux, comme les contributions aux organisations internationales, en raison de risques potentiels de non-paiement.'),
(38, 'Dépréciations des comptes apporteurs associés et groupe', '496', 'Ce compte enregistre les dépréciations constatées sur les comptes liés aux apporteurs, associés et au groupe, représentant une estimation des pertes potentielles découlant de leur insolvabilité ou de leur incapacité à honorer leurs obligations.'),
(38, 'Dépréciations des comptes débiteurs divers', '497', 'Il concerne les dépréciations constatées sur les comptes débiteurs autres que les clients, fournisseurs ou organismes sociaux, en raison de risques potentiels de non-paiement.'),
(38, 'Dépréciations des comptes de créances h.a.o.', '498', 'Ce compte enregistre les dépréciations constatées sur les comptes de créances hors activités ordinaires, représentant une estimation des pertes potentielles résultant de l''insolvabilité ou du défaut de paiement dans le cadre d''événements exceptionnels ou extraordinaires.'),
(38, 'Provisions pour risques à court terme', '499', 'Il s''agit de provisions constituées pour couvrir les risques identifiés à court terme, tels que les litiges en cours, les garanties à accorder aux clients ou les pertes de change prévues, afin de garantir une bonne gestion financière et de préserver la stabilité de l''entreprise.'),





-------- 39 -------
(39, 'Titres du trésor et bons de caisse à court terme', '501', 'Ce compte enregistre les titres du trésor et bons de caisse à court terme détenus par l''entreprise, qui représentent des investissements financiers à court terme avec une échéance de remboursement généralement inférieure à un an.'),
(39, 'Actions', '502', 'Il concerne les actions détenues par l''entreprise en tant qu''investissement financier, représentant une part de propriété dans une société, avec des dividendes potentiels et une valeur fluctuante sur le marché.'),
(39, 'Obligations', '503', 'Ce compte enregistre les obligations détenues par l''entreprise en tant qu''investissement financier, représentant des titres de créance émis par des sociétés ou des entités gouvernementales, avec un paiement d''intérêts régulier et un remboursement du capital à l''échéance.'),
(39, 'Bons de souscription', '504', 'Il concerne les bons de souscription détenus par l''entreprise, représentant des instruments financiers donnant le droit à leur détenteur d''acquérir des actions supplémentaires à un prix fixe pendant une période déterminée.'),
(39, 'Titres négociables hors région', '505', 'Ce compte enregistre les titres négociables hors région détenus par l''entreprise, représentant des investissements financiers dans des titres négociables émis en dehors de la région géographique de l''entreprise.'),
(39, 'Intérêts courus', '506', 'Il concerne les intérêts courus sur les titres de placement détenus par l''entreprise, représentant les intérêts accumulés mais non encore payés à la date de clôture des comptes.'),
(39, 'Autres titres de placement et créances assimilées', '508', 'Ce compte enregistre d''autres titres de placement et créances assimilées détenus par l''entreprise, qui ne sont pas classés dans les catégories précédentes et qui représentent des investissements financiers diversifiés.'),



------ 40 -------
(40, 'Effets à encaisser', '511', 'Ce compte enregistre les effets à encaisser détenus par l''entreprise, représentant des instruments financiers sous forme de traites ou de billets à ordre qui doivent encore être encaissés.'),
(40, 'Effets à l''encaissement', '512', 'Il concerne les effets à l''encaissement détenus par l''entreprise, représentant des instruments financiers sous forme de traites ou de billets à ordre qui ont été remis à la banque pour encaissement.'),
(40, 'Chèques à encaisser', '513', 'Ce compte enregistre les chèques à encaisser détenus par l''entreprise, représentant des moyens de paiement émis par des tiers qui doivent encore être déposés sur le compte bancaire de l''entreprise.'),
(40, 'Chèques à l''encaissement', '514', 'Il concerne les chèques à l''encaissement détenus par l''entreprise, représentant des moyens de paiement émis par des tiers et déjà déposés sur le compte bancaire de l''entreprise en attente d''encaissement.'),
(40, 'Cartes de crédit à encaisser', '515', 'Ce compte enregistre les cartes de crédit à encaisser détenues par l''entreprise, représentant des paiements effectués par les clients à l''aide de cartes de crédit qui doivent encore être traités et encaissés.'),
(40, 'Autres valeurs à l''encaissement', '518', 'Il concerne d''autres valeurs à l''encaissement détenues par l''entreprise, telles que des mandats, des virements ou d''autres formes de paiement qui doivent encore être encaissés.'),




------- 41 ---------
(41, 'Banques locales', '521', 'Ce compte enregistre les soldes détenus par l''entreprise dans des banques locales, représentant les fonds disponibles auprès des institutions bancaires situées dans la région ou le pays où l''entreprise opère.'),
(41, 'Banques autres états région', '522', 'Il concerne les soldes détenus par l''entreprise dans des banques situées dans d''autres États de la même région géographique, représentant les fonds disponibles dans des juridictions voisines ou similaires.'),
(41, 'Banques autres états zone monétaire', '523', 'Ce compte enregistre les soldes détenus par l''entreprise dans des banques situées dans d''autres États de la même zone monétaire, représentant les fonds disponibles dans des pays partageant la même monnaie ou soumis à des accords monétaires communs.'),
(41, 'Banques hors zone monétaire', '524', 'Il concerne les soldes détenus par l''entreprise dans des banques situées en dehors de la zone monétaire de référence, représentant les fonds disponibles dans des pays utilisant une monnaie différente ou n''ayant pas de lien monétaire particulier avec le pays d''origine de l''entreprise.'),
(41, 'Banques dépôt à terme', '525', 'Ce compte enregistre les dépôts à terme effectués par l''entreprise auprès des banques, représentant les fonds placés pour une période déterminée à un taux d''intérêt fixe convenu avec la banque.'),
(41, 'Banques, intérêts courus', '526', 'Il concerne les intérêts courus sur les soldes détenus par l''entreprise dans les banques, représentant les intérêts accumulés mais non encore payés par les banques sur les soldes des comptes bancaires.'),



---- 42 -------
(42, 'Chèques postaux', '531', 'Ce compte concerne les fonds détenus par l''entreprise auprès des services postaux, représentant les fonds disponibles auprès des opérateurs postaux pour les services bancaires.'),
(42, 'Trésor', '532', 'Il concerne les fonds détenus par l''entreprise auprès du Trésor public ou d''une institution similaire, représentant les fonds disponibles auprès de l''autorité fiscale ou financière centrale du pays.'),
(42, 'Sociétés de gestion et d''intermédiation (S.G.I.)', '533', 'Ce compte enregistre les fonds détenus par l''entreprise auprès des sociétés de gestion et d''intermédiation financières, représentant les fonds placés ou gérés par des sociétés spécialisées dans la gestion d''actifs financiers.'),
(42, 'Établissements financiers, intérêts courus', '536', 'Il concerne les intérêts courus sur les fonds détenus par l''entreprise auprès des établissements financiers, représentant les intérêts accumulés mais non encore payés par ces établissements sur les soldes des comptes.'),
(42, 'Autres organismes financiers', '538', 'Ce compte enregistre les fonds détenus par l''entreprise auprès d''autres organismes financiers non spécifiquement répertoriés, représentant les fonds disponibles auprès d''institutions financières autres que les banques, le Trésor ou les sociétés de gestion.'),



-- 43 ------
(43, 'Options de taux d''intérêt', '541', 'Ce compte concerne les options financières liées aux taux d''intérêt, représentant les contrats financiers donnant le droit, mais non l''obligation, d''acheter ou de vendre un actif sous-jacent à un prix fixé à l''avance à une date ultérieure, basé sur le taux d''intérêt.'),
(43, 'Options de taux de change', '542', 'Il concerne les options financières liées aux taux de change, représentant les contrats financiers donnant le droit, mais non l''obligation, d''acheter ou de vendre une devise à un prix fixé à l''avance à une date ultérieure, basé sur le taux de change.'),
(43, 'Options de taux boursiers', '543', 'Ce compte enregistre les options financières liées aux taux boursiers, représentant les contrats financiers donnant le droit, mais non l''obligation, d''acheter ou de vendre un titre financier à un prix fixé à l''avance à une date ultérieure, basé sur le taux boursier.'),
(43, 'Instruments de marchés à terme', '544', 'Il concerne les instruments financiers des marchés à terme, représentant les contrats standardisés d''achat ou de vente d''un actif sous-jacent à un prix fixé à l''avance pour une livraison future à une date déterminée.'),
(43, 'Avoirs d''or et autres métaux précieux', '545', 'Ce compte enregistre les avoirs d''or et d''autres métaux précieux détenus par l''entreprise, représentant les investissements ou les réserves de métaux précieux détenus pour des raisons de diversification ou de protection contre l''inflation et l''instabilité des devises.'),



-- 44 ------
(44, 'Monnaie électronique-carte carburant', '551', 'Ce compte enregistre les transactions liées à l''utilisation de la monnaie électronique via des cartes carburant, permettant le paiement électronique des achats de carburant pour les véhicules de l''entreprise.'),
(44, 'Monnaie électronique -téléphone portable', '552', 'Il concerne les transactions effectuées à l''aide de la monnaie électronique via des téléphones portables, permettant le paiement électronique des services et des biens à l''aide du téléphone mobile.'),
(44, 'Monnaie électronique -carte péage', '553', 'Ce compte enregistre les opérations liées à l''utilisation de la monnaie électronique via des cartes péage, permettant le paiement électronique des frais de péage sur les autoroutes et les routes à péage.'),
(44, 'Porte-monnaie électronique', '554', 'Ce compte concerne les opérations effectuées à l''aide du porte-monnaie électronique, permettant le stockage et l''utilisation de fonds électroniques pour effectuer des transactions électroniques, des paiements et des transferts d''argent.'),
(44, 'Autres instruments monnaies électroniques', '558', 'Il s''agit d''autres instruments de monnaie électronique utilisés pour effectuer des paiements électroniques, des transferts de fonds ou des transactions financières en ligne, en dehors des catégories spécifiques mentionnées.'),



-- 45 -----
(45, 'Crédits de trésorerie', '561', 'Ce compte enregistre les montants des crédits accordés par les institutions financières pour répondre aux besoins de trésorerie de l''entreprise, leur permettant de financer les opérations courantes et de faire face aux fluctuations temporaires de liquidités.'),
(45, 'Escompte de crédits de campagne', '564', 'Il concerne les escomptes accordés sur les crédits spécifiquement utilisés pour financer des campagnes saisonnières ou des activités saisonnières de l''entreprise, permettant de réduire les coûts d''emprunt pendant ces périodes.'),
(45, 'Escompte de crédits ordinaires', '565', 'Ce compte enregistre les escomptes consentis sur les crédits bancaires réguliers utilisés par l''entreprise pour financer ses opérations quotidiennes et ses investissements courants, contribuant ainsi à réduire les charges financières.'),
(45, 'Banques, crédits de trésorerie, intérêts courus', '566', 'Il s''agit des intérêts courus sur les crédits de trésorerie accordés par les banques, enregistrés ici pour refléter les charges d''intérêts qui doivent encore être payées sur ces emprunts, mais qui n''ont pas encore été réglées.'),



-- 46---
(46, 'Caisse siège social', '571', 'Ce compte représente les fonds en espèces disponibles au siège social de l''entreprise, utilisés pour effectuer des paiements immédiats ou des transactions en espèces.'),
(46, 'Caisse succursale A', '572', 'Il s''agit des fonds en espèces disponibles dans la succursale A de l''entreprise, utilisés pour effectuer des paiements sur place ou des transactions en espèces spécifiques à cette succursale.'),
(46, 'Caisse succursale B', '573', 'Ce compte représente les fonds en espèces disponibles dans la succursale B de l''entreprise, utilisés pour effectuer des paiements immédiats ou des transactions en espèces propres à cette succursale.'),



--- 47 ---
(47, 'Régies d''avance', '581', 'Ce compte enregistre les avances accordées au personnel ou à des tiers pour des dépenses futures, telles que les frais de déplacement ou les achats de fournitures. Il permet de suivre et de contrôler l''utilisation des fonds avancés.'),
(47, 'Accréditifs', '582', 'Il s''agit des autorisations accordées par l''entreprise à ses clients pour effectuer des achats à crédit. Ce compte enregistre les montants accordés et les paiements reçus au titre de ces crédits.'),
(47, 'Virements de fonds', '585', 'Ce compte enregistre les transferts de fonds effectués entre différents comptes bancaires ou entre différentes entités de l''entreprise. Il permet de suivre les mouvements de trésorerie internes.'),
(47, 'Autres virements internes', '588', 'Ce compte enregistre les autres types de virements internes qui ne sont pas spécifiquement liés aux opérations bancaires. Il peut inclure des transferts entre comptes internes à l''entreprise ou des mouvements de fonds entre différentes entités.'),

---- 48 ----
(48, 'Dépréciations des titres de placement', '590', 'Ce compte enregistre les dépréciations constatées sur la valeur des titres de placement détenus par l''entreprise. Ces dépréciations sont comptabilisées pour refléter une perte de valeur probable des investissements.'),
(48, 'Dépréciations des titres et valeurs à encaisser', '591', 'Ce compte enregistre les dépréciations constatées sur les titres et valeurs à encaisser détenus par l''entreprise. Il reflète une estimation de la perte de valeur de ces actifs.'),
(48, 'Dépréciations des comptes banques', '592', 'Ce compte enregistre les dépréciations constatées sur les comptes bancaires détenus par l''entreprise. Ces dépréciations sont comptabilisées pour prendre en compte les pertes probables liées à ces comptes.'),
(48, 'Dépréciations des comptes établissements financiers et assimilés', '593', 'Ce compte enregistre les dépréciations constatées sur les comptes d''établissements financiers et assimilés détenus par l''entreprise. Il reflète une estimation des pertes probables associées à ces comptes.'),
(48, 'Dépréciations des comptes d''instruments de trésorerie', '594', 'Ce compte enregistre les dépréciations constatées sur les instruments de trésorerie détenus par l''entreprise, tels que les chèques et les effets à encaisser. Il permet de prendre en compte les pertes probables liées à ces instruments.'),
(48, 'Provisions pour risque à court terme à caractère financier', '599', 'Ce compte enregistre les provisions constituées pour couvrir les risques financiers identifiés à court terme, tels que les pertes sur créances douteuses ou les fluctuations de valeur des actifs financiers. Ces provisions sont comptabilisées pour garantir une bonne gestion financière et préserver la stabilité de l''entreprise.'),



---- 49 ------
(49, 'Achats de marchandises', '601', 'Ce compte enregistre le montant total des achats de marchandises effectués par l''entreprise sur la période. Il inclut le coût d''acquisition des biens destinés à être revendus sans transformation.'),
(49, 'Achats de matières premières et fournitures liées', '602', 'Ce compte enregistre le montant total des achats de matières premières et de fournitures directement liées à la production de biens ou à la prestation de services par l''entreprise. Il inclut le coût d''acquisition des matières premières utilisées dans le processus de fabrication.'),
(49, 'Variations des stocks de biens achetés', '603', 'Ce compte enregistre les variations de valeur des stocks de biens achetés par l''entreprise au cours de la période comptable. Il inclut les ajustements de valeur des stocks de marchandises, de matières premières et d''autres biens achetés.'),
(49, 'Achats stockés de matières et fournitures consommables', '604', 'Ce compte enregistre le montant total des achats de matières et fournitures consommables qui sont stockés en vue d''une utilisation future dans le processus de production ou dans les opérations de l''entreprise. Il inclut le coût d''acquisition des biens destinés à être consommés sur plusieurs périodes.'),
(49, 'Autres achats', '605', 'Ce compte enregistre le montant total des autres achats effectués par l''entreprise au cours de la période comptable, qui ne sont pas spécifiquement liés aux achats de marchandises ou de matières premières. Il peut inclure des achats de services, des frais généraux ou d''autres types d''achats.'),
(49, 'Achats d''emballages', '608', 'Ce compte enregistre le montant total des achats d''emballages effectués par l''entreprise au cours de la période. Il inclut le coût d''acquisition des emballages utilisés pour conditionner les produits vendus par l''entreprise.'),



---  50 -----
(50, 'Transports sur ventes', '612', 'Ce compte enregistre les frais de transport associés aux ventes de biens ou de services effectuées par l''entreprise au cours de la période comptable. Il inclut les coûts de livraison des produits vendus aux clients.'),
(50, 'Transports pour le compte de tiers', '613', 'Ce compte enregistre les frais de transport engagés par l''entreprise pour le compte de tiers au cours de la période comptable. Il inclut les coûts de livraison des biens ou services commandés par des tiers.'),
(50, 'Transports du personnel', '614', 'Ce compte enregistre les frais de transport liés au déplacement du personnel de l''entreprise dans le cadre de ses activités professionnelles. Il inclut les coûts de déplacement des employés pour se rendre sur leur lieu de travail ou pour effectuer des missions professionnelles.'),
(50, 'Transports de plis', '616', 'Ce compte enregistre les frais de transport associés à l''envoi de plis ou de documents par l''entreprise au cours de la période comptable. Il inclut les coûts d''affranchissement et de livraison de courrier.'),
(50, 'Autres frais de transport', '618', 'Ce compte enregistre les autres frais de transport engagés par l''entreprise au cours de la période comptable et qui ne sont pas spécifiquement liés aux ventes, aux déplacements du personnel ou à l''envoi de plis. Il peut inclure divers frais de transport, tels que les frais de déplacement pour des réunions professionnelles ou les frais de transport de matériel.'),



--- 51 -----
(51, 'Sous-traitance générale', '621', 'Ce compte enregistre les dépenses liées à la sous-traitance générale des activités de l''entreprise. Il inclut les coûts des prestations de services réalisées par des entreprises extérieures pour le compte de l''entreprise, telles que la sous-traitance de production, de maintenance ou de services administratifs.'),
(51, 'Locations, charges locatives', '622', 'Ce compte enregistre les dépenses liées à la location de biens immobiliers ou mobiliers utilisés par l''entreprise dans le cadre de son activité. Il inclut les loyers payés pour les locaux commerciaux, les bureaux, les équipements ou les véhicules loués.'),
(51, 'Redevances de location acquisition', '623', 'Ce compte enregistre les redevances versées pour la location-acquisition de biens immobiliers ou mobiliers utilisés par l''entreprise. Il inclut les frais liés à la location avec option d''achat de certains actifs, tels que des équipements ou des véhicules.'),
(51, 'Entretien, réparations, remise en état et maintenance', '624', 'Ce compte enregistre les dépenses liées à l''entretien, aux réparations, à la remise en état et à la maintenance des biens de l''entreprise. Il inclut les coûts des travaux de maintenance préventive et corrective réalisés sur les équipements, les machines, les véhicules ou les installations.'),
(51, 'Primes d''assurance', '625', 'Ce compte enregistre les primes d''assurance payées par l''entreprise pour couvrir les risques liés à son activité. Il inclut les cotisations d''assurance pour les assurances responsabilité civile, les assurances dommages aux biens, les assurances véhicules, etc.'),
(51, 'Études, recherches et documentations', '626', 'Ce compte enregistre les dépenses liées aux études, aux recherches et à la documentation réalisées par l''entreprise. Il inclut les coûts des études de marché, des études de faisabilité, des recherches et développements, ainsi que les dépenses liées à l''acquisition de documentation technique ou professionnelle.'),
(51, 'Publicité, publications, relations publiques', '627', 'Ce compte enregistre les dépenses liées à la publicité, aux publications et aux relations publiques de l''entreprise. Il inclut les coûts des campagnes publicitaires, des annonces dans les médias, des publications promotionnelles, ainsi que les frais liés à l''organisation d''événements promotionnels ou institutionnels.'),
(51, 'Frais de télécommunications', '628', 'Ce compte enregistre les dépenses liées aux frais de télécommunications de l''entreprise. Il inclut les coûts des abonnements téléphoniques, des services internet, des services de messagerie, ainsi que les frais de communication mobiles ou de téléconférence.'),



--- 52 -------
(52, 'Frais bancaires', '631', 'Ce compte enregistre les frais facturés par les institutions financières pour les services bancaires rendus à l''entreprise. Il inclut les frais de tenue de compte, les commissions sur les opérations bancaires, les frais de virement, ainsi que les frais liés à l''utilisation de services bancaires spécifiques.'),
(52, 'Rémunérations d''intermédiaires et de conseils', '632', 'Ce compte enregistre les frais de rémunération versés à des intermédiaires ou des conseils pour des services rendus à l''entreprise. Il inclut les honoraires des consultants, des avocats, des experts-comptables, des courtiers, ainsi que les commissions versées aux agents commerciaux ou aux apporteurs d''affaires.'),
(52, 'Frais de formation du personnel', '633', 'Ce compte enregistre les dépenses liées à la formation du personnel de l''entreprise. Il inclut les coûts des formations internes ou externes, des séminaires, des ateliers de travail, ainsi que les frais de documentation pédagogique et de matériel pédagogique.'),
(52, 'Redevances pour brevets, licences, logiciels, concessions et droits et valeurs similaires', '634', 'Ce compte enregistre les redevances versées pour l''utilisation de brevets, de licences, de logiciels, de concessions et de droits et valeurs similaires. Il inclut les paiements effectués pour l''utilisation de droits de propriété intellectuelle, de marques déposées, de licences d''exploitation, ainsi que les redevances pour l''accès à des bases de données ou à des contenus protégés.'),
(52, 'Cotisations', '635', 'Ce compte enregistre les cotisations versées par l''entreprise à des organismes professionnels ou à des associations sectorielles. Il inclut les cotisations patronales ou salariales versées aux caisses de retraite complémentaire, aux organismes de prévoyance, aux mutuelles de santé, ainsi que les cotisations aux chambres de commerce, aux organisations patronales ou aux syndicats professionnels.'),
(52, 'Rémunérations de personnel extérieur à l''entité', '637', 'Ce compte enregistre les rémunérations versées à du personnel extérieur à l''entité pour des services rendus à l''entreprise. Il inclut les salaires, les honoraires, les commissions et les primes versés à des travailleurs temporaires, à des intérimaires, à des consultants indépendants ou à des prestataires de services extérieurs.'),
(52, 'Autres charges externes', '638', 'Ce compte enregistre les autres charges externes supportées par l''entreprise et qui ne sont pas classées dans les catégories précédentes. Il inclut les dépenses diverses telles que les frais de déplacement, les frais de représentation, les frais postaux et de courrier, les frais de déménagement, ainsi que les autres dépenses professionnelles externes.'),



---- 53 -------
(53, 'Impôts et taxes directs', '641', 'Ce compte enregistre les impôts et taxes prélevés directement sur le bénéfice de l''entreprise ou sur les revenus des actionnaires. Il inclut l''impôt sur les bénéfices, l''impôt sur les sociétés, l''impôt sur le revenu des personnes physiques, ainsi que les taxes locales et régionales sur les bénéfices ou sur le capital.'),
(53, 'Impôts et taxes indirects', '645', 'Ce compte enregistre les impôts et taxes prélevés indirectement sur les activités économiques de l''entreprise ou sur la consommation de biens et services. Il inclut la taxe sur la valeur ajoutée (TVA), la taxe sur les produits pétroliers (TIPP), la taxe sur les services (TSA), ainsi que les autres taxes indirectes.'),
(53, 'Droits d''enregistrement', '646', 'Ce compte enregistre les droits d''enregistrement payés lors de l''acquisition ou de la cession de biens immobiliers ou mobiliers, ainsi que lors de la conclusion de contrats ou d''actes juridiques. Il inclut les droits de mutation, les droits de timbre, les droits de greffe, ainsi que les droits d''enregistrement sur les titres.'),
(53, 'Pénalités, amendes fiscales', '647', 'Ce compte enregistre les pénalités et amendes fiscales infligées à l''entreprise en cas de non-respect des obligations fiscales ou en cas de manquement aux règles fiscales en vigueur. Il inclut les pénalités de retard, les amendes pour défaut de déclaration, ainsi que les sanctions pour fraude fiscale ou pour dissimulation de revenus.'),
(53, 'Autres impôts et taxes', '648', 'Ce compte enregistre les autres impôts et taxes qui ne sont pas classés dans les catégories précédentes. Il inclut les contributions sociales, les taxes foncières, les droits de douane, ainsi que les autres prélèvements obligatoires.'),



---  54 ------
(54, 'Pertes sur créances clients et autres débiteurs', '651', 'Ce compte enregistre les pertes occasionnées par l''impossibilité de recouvrer les créances sur les clients et les autres débiteurs. Il inclut les pertes sur les créances irrécouvrables, les créances en litige, ainsi que les débiteurs en situation de faillite ou de redressement judiciaire.'),
(54, 'Quote-part de résultat sur opérations faites en commun', '652', 'Ce compte enregistre la part de résultat provenant des opérations réalisées en commun avec d''autres entités ou partenaires commerciaux. Il inclut les bénéfices ou les pertes résultant des partenariats, des coentreprises ou des joint-ventures.'),
(54, 'Valeurs comptables des cessions courantes d''immobilisations', '654', 'Ce compte enregistre les valeurs comptables des immobilisations cédées dans le cadre d''opérations courantes de l''entreprise. Il inclut les valeurs nettes comptables des biens cédés, après déduction des amortissements et des dépréciations éventuelles.'),
(54, 'Pertes de change sur créances et dettes commerciales', '656', 'Ce compte enregistre les pertes financières résultant de la variation des taux de change sur les créances et les dettes commerciales libellées dans une devise étrangère. Il inclut les pertes de change sur les créances clients à l''exportation, ainsi que sur les dettes fournisseurs en devises étrangères.'),
(54, 'Pénalités et amendes pénales', '657', 'Ce compte enregistre les pénalités et amendes infligées à l''entreprise en raison de violations des lois pénales ou des réglementations en vigueur. Il inclut les amendes pour non-respect des normes de sécurité, pour infraction environnementale, ainsi que pour toute autre infraction passible de sanctions pénales.'),
(54, 'Charges diverses', '658', 'Ce compte enregistre les charges qui ne peuvent pas être classées dans les catégories précédentes en raison de leur nature diverse. Il inclut les charges exceptionnelles, les charges non récurrentes, ainsi que les autres charges qui ne sont pas spécifiquement rattachées à une activité ou à un secteur particulier.'),
(54, 'Charges pour dépréciations et provisions pour risques à court terme d''exploitation', '659', 'Ce compte enregistre les charges liées aux dépréciations d''actifs et aux provisions constituées pour faire face aux risques à court terme d''exploitation. Il inclut les charges pour dépréciations d''immobilisations, les provisions pour risques et charges, ainsi que les pertes anticipées sur des engagements ou des litiges.'),



----- 55 ------
(55, 'Rémunérations directes versées au personnel national', '661', 'Ce compte enregistre les rémunérations directes versées au personnel national de l''entreprise. Il inclut les salaires, les traitements, les primes, les gratifications et toutes autres rémunérations versées aux employés de nationalité locale pour leur travail au sein de l''entreprise.'),
(55, 'Rémunérations directes versées au personnel non national', '662', 'Ce compte enregistre les rémunérations directes versées au personnel non national de l''entreprise. Il inclut les salaires, les traitements, les primes, les gratifications et toutes autres rémunérations versées aux employés étrangers pour leur travail au sein de l''entreprise.'),
(55, 'Indemnités forfaitaires versées au personnel', '663', 'Ce compte enregistre les indemnités forfaitaires versées au personnel de l''entreprise. Il inclut les allocations forfaitaires versées en compensation de frais de déplacement, de repas, de logement ou autres dépenses engagées par les employés dans le cadre de leurs fonctions.'),
(55, 'Charges sociales', '664', 'Ce compte enregistre les charges sociales supportées par l''entreprise pour ses employés. Il inclut les cotisations patronales aux régimes de sécurité sociale, aux régimes de retraite complémentaire, ainsi que les contributions aux mutuelles et aux fonds de prévoyance.'),
(55, 'Rémunérations et charges sociales de l''exploitant individuel', '666', 'Ce compte enregistre les rémunérations et les charges sociales liées à l''exploitant individuel ou au chef d''entreprise qui exerce en son nom propre. Il inclut les rémunérations versées à l''exploitant, ainsi que les cotisations sociales obligatoires qu''il doit acquitter.'),
(55, 'Rémunération transférée de personnel extérieur', '667', 'Ce compte enregistre les rémunérations transférées de personnel extérieur à l''entreprise. Il inclut les frais de personnel externalisé ou les honoraires versés à des consultants, des prestataires de services ou des travailleurs indépendants pour des missions réalisées au bénéfice de l''entreprise.'),
(55, 'Autres charges sociales', '668', 'Ce compte enregistre les autres charges sociales qui ne sont pas spécifiquement rattachées aux rémunérations directes ou aux cotisations patronales. Il inclut les charges sociales exceptionnelles, les contributions aux fonds de solidarité, ainsi que toute autre charge sociale non classée ailleurs.'),



-- 56 ------
(56, 'Intérêts des emprunts', '671', 'Ce compte enregistre les intérêts supportés par l''entreprise sur ses emprunts. Il inclut les intérêts versés sur les emprunts bancaires, les obligations, les dettes obligataires et toute autre forme de financement externe sous forme d''intérêts.'),
(56, 'Intérêts dans loyers de location acquisition', '672', 'Ce compte enregistre les intérêts incorporés dans les loyers de location-acquisition. Il concerne les intérêts inclus dans les paiements de loyers pour des biens loués avec option d''achat.'),
(56, 'Escomptes accordés', '673', 'Ce compte enregistre les escomptes accordés par l''entreprise à ses clients ou partenaires commerciaux. Il concerne les réductions de prix octroyées en échange du règlement anticipé d''une créance ou d''une transaction commerciale.'),
(56, 'Autres intérêts', '674', 'Ce compte enregistre les autres intérêts non spécifiquement classés dans les comptes précédents. Il inclut les intérêts sur les prêts accordés par l''entreprise à des tiers, ainsi que les intérêts perçus sur des dépôts et autres placements.'),
(56, 'Escomptes des effets de commerce', '675', 'Ce compte enregistre les escomptes accordés sur les effets de commerce. Il concerne les réductions consenties pour le règlement anticipé de traites, billets à ordre ou autres effets de commerce.'),
(56, 'Pertes de change financières', '676', 'Ce compte enregistre les pertes de change subies par l''entreprise sur ses transactions financières. Il concerne les pertes résultant de la fluctuation des taux de change entre la monnaie nationale et les devises étrangères.'),
(56, 'Pertes sur titres de placement', '677', 'Ce compte enregistre les pertes subies par l''entreprise sur la vente ou la cession de titres de placement. Il concerne les pertes enregistrées lorsque la valeur de marché des titres est inférieure à leur valeur comptable.'),
(56, 'Pertes et charges sur risques financiers', '678', 'Ce compte enregistre les pertes et charges liées aux risques financiers encourus par l''entreprise. Il inclut les provisions pour pertes sur créances douteuses, les pertes sur investissements financiers et autres risques financiers identifiés.'),
(56, 'Charges pour dépréciations et provisions pour risques à court terme financières', '679', 'Ce compte enregistre les charges pour dépréciations et provisions constituées par l''entreprise pour couvrir les risques financiers à court terme. Il inclut les provisions pour risques de change, pour pertes sur créances clients et autres provisions financières.'),


-- 57 ---
(57, 'Dotations aux amortissements d''exploitation', '681', 'Ce compte enregistre les dotations aux amortissements relatives aux immobilisations corporelles et incorporelles affectées à l''activité opérationnelle de l''entreprise. Ces amortissements sont calculés pour refléter la dépréciation progressive des actifs utilisés dans le cadre de l''exploitation et sont généralement répartis sur leur durée d''utilité économique.'),


-- 58 ----
(58, 'Dotations aux provisions et aux dépréciations d''exploitation', '691', 'Ce compte enregistre les dotations aux provisions et aux dépréciations liées aux risques et charges d''exploitation de l''entreprise. Il comprend notamment les provisions pour litiges, les provisions pour créances douteuses, ainsi que les dépréciations des stocks et des créances clients.'),
(58, 'Dotations aux provisions et aux dépréciations financières', '697', 'Ce compte enregistre les dotations aux provisions et aux dépréciations destinées à couvrir les risques et pertes financières de l''entreprise. Il comprend notamment les provisions pour dépréciation des titres de placement, les provisions pour pertes de change, ainsi que les provisions pour risques à court terme à caractère financier.'),


-- 59 ----
(59, 'Ventes de marchandises', '701', 'Ce compte enregistre le montant des ventes de marchandises effectuées par l''entreprise au cours de la période comptable.'),
(59, 'Ventes de produits finis', '702', 'Ce compte enregistre le montant des ventes de produits finis réalisées par l''entreprise au cours de la période comptable.'),
(59, 'Ventes de produits intermédiaires', '703', 'Ce compte enregistre le montant des ventes de produits intermédiaires réalisées par l''entreprise au cours de la période comptable.'),
(59, 'Ventes de produits résiduels', '704', 'Ce compte enregistre le montant des ventes de produits résiduels réalisées par l''entreprise au cours de la période comptable.'),
(59, 'Travaux facturés', '705', 'Ce compte enregistre le montant des travaux facturés par l''entreprise au cours de la période comptable.'),
(59, 'Services vendus', '706', 'Ce compte enregistre le montant des services vendus par l''entreprise au cours de la période comptable.'),
(59, 'Produits accessoires', '707', 'Ce compte enregistre le montant des produits accessoires vendus par l''entreprise au cours de la période comptable.'),


-- 60 ---
(60, 'Sur produits à l''exportation', '711', 'Ce compte enregistre les sommes perçues sur les produits exportés par l''entreprise.'),
(60, 'Sur produits à l''importation', '712', 'Ce compte enregistre les sommes perçues sur les produits importés par l''entreprise.'),
(60, 'Sur produits de péréquation', '713', 'Ce compte enregistre les sommes perçues sur les produits de péréquation par l''entreprise.'),
(60, 'Indemnités et subventions d''exploitation (entité agricole)', '714', 'Ce compte enregistre les indemnités et subventions d''exploitation perçues par l''entité agricole.'),
(60, 'Autres subventions d''exploitation', '718', 'Ce compte enregistre les autres subventions d''exploitation perçues par l''entreprise.'),




-- 61 ----
(61, 'Immobilisations incorporelles', '721', 'Ce compte enregistre la valeur des actifs immatériels détenus par l''entreprise, tels que les brevets, les licences et les logiciels.'),
(61, 'Immobilisations corporelles', '722', 'Ce compte enregistre la valeur des biens physiques détenus par l''entreprise, tels que les bâtiments, les machines et le matériel.'),
(61, 'Production autoconsommée', '724', 'Ce compte enregistre la valeur des biens produits par l''entreprise et utilisés pour ses propres besoins.'),
(61, 'Immobilisations financières', '726', 'Ce compte enregistre la valeur des investissements financiers à long terme de l''entreprise, tels que les participations dans d''autres entreprises.'),


-- 62 ----
(62, 'Variations de stocks des produits en cours', '734', 'Ce compte enregistre les variations de valeur des produits en cours de production.'),
(62, 'Variations des en-cours de services', '735', 'Ce compte enregistre les variations de valeur des services en cours de réalisation.'),
(62, 'Variations des stocks de produits finis', '736', 'Ce compte enregistre les variations de valeur des produits finis stockés par l''entreprise.'),
(62, 'Variations des stocks de produits intermédiaires et résiduels', '737', 'Ce compte enregistre les variations de valeur des produits intermédiaires et résiduels stockés par l''entreprise.'),



-- 63 ----
(63, 'Profits sur créances clients et autres débiteurs', '751', 'Ce compte enregistre les profits réalisés suite à la récupération de créances clients ou d''autres débiteurs.'),
(63, 'Quote-part de résultat sur opérations faites en commun', '752', 'Ce compte enregistre la part de résultat qui revient à l''entreprise dans les opérations faites en commun avec d''autres entités.'),
(63, 'Produits des cessions courantes d''immobilisations', '754', 'Ce compte enregistre les produits générés par la vente régulière d''immobilisations de l''entreprise.'),
(63, 'Gains de change sur créances et dettes commerciales', '756', 'Ce compte enregistre les gains réalisés sur les opérations de change impliquant des créances et des dettes commerciales.'),
(63, 'Produits divers', '758', 'Ce compte enregistre les produits divers qui ne sont pas classés ailleurs.'),
(63, 'Reprises de charges pour dépréciations et provisions pour risques à court terme d''exploitation', '759', 'Ce compte enregistre les reprises de charges liées aux dépréciations et provisions pour risques à court terme d''exploitation.'),



-- 64 ----
(64, 'Intérêts de prêts et créances diverses', '771', 'Ce compte enregistre les intérêts perçus sur les prêts et les créances diverses détenus par l''entreprise.'),
(64, 'Revenus de participations et autres titres immobilisés', '772', 'Ce compte enregistre les revenus générés par les participations de l''entreprise dans d''autres entités, ainsi que les revenus provenant d''autres titres immobilisés.'),
(64, 'Escomptes obtenus', '773', 'Ce compte enregistre les escomptes obtenus par l''entreprise, généralement lorsqu''elle paye ses fournisseurs plus rapidement que prévu.'),
(64, 'Revenus de placement', '774', 'Ce compte enregistre les revenus perçus par l''entreprise à partir de ses placements financiers.'),
(64, 'Intérêts dans loyers de location acquisition', '775', 'Ce compte enregistre les intérêts perçus sur les loyers provenant de contrats de location acquisition.'),
(64, 'Gains de change financiers', '776', 'Ce compte enregistre les gains réalisés sur les opérations de change impliquant des actifs financiers.'),
(64, 'Gains sur cessions de titres de placement', '777', 'Ce compte enregistre les gains réalisés par l''entreprise lors de la vente de titres de placement.'),
(64, 'Gains sur risques financiers', '778', 'Ce compte enregistre les gains réalisés par l''entreprise sur les opérations liées aux risques financiers.'),
(64, 'Reprises de charges pour dépréciations et provisions à court terme financières', '779', 'Ce compte enregistre les reprises de charges liées aux dépréciations et provisions à court terme financières.'),



-- 65 -------
(65, 'Transferts de charges d''exploitation', '781', 'Ce compte enregistre les transferts de charges entre différentes activités d''exploitation de l''entreprise.'),
(65, 'Transferts de charges financières', '787', 'Ce compte enregistre les transferts de charges entre différentes activités financières de l''entreprise.'),


-- 66 ----
(66, 'Reprises de provisions et dépréciations d''exploitation', '791', 'Ce compte enregistre les reprises de provisions et de dépréciations liées aux activités d''exploitation de l''entreprise.'),
(66, 'Reprises de provisions et dépréciations financières', '797', 'Ce compte enregistre les reprises de provisions et de dépréciations liées aux activités financières de l''entreprise.'),
(66, 'Reprises d''amortissements', '798', 'Ce compte enregistre les reprises d''amortissements effectuées sur les immobilisations de l''entreprise.'),
(66, 'Reprises de subventions d''investissement', '799', 'Ce compte enregistre les reprises de subventions d''investissement, qui peuvent être constatées lorsque les conditions attachées à ces subventions sont remplies ou lorsque les biens subventionnés sont mis hors service.'),



-- 67 ----
(67, 'Immobilisations incorporelles', '811', 'Ce compte enregistre la valeur des actifs non physiques de l''entreprise, tels que les brevets, les licences, les marques et les logiciels.'),
(67, 'Immobilisations corporelles', '812', 'Ce compte enregistre la valeur des actifs physiques de l''entreprise, tels que les terrains, les bâtiments, les machines et les équipements.'),
(67, 'Immobilisations financières', '816', 'Ce compte enregistre la valeur des investissements financiers à long terme de l''entreprise, tels que les participations dans d''autres sociétés et les prêts à long terme.'),


-- 68 ----
(68, 'Immobilisations incorporelles', '821', 'Ce compte représente la valeur des actifs non physiques détenus par l''entreprise, comme les brevets, les marques et les logiciels.'),
(68, 'Immobilisations corporelles', '822', 'Ce compte enregistre la valeur des actifs physiques de l''entreprise, tels que les terrains, les bâtiments, les machines et les équipements.'),
(68, 'Immobilisations financières', '826', 'Ce compte contient la valeur des investissements financiers à long terme de l''entreprise, tels que les actions et les obligations détenues pour une période prolongée.'),


-- 69 ----
(69, 'Charges H.A.O. constatées', '831', 'Ce compte enregistre les charges exceptionnelles liées à des événements hors activités ordinaires, telles que des amendes, des pénalités ou des pertes imprévues.'),
(69, 'Charges liées aux opérations de restructuration', '833', 'Ce compte contient les charges encourues lors de la restructuration de l''entreprise, telles que les frais de licenciement ou les coûts de réorganisation.'),
(69, 'Pertes sur créances H.A.O.', '834', 'Ce compte enregistre les pertes sur créances résultant d''événements hors activités ordinaires, tels que des créances irrécouvrables provenant de tiers.'),
(69, 'Dons et libéralités accordés', '835', 'Ce compte contient la valeur des dons et des libéralités accordés par l''entreprise à des tiers, comme des œuvres de charité ou des contributions sociales.'),
(69, 'Abandons de créances consentis', '836', 'Ce compte enregistre les créances abandonnées volontairement par l''entreprise, souvent dans le cadre d''actions sociales ou de gestes commerciaux.'),
(69, 'Charges liées aux opérations de liquidation', '837', 'Ce compte contient les charges encourues lors de la liquidation de l''entreprise, telles que les frais juridiques ou les coûts de fermeture de sites.'),
(69, 'Charges pour dépréciations et provisions pour risques à court terme H.A.O.', '839', 'Ce compte enregistre les charges exceptionnelles constituées pour couvrir des risques identifiés à court terme hors activités ordinaires, tels que des litiges en cours ou des garanties à accorder aux clients.'),


-- 70 ----
(70, 'Produits H.A.O. constatés', '841', 'Ce compte enregistre les produits exceptionnels liés à des événements hors activités ordinaires, tels que des indemnités reçues ou des gains imprévus.'),
(70, 'Produits liés aux opérations de restructuration', '843', 'Ce compte contient les produits générés lors de la restructuration de l''entreprise, tels que les gains sur la vente d''actifs ou les indemnités de départ.'),
(70, 'Indemnités et subventions H.A.O. (entité agricole)', '844', 'Ce compte enregistre les indemnités et subventions exceptionnelles reçues par l''entreprise agricole pour des événements hors activités ordinaires.'),
(70, 'Dons et libéralités obtenus', '845', 'Ce compte contient la valeur des dons et des libéralités reçus par l''entreprise, comme des donations ou des legs.'),
(70, 'Abandons de créances obtenus', '846', 'Ce compte enregistre les créances abandonnées par des tiers au profit de l''entreprise, souvent dans le cadre de négociations ou d''accords commerciaux.'),
(70, 'Produits liés aux opérations de liquidation', '847', 'Ce compte contient les produits générés lors de la liquidation de l''entreprise, tels que les gains sur la vente d''actifs ou les récupérations de dettes.'),
(70, 'Transferts de charges H.A.O.', '848', 'Ce compte enregistre les transferts de charges exceptionnels liés à des événements hors activités ordinaires, comme des corrections comptables ou des ajustements de provisions.'),
(70, 'Reprises de charges pour dépréciations et provisions pour risques à court terme H.A.O.', '849', 'Ce compte contient les reprises de charges exceptionnelles pour dépréciations et provisions liées à des événements hors activités ordinaires, telles que des reprises de provisions pour litiges ou de provisions pour garanties. '),


-- 71 ----
(71, 'Dotations aux provisions réglementées', '851', 'Ce compte enregistre les dotations annuelles effectuées dans le cadre de provisions réglementées, telles que les provisions pour congés payés ou les provisions pour retraite.'),
(71, 'Dotations aux amortissements H.A.O.', '852', 'Ce compte contient les dotations annuelles spécifiques destinées à amortir les actifs affectés à des activités hors activités ordinaires de l''entreprise.'),
(71, 'Dotations aux dépréciations H.A.O.', '853', 'Ce compte enregistre les dotations annuelles spécifiques destinées à déprécier les actifs affectés à des activités hors activités ordinaires de l''entreprise.'),
(71, 'Dotations aux provisions pour risques et charges H.A.O.', '854', 'Ce compte contient les dotations annuelles spécifiques destinées à constituer des provisions pour couvrir des risques et des charges liés à des activités hors activités ordinaires de l''entreprise.'),
(71, 'Autres dotations H.A.O.', '858', 'Ce compte regroupe les autres dotations annuelles spécifiques effectuées dans le cadre des activités hors activités ordinaires de l''entreprise et qui ne sont pas couvertes par les comptes précédents.'),



-- 72 ----
(72, 'Reprises de provisions réglementées', '861', 'Ce compte enregistre les reprises annuelles effectuées dans le cadre des provisions réglementées, telles que les reprises de provisions pour congés payés ou les reprises de provisions pour retraite.'),
(72, 'Reprises d''amortissements H.A.O.', '862', 'Ce compte contient les reprises annuelles spécifiques effectuées dans le cadre des activités hors activités ordinaires de l''entreprise concernant les amortissements des actifs.'),
(72, 'Reprises de dépréciations H.A.O.', '863', 'Ce compte enregistre les reprises annuelles spécifiques effectuées dans le cadre des activités hors activités ordinaires de l''entreprise concernant les dépréciations des actifs.'),
(72, 'Reprises de provisions pour risques et charges H.A.O.', '864', 'Ce compte contient les reprises annuelles spécifiques effectuées dans le cadre des activités hors activités ordinaires de l''entreprise concernant les provisions pour risques et charges.'),
(72, 'Autres reprises H.A.O.', '868', 'Ce compte regroupe les autres reprises annuelles spécifiques effectuées dans le cadre des activités hors activités ordinaires de l''entreprise et qui ne sont pas couvertes par les comptes précédents.'),


-- 73 ----
(73, 'Participation légale aux bénéfices', '871', 'Ce compte enregistre la participation obligatoire des salariés aux bénéfices de l''entreprise, conformément aux dispositions légales en vigueur dans le pays où l''entreprise opère.'),
(73, 'Participation contractuelle aux bénéfices', '874', 'Ce compte enregistre la participation volontaire des salariés aux bénéfices de l''entreprise, selon les accords contractuels établis entre l''employeur et les employés.'),
(73, 'Autres participations', '878', 'Ce compte regroupe les autres formes de participation des salariés aux bénéfices de l''entreprise qui ne sont pas prévues par la législation ou par les accords contractuels.'),


-- 74 ----
(74, 'État', '881', 'Ce compte enregistre les sommes dues à l''État, telles que les impôts sur les bénéfices, les taxes, les droits d''enregistrement, ainsi que les sommes à recevoir de l''État, comme les subventions ou les remboursements de taxes.'),
(74, 'Collectivités publiques', '884', 'Ce compte enregistre les sommes dues aux collectivités publiques locales ou régionales, telles que les taxes foncières ou les taxes sur les salaires, ainsi que les sommes à recevoir de ces collectivités, comme les subventions ou les remboursements de taxes.'),
(74, 'Groupe', '886', 'Ce compte enregistre les transactions financières entre les différentes entités composant le groupe auquel appartient l''entreprise, telles que les transferts de fonds, les prêts ou les avances, ainsi que les sommes à recevoir ou à payer entre ces entités.'),
(74, 'Autres', '888', 'Ce compte regroupe les transactions financières avec des entités autres que l''État, les collectivités publiques ou les entités du groupe, telles que les autres entreprises, les associations ou les particuliers, ainsi que les sommes à recevoir ou à payer à ces entités.'),


-- 75 ----
(75, 'Impôts sur les bénéfices de l''exercice', '891', 'Ce compte enregistre le montant des impôts sur les bénéfices à payer pour l''exercice en cours, calculé sur la base du résultat fiscal de l''entreprise.'),
(75, 'Rappel d''impôts sur résultats antérieurs', '892', 'Ce compte enregistre les montants d''impôts à régulariser ou à payer pour des exercices antérieurs, suite à des rectifications fiscales ou des redressements effectués par l''administration fiscale.'),
(75, 'Impôt minimum forfaitaire (I.M.F.)', '895', 'Ce compte enregistre le montant de l''impôt minimum forfaitaire à payer, qui est une imposition calculée sur la base du chiffre d''affaires ou d''un autre critère défini par la législation fiscale, indépendamment du résultat fiscal de l''entreprise.'),
(75, 'Dégrèvements et annulations d''impôts sur résultats antérieurs', '899', 'Ce compte enregistre les montants d''impôts sur résultats antérieurs qui ont fait l''objet de dégrèvements ou d''annulations, suite à des décisions de justice ou à des accords avec l''administration fiscale.'),



-- 76 ----
(76, 'Engagements obtenus 901 à 904', '900', 'Ce compte regroupe les engagements contractés par l''entreprise vis-à-vis de tiers, notamment les engagements de financement, les engagements de garantie et les engagements réciproques.'),
(76, 'Engagements de financement obtenus', '901', 'Ce compte enregistre les engagements de financement obtenus par l''entreprise auprès de tiers, tels que des prêts bancaires, des lignes de crédit ou des emprunts obligataires.'),
(76, 'Engagements de garantie obtenus', '902', 'Ce compte regroupe les engagements de garantie obtenus par l''entreprise auprès de tiers, qui peuvent inclure des garanties accordées pour des emprunts contractés ou pour des transactions commerciales.'),
(76, 'Engagements réciproques', '903', 'Ce compte enregistre les engagements réciproques contractés par l''entreprise avec des tiers, qui impliquent des obligations mutuelles entre les parties concernées.'),
(76, 'Autres engagements obtenus', '904', 'Ce compte regroupe d''autres types d''engagements obtenus par l''entreprise auprès de tiers et qui ne sont pas spécifiquement liés aux financements ou aux garanties.'),
(76, 'Engagements de financement accordés', '905', 'Ce compte enregistre les engagements de financement accordés par l''entreprise à des tiers, tels que des prêts consentis ou des crédits octroyés.'),
(76, 'Engagements de garantie accordés', '906', 'Ce compte regroupe les engagements de garantie accordés par l''entreprise à des tiers, qui peuvent inclure des garanties fournies pour soutenir des tiers dans leurs transactions ou leurs activités commerciales.'),
(76, 'Engagements réciproques', '907', 'Ce compte enregistre les engagements réciproques accordés par l''entreprise à des tiers, impliquant des obligations mutuelles entre les parties concernées.'),
(76, 'Autres engagements accordés', '908', 'Ce compte regroupe d''autres types d''engagements accordés par l''entreprise à des tiers et qui ne sont pas spécifiquement liés aux financements ou aux garanties.'),



-- 77 ----
(77, 'Contrepartie des engagements obtenus', '901', 'Ce compte enregistre les contreparties des engagements de financement obtenus par l''entreprise auprès de tiers.'),
(77, 'Contrepartie des engagements obtenus', '902', 'Ce compte regroupe les contreparties des engagements de garantie obtenus par l''entreprise auprès de tiers.'),
(77, 'Contrepartie des engagements obtenus', '903', 'Ce compte enregistre les contreparties des engagements réciproques contractés par l''entreprise avec des tiers.'),
(77, 'Contrepartie des engagements obtenus', '904', 'Ce compte regroupe les contreparties des autres engagements obtenus par l''entreprise auprès de tiers.'),
(77, 'Contreparties des engagements', '911', 'Ce compte enregistre les contreparties des engagements de financement accordés par l''entreprise à des tiers.'),
(77, 'Contreparties des engagements', '912', 'Ce compte regroupe les contreparties des engagements de garantie accordés par l''entreprise à des tiers.'),
(77, 'Contreparties des engagements', '913', 'Ce compte enregistre les contreparties des engagements réciproques accordés par l''entreprise à des tiers.'),
(77, 'Contreparties des engagements', '914', 'Ce compte regroupe les contreparties des autres engagements accordés par l''entreprise à des tiers.'),
(77, 'Contrepartie des engagements accordés, 905 à 908', '915', 'Ce compte enregistre les contreparties des engagements de financement accordés par l''entreprise à des tiers.'),
(77, 'Contrepartie des engagements accordés, 905 à 908', '916', 'Ce compte regroupe les contreparties des engagements de garantie accordés par l''entreprise à des tiers.'),
(77, 'Contrepartie des engagements accordés, 905 à 908', '917', 'Ce compte enregistre les contreparties des engagements réciproques accordés par l''entreprise à des tiers.'),
(77, 'Contrepartie des engagements accordés, 905 à 908', '918', 'Ce compte regroupe les contreparties des autres engagements accordés par l''entreprise à des tiers.'),



-- 78 ----
Compte réfléchis




-- 79 ----
Compte de reclassement



-- 80 ----
Comptes de coûts

-- 81 ----
Comptes de stocks

-- 82 ----
Comptes de d''écarts sur coûts préétablis

-- 83 ----
Comptes de différences de traitement comptable


-- 84 ----
Comptes de résultats

-- 85 ----
Comptes de liaisons internes 




-- 86 ----
(86, 'Dotation non consomptible sans droit de reprise', '101', 'Ce compte enregistre les dotations constituées pour des charges non consomptibles sans droit de reprise ultérieure.'),
(86, 'Dotation non consomptible avec droit de reprise', '102', 'Ce compte regroupe les dotations constituées pour des charges non consomptibles avec droit de reprise ultérieure.'),
(86, 'Droit d''entrée', '103', 'Ce compte enregistre les droits d''entrée perçus par l''entreprise.'),
(86, 'Dotation consomptible', '104', 'Ce compte enregistre les dotations constituées pour des charges consomptibles.'),
(86, 'Écarts de réévaluation', '106', 'Ce compte regroupe les écarts de réévaluation constatés lors de la réévaluation des actifs.'),



-- 87 ----
(87, 'Réserves statutaires ou contractuelles', '112', 'Ce compte contient les montants réservés conformément aux dispositions légales, réglementaires ou contractuelles.'),
(87, 'Autres réserves', '118', 'Ce compte regroupe les montants réservés qui ne relèvent pas des réserves statutaires ou contractuelles, mais qui sont destinés à des fins spécifiques ou à renforcer la situation financière de l''entreprise.'),


-- 88 ----
(88, 'Report à nouveau des excédents', '121', 'Ce compte enregistre les excédents reportés d''exercices antérieurs, qui sont réaffectés dans le bilan de l''entreprise.'),
(88, 'Résultat net en instance d''affectation', '128', 'Ce compte représente le résultat net de l''entreprise qui est en attente d''affectation. Il est utilisé pour enregistrer les bénéfices ou les pertes qui doivent être distribués ou reportés.'),
(88, 'Report à nouveau des déficits', '129', 'Ce compte enregistre les déficits reportés d''exercices antérieurs, qui sont reportés dans le bilan de l''entreprise.'),



-- 89 ----
(89, 'Excédent de l''exercice', '131', 'Ce compte enregistre l''excédent de l''exercice en cours, représentant les bénéfices réalisés par l''entreprise après déduction de toutes les charges et impôts.'),
(89, 'Déficit de l''exercice', '139', 'Ce compte enregistre le déficit de l''exercice en cours, représentant les pertes subies par l''entreprise après prise en compte de toutes les charges et impôts.'),


-- 90 ----
(90, 'Subventions d''équipement', '141', 'Ce compte enregistre les subventions reçues par l''entreprise pour financer des investissements en équipements. Ces subventions sont généralement octroyées par des organismes publics ou des institutions pour soutenir le développement économique.'),



-- 91 ----
(91, 'Provisions spéciales de réévaluation', '154', 'Ce compte contient les provisions spéciales constituées lors de la réévaluation d''actifs, notamment des immobilisations corporelles et des immobilisations financières. Ces provisions sont établies pour refléter les écarts entre la valeur comptable précédente et la nouvelle valeur réévaluée des actifs concernés.'),
(91, 'Autres provisions réglementées et fonds assimilés', '158', 'Ce compte regroupe les provisions réglementées et les fonds assimilés qui sont constitués en conformité avec les réglementations en vigueur. Ces provisions peuvent inclure des provisions pour risques et charges spécifiques, telles que les provisions pour congés payés ou les provisions pour restructuration, ainsi que d''autres fonds destinés à des fins spécifiques, telles que les fonds de garantie ou les fonds de retraite du personnel.'),


-- 92 ----
(92, 'Fonds projet de développement -avances de fonds à justifier', '161', 'Ce compte enregistre les avances de fonds destinées à financer des projets de développement spécifiques. Les avances sont fournies par divers bailleurs de fonds ou organismes de financement et doivent être justifiées par des dépenses conformes aux objectifs du projet de développement.'),
(92, 'Fonds affectés aux investissements du projet de développement bailleurs de fonds', '162', 'Ce compte représente les fonds affectés aux investissements dans des projets de développement spécifiques, provenant de bailleurs de fonds. Ces fonds sont destinés à financer des initiatives visant à améliorer les conditions socio-économiques, telles que des programmes d''infrastructure ou des projets communautaires.'),
(92, 'Fonds affectés aux investissements du projet de développement l''Etat', '163', 'Ce compte enregistre les fonds affectés par l''État aux investissements dans des projets de développement. Ces fonds proviennent du budget de l''État et sont alloués à des initiatives visant à promouvoir la croissance économique, l''amélioration des services publics ou le développement social.'),
(92, 'Fonds affectés aux investissements des autres organismes de financement assimilés', '164', 'Ce compte contient les fonds affectés par d''autres organismes de financement assimilés aux investissements dans des projets de développement. Ces organismes peuvent inclure des institutions financières internationales, des fonds de développement régionaux ou d''autres entités fournissant un soutien financier pour des initiatives de développement.'),
(92, 'Fonds affectés à un projet spécifique', '165', 'Ce compte enregistre les fonds affectés à un projet spécifique de développement. Ces fonds sont réservés pour financer des programmes ou des initiatives particuliers, qui peuvent être liés à des secteurs spécifiques, des régions géographiques ou des objectifs de développement particuliers.'),
(92, 'Fonds provenant de dons et legs d''immobilisations', '167', 'Ce compte représente les fonds provenant de dons et de legs spécifiquement destinés à l''acquisition ou au développement d''immobilisations. Ces dons peuvent provenir de particuliers, d''organisations caritatives ou d''autres entités et sont utilisés pour financer des projets tels que la construction d''infrastructures ou l''achat d''équipements.'),
(92, 'Autres fonds affectés', '168', 'Ce compte contient d''autres fonds spécifiquement affectés à des fins particulières, mais qui ne sont pas classés dans les catégories précédentes. Ces fonds peuvent inclure des subventions gouvernementales pour des projets spécifiques, des contributions de partenaires de développement ou d''autres formes de financement dédiées à des initiatives particulières.'),
(92, 'Fonds affectés à recevoir', '169', 'Ce compte enregistre les fonds affectés qui sont attendus ou à recevoir dans un avenir proche. Ces fonds peuvent provenir de diverses sources, telles que des engagements de bailleurs de fonds, des promesses de dons ou des transferts gouvernementaux, et sont prévus pour être utilisés à des fins spécifiques conformément aux conditions de financement.'),



-- 93 ----
(93, 'Donation temporaire d''usufruit', '171', 'Ce compte enregistre les donations temporaires d''usufruit, où le donateur accorde temporairement le droit d''utiliser et de percevoir les revenus d''un actif à un bénéficiaire, sans transfert de propriété. Cette donation peut être accordée pour une durée déterminée et expire à l''échéance spécifiée.'),
(93, 'Donation et legs non encore reçus d''immobilisations destinées à la vente', '172', 'Ce compte représente les donations et legs qui ont été promis ou légués à l''entité, mais qui n''ont pas encore été reçus, et qui sont destinés à être utilisés pour acquérir des immobilisations destinées à la vente. Ces dons peuvent provenir de particuliers, d''organisations caritatives ou d''autres entités et sont prévus pour financer des projets spécifiques ou soutenir les activités de l''entité.'),



-- 94 ----
(94, 'Emprunts obligataires', '181', 'Ce compte enregistre les emprunts contractés par l''entité sous forme d''obligations émises sur le marché financier. Ces obligations représentent des dettes à long terme de l''entité envers les investisseurs obligataires, qui sont généralement remboursées à l''échéance spécifiée avec des intérêts périodiques.'),
(94, 'Emprunts et dettes auprès des établissements de crédit', '182', 'Ce compte représente les emprunts et les dettes contractés par l''entité auprès des établissements de crédit tels que les banques commerciales et autres institutions financières. Ces dettes peuvent prendre la forme de prêts à court, moyen ou long terme et peuvent être utilisées pour financer diverses activités de l''entité.'),
(94, 'Avances reçues de l''''Etat', '183', 'Ce compte enregistre les avances financières reçues de l''''État ou des autorités gouvernementales. Ces avances sont souvent accordées pour financer des projets spécifiques ou pour fournir un soutien financier temporaire à l''''entité.'),
(94, 'Dépôts et cautionnements reçus', '185', 'Ce compte représente les dépôts et cautionnements reçus par l''''entité dans le cadre de transactions commerciales ou contractuelles. Ces dépôts sont généralement remboursables à l''''expiration du contrat ou lors de la réalisation des conditions convenues entre les parties.'),
(94, 'Intérêts courus', '186', 'Ce compte enregistre les intérêts accumulés mais non encore payés sur les dettes de l''''entité. Ces intérêts courus représentent une obligation future de l''''entité envers ses créanciers et sont généralement comptabilisés comme une charge dans les états financiers.'),
(94, 'Dettes de location-acquisition', '187', 'Ce compte représente les obligations contractées par l''''entité dans le cadre de contrats de location-acquisition, où l''''entité loue un actif avec une option d''''achat à la fin de la période de location. Ces dettes sont généralement traitées comme des passifs à long terme dans les états financiers de l''''entité.'),



-- 95 ----
(95, 'Provisions pour litiges', '191', 'Ce compte enregistre les provisions constituées par l''entité pour couvrir les coûts potentiels associés à des litiges en cours ou anticipés. Ces litiges peuvent résulter de différends commerciaux, de responsabilités légales ou d''autres situations où l''entité est impliquée dans des procédures judiciaires.'),
(95, 'Provision pour charges sur donations et legs', '192', 'Ce compte représente les provisions constituées par l''entité pour couvrir les coûts potentiels associés à des charges futures sur les donations et legs reçus. Ces provisions sont établies en fonction des estimations de l''entité concernant les obligations futures découlant des donations et legs.'),
(95, 'Provisions pour pertes de change', '194', 'Ce compte enregistre les provisions établies par l''entité pour couvrir les pertes potentielles résultant de fluctuations défavorables des taux de change. Ces provisions sont constituées pour atténuer l''impact négatif des variations de change sur les transactions en devises étrangères.'),
(95, 'Provisions pour pensions et obligations similaires', '196', 'Ce compte représente les provisions constituées par l''entité pour couvrir les obligations futures liées aux régimes de retraite et autres avantages du personnel. Ces provisions sont établies en fonction des obligations estimées de l''entité envers ses employés pour les prestations de retraite et autres avantages sociaux.'),
(95, 'Autres provisions pour risques et charges', '198', 'Ce compte enregistre les provisions constituées par l''entité pour couvrir d''autres risques et charges potentiels qui ne sont pas spécifiquement couverts par d''autres comptes de provisions. Ces provisions sont établies en fonction des estimations de l''entité concernant les obligations futures.'),



-- 96 ----
(96, 'Immobilisations incorporelles', '201', 'Ce compte enregistre la valeur des actifs incorporels détenus par l''entité, tels que les brevets, les licences, les marques de commerce et les logiciels. Les immobilisations incorporelles sont des actifs non physiques qui ont une valeur économique pour l''entité et peuvent contribuer à sa performance future.'),
(96, 'Terrains', '202', 'Ce compte représente la valeur des terrains détenus par l''entité et utilisés dans ses activités commerciales. Les terrains sont des actifs fixes qui ne sont pas sujets à l''amortissement car leur valeur est considérée comme durable et non dépréciable.'),
(96, 'Bâtiments', '203', 'Ce compte enregistre la valeur des bâtiments détenus par l''entité et utilisés dans ses activités commerciales. Les bâtiments sont des actifs fixes qui sont généralement soumis à l''amortissement car leur valeur diminue avec le temps en raison de l''usure et de l''obsolescence.'),
(96, 'Matériels', '204', 'Ce compte représente la valeur des équipements et des machines détenus par l''entité et utilisés dans ses opérations commerciales. Les matériels comprennent une gamme d''actifs physiques tels que des machines, des outils et des véhicules utilisés pour la production ou la prestation de services.'),
(96, 'Titres de participations', '205', 'Ce compte enregistre la valeur des participations détenues par l''entité dans d''autres sociétés. Les titres de participations représentent des investissements à long terme dans des entreprises où l''entité détient une participation significative et exerce une influence sur les décisions de gestion.'),



-- 97 ----
(97, 'Brevets, licences, concessions et droits similaires', '212', 'Ce compte représente la valeur des brevets, des licences, des concessions et des droits similaires détenus par l''entité. Ces actifs incorporels sont souvent acquis par l''entité pour protéger ses inventions, ses processus ou ses droits d''utilisation de propriété intellectuelle.'),
(97, 'Logiciels et sites internet', '213', 'Ce compte enregistre la valeur des logiciels et des sites internet détenus par l''entité. Les logiciels et les sites internet sont des actifs incorporels qui ont une valeur économique pour l''entité et peuvent contribuer à ses activités opérationnelles, de marketing ou de communication.'),
(97, 'Marques', '214', 'Ce compte représente la valeur des marques détenues par l''entité. Les marques sont des actifs incorporels qui représentent la réputation, la notoriété et la valeur de la marque de l''entité sur le marché. Elles peuvent inclure des marques déposées, des marques commerciales ou des noms commerciaux.'),
(97, 'Autres droits et valeurs incorporels', '218', 'Ce compte enregistre la valeur des autres droits et valeurs incorporels détenus par l''entité, qui ne sont pas spécifiquement couverts par d''autres comptes. Il peut s''agir, par exemple, de droits de propriété littéraire et artistique, de droits de propriété industrielle ou de droits contractuels.'),
(97, 'Immobilisations incorporelles en cours', '219', 'Ce compte représente la valeur des immobilisations incorporelles en cours de développement ou de construction par l''entité. Il s''agit généralement de projets en cours qui ne sont pas encore achevés ou qui n''ont pas encore été mis en service.'),



-- 98 ----
(98, 'Terrains agricoles et forestiers', '221', 'Ce compte représente la valeur des terrains détenus par l''entité à des fins agricoles ou forestières. Il peut inclure des terres utilisées pour la culture de cultures agricoles, l''élevage du bétail ou la plantation d''arbres à des fins commerciales.'),
(98, 'Terrains nus', '222', 'Ce compte enregistre la valeur des terrains détenus par l''entité qui ne sont pas développés ou utilisés. Ces terrains peuvent être acquis en vue de projets futurs ou comme investissement.'),
(98, 'Terrains bâtis', '223', 'Ce compte représente la valeur des terrains détenus par l''entité sur lesquels des bâtiments ou des structures ont été construits. Il peut inclure des terrains utilisés pour les installations industrielles, commerciales ou résidentielles.'),
(98, 'Travaux de mise en valeur des terrains', '224', 'Ce compte enregistre les coûts engagés par l''entité pour mettre en valeur des terrains acquis. Il peut inclure des dépenses telles que la préparation du sol, la construction de routes d''accès ou l''installation de services publics.'),
(98, 'Terrains aménagés', '226', 'Ce compte représente la valeur des terrains détenus par l''entité qui ont été aménagés ou améliorés pour répondre à des besoins spécifiques. Il peut inclure des terrains équipés de services publics, de parkings ou d''autres installations.'),
(98, 'Autres terrains', '228', 'Ce compte enregistre la valeur des terrains détenus par l''entité qui ne sont pas spécifiquement couverts par d''autres comptes. Il peut s''agir, par exemple, de terrains acquis pour des projets de développement futurs ou pour des besoins de stockage.'),
(98, 'Aménagements de terrains en cours', '229', 'Ce compte représente la valeur des aménagements de terrains en cours de développement ou de construction par l''entité. Il peut inclure des projets d''aménagement tels que l''installation de services, la préparation du sol ou la construction de routes.'),




-- 99 ----
(99, 'Bâtiments industriels, agricoles, administratifs, commerciaux, religieux et autres sur sol propre', '231', 'Ce compte enregistre la valeur des bâtiments détenus par l''entité et construits sur des terrains appartenant à l''entité elle-même. Il peut inclure des bâtiments utilisés à des fins industrielles, agricoles, administratives, commerciales, religieuses ou autres.'),
(99, 'Bâtiments industriels, agricoles, administratifs, commerciaux, religieux et autres sur sol d''autrui', '232', 'Ce compte représente la valeur des bâtiments détenus par l''entité mais construits sur des terrains appartenant à des tiers. Il peut inclure des bâtiments loués ou utilisés dans le cadre de contrats de location.'),
(99, 'Ouvrages d''infrastructure', '233', 'Ce compte enregistre la valeur des ouvrages d''infrastructure détenus par l''entité. Il peut inclure des ponts, des routes, des tunnels, des réseaux d''adduction d''eau, des réseaux d''assainissement ou d''autres infrastructures similaires.'),
(99, 'Aménagements, agencements et installations techniques', '234', 'Ce compte représente la valeur des aménagements, agencements et installations techniques détenus par l''entité. Il peut inclure des aménagements intérieurs, des équipements de production, des installations de chauffage, de ventilation, de climatisation ou d''autres équipements techniques.'),
(99, 'Aménagements de bureaux et assimilés', '235', 'Ce compte enregistre la valeur des aménagements spécifiques réalisés dans des bureaux ou des locaux assimilés. Il peut inclure des aménagements tels que des cloisons, des équipements de bureau, des installations électriques ou des systèmes de communication.'),
(99, 'Autres installations et agencements', '238', 'Ce compte représente la valeur des installations et agencements détenus par l''entité qui ne sont pas spécifiquement couverts par d''autres comptes. Il peut s''agir, par exemple, d''installations de loisirs, d''agencements paysagers ou d''autres équipements.'),
(99, 'Bâtiments, aménagements, agencements et installations techniques en cours', '239', 'Ce compte enregistre la valeur des bâtiments, aménagements, agencements et installations techniques en cours de développement ou de construction par l''entité. Il peut inclure des projets de construction de nouveaux bâtiments, d''aménagements intérieurs ou d''installations techniques.'),




-- 100 ----
(100, 'Matériel et outillage industriel et commercial', '241', 'Ce compte enregistre la valeur du matériel et de l''outillage utilisés dans les activités industrielles et commerciales de l''entité. Il peut inclure des machines, des équipements de production, des outils et d''autres équipements utilisés dans le processus de fabrication ou de vente.'),
(100, 'Matériel et outillage agricole', '242', 'Ce compte représente la valeur du matériel et de l''outillage utilisés dans les activités agricoles de l''entité. Il peut inclure des tracteurs, des équipements de labour, des outils agricoles et d''autres équipements utilisés dans la production agricole.'),
(100, 'Matériel d''emballage récupérable et identifiable', '243', 'Ce compte enregistre la valeur du matériel d''emballage qui peut être récupéré et identifié après utilisation. Il peut inclure des emballages réutilisables tels que des caisses en bois, des palettes ou des conteneurs.'),
(100, 'Matériel et mobilier', '244', 'Ce compte représente la valeur du matériel et du mobilier utilisés dans les bureaux et les locaux de l''entité. Il peut inclure des bureaux, des chaises, des armoires, des étagères, des ordinateurs et d''autres équipements de bureau.'),
(100, 'Matériel de transport', '245', 'Ce compte enregistre la valeur du matériel de transport détenu par l''entité. Il peut inclure des véhicules automobiles, des camions, des avions, des navires ou d''autres moyens de transport utilisés dans les opérations commerciales.'),
(100, 'Actifs biologiques', '246', 'Ce compte représente la valeur des actifs biologiques détenus par l''entité, tels que des cultures vivrières, des plantations d''arbres fruitiers ou des troupeaux d''animaux. Ces actifs sont utilisés dans les activités agricoles ou de production alimentaire.'),
(100, 'Agencements, aménagements du matériel et des actifs biologiques', '247', 'Ce compte enregistre la valeur des agencements et des aménagements réalisés sur le matériel et les actifs biologiques détenus par l''entité. Il peut inclure des modifications apportées aux équipements pour améliorer leur fonctionnement ou leur efficacité.'),
(100, 'Autres matériels et mobilier', '248', 'Ce compte représente la valeur d''autres matériels et mobilier détenus par l''entité qui ne sont pas spécifiquement couverts par d''autres comptes. Il peut inclure divers équipements ou outils utilisés dans les opérations commerciales.'),
(100, 'Matériels et actifs biologiques en cours', '249', 'Ce compte enregistre la valeur des matériels et actifs biologiques en cours d''acquisition ou de développement par l''entité. Il peut inclure des équipements commandés mais non encore livrés, ainsi que des cultures ou des troupeaux en cours de croissance.'),




-- 101 ----
(101, 'Avances et acomptes versés sur immobilisations incorporelles', '251', 'Ce compte enregistre les avances et acomptes versés pour l''acquisition ou la construction d''immobilisations incorporelles, telles que des brevets, des licences ou des logiciels. Ces avances sont comptabilisées avant la réception ou la finalisation de l''immobilisation correspondante.'),
(101, 'Avances et acomptes versés sur immobilisations corporelles', '252', 'Ce compte représente les avances et acomptes versés pour l''acquisition ou la construction d''immobilisations corporelles, telles que des terrains, des bâtiments ou des équipements. Ces avances sont comptabilisées avant la réception ou la finalisation de l''immobilisation correspondante.'),



-- 102 ----
(102, 'Titres de participation', '261', 'Ce compte enregistre la valeur des titres détenus par l''entreprise et représentant une participation dans le capital d''autres sociétés. Ces participations sont généralement détenues dans une perspective de contrôle ou d''influence significative sur les activités de ces sociétés.'),
(102, 'Participations dans des organismes professionnels', '265', 'Ce compte concerne les participations détenues par l''entreprise dans des organismes professionnels, tels que des chambres de commerce, des associations professionnelles ou des syndicats. Ces participations peuvent être détenues pour représenter les intérêts de l''entreprise dans ces organismes ou pour bénéficier de certains avantages.'),
(102, 'Parts dans les groupements d''intérêt économique (G.I.E)', '266', 'Ce compte concerne les parts détenues par l''entreprise dans les groupements d''intérêt économique (G.I.E). Les G.I.E sont des structures juridiques qui permettent à des entreprises de collaborer dans le cadre de projets spécifiques tout en conservant leur autonomie juridique.'),
(102, 'Autres titres de participation', '268', 'Ce compte regroupe les autres titres de participation détenus par l''entreprise qui ne rentrent pas dans les catégories précédentes. Il peut s''agir de participations dans des sociétés non cotées en bourse ou dans des entités dont l''activité principale ne correspond pas aux autres catégories de participations.'),


-- 103 ----
(103, 'Prêts et créances', '271', 'Ce compte enregistre les prêts et créances consentis par l''entreprise à des tiers. Il inclut notamment les sommes dues par des clients, des fournisseurs ou d''autres débiteurs en raison de transactions commerciales ou financières.'),
(103, 'Prêts au personnel', '272', 'Ce compte concerne les prêts consentis par l''entreprise à son personnel. Ces prêts peuvent être accordés à des conditions avantageuses ou à des fins spécifiques, telles que l''acquisition de logement ou le financement d''études.'),
(103, 'Créances sur l''Etat', '273', 'Ce compte regroupe les créances détenues par l''entreprise sur l''Etat, notamment les montants dus au titre de taxes, impôts, subventions ou autres créances résultant de transactions avec les administrations publiques.'),
(103, 'Titres immobilisés', '274', 'Ce compte concerne les titres détenus par l''entreprise à des fins d''investissement à long terme. Il peut s''agir notamment de titres de participation, d''obligations ou d''actions de sociétés.'),
(103, 'Dépôts et cautionnements versés', '275', 'Ce compte enregistre les sommes versées par l''entreprise à titre de dépôts ou de cautionnements, par exemple pour garantir l''exécution d''un contrat ou pour obtenir un permis ou une licence.'),
(103, 'Intérêts courus', '276', 'Ce compte concerne les intérêts qui sont dus mais qui n''ont pas encore été payés ou reçus à la date de clôture de l''exercice. Il s''agit des intérêts qui ont été générés mais qui n''ont pas encore été comptabilisés.'),
(103, 'Immobilisations financières diverse', '278', 'Ce compte regroupe les autres immobilisations financières détenues par l''entreprise qui ne rentrent pas dans les catégories précédentes. Il peut s''agir par exemple de prêts consentis à des filiales ou à des partenaires commerciaux.'),


-- 104 ----
(104, 'Amortissements d''usufruit temporaire', '280', 'Ce compte enregistre les amortissements comptables liés à l''usufruit temporaire sur des actifs détenus par l''entreprise. L''usufruit temporaire est un droit réel conférant à son titulaire le droit d''user et de jouir de l''actif pour une durée limitée.'),
(104, 'Amortissements des immobilisations incorporelles', '281', 'Ce compte concerne les amortissements comptables appliqués aux immobilisations incorporelles détenues par l''entreprise. Les immobilisations incorporelles comprennent notamment les brevets, les licences, les marques et les logiciels.'),
(104, 'Amortissements des terrains', '282', 'Ce compte enregistre les amortissements comptables applicables aux terrains détenus par l''entreprise. Contrairement aux autres types d''immobilisations, les terrains ne sont pas amortissables selon les principes comptables généralement admis.'),
(104, 'Amortissements des bâtiments, installations techniques et agencements', '283', 'Ce compte concerne les amortissements comptables relatifs aux bâtiments, aux installations techniques et aux agencements détenus par l''entreprise. Ces amortissements représentent la dépréciation progressive de la valeur de ces actifs.'),
(104, 'Amortissements du matériel', '284', 'Ce compte enregistre les amortissements comptables appliqués au matériel détenu par l''entreprise. Le matériel comprend notamment les équipements, les machines, les outils et les véhicules utilisés dans le cadre de l''activité commerciale ou industrielle de l''entreprise.'),



-- 105 ----
(105, 'Dépréciations des immobilisations destinées à la vente provenant de dons et legs non encore reçus et d''usufruit temporaire', '290', 'Ce compte enregistre les dépréciations comptables appliquées aux immobilisations destinées à la vente qui proviennent de dons et legs non encore reçus ainsi que d''usufruit temporaire. Ces dépréciations reflètent la diminution de la valeur de ces actifs par rapport à leur valeur comptable initiale.'),
(105, 'Dépréciations des immobilisations incorporelles', '291', 'Ce compte concerne les dépréciations comptables appliquées aux immobilisations incorporelles détenues par l''entreprise. Les dépréciations sont constatées lorsque la valeur recouvrable d''une immobilisation est estimée être inférieure à sa valeur comptable nette.'),
(105, 'Dépréciations des terrains', '292', 'Ce compte enregistre les dépréciations comptables appliquées aux terrains détenus par l''entreprise. Les dépréciations sont constatées lorsque la valeur recouvrable d''un terrain est estimée être inférieure à sa valeur comptable nette.'),
(105, 'Dépréciations des bâtiments, installations techniques et agencements', '293', 'Ce compte concerne les dépréciations comptables appliquées aux bâtiments, installations techniques et agencements détenus par l''entreprise. Les dépréciations sont constatées lorsque la valeur recouvrable de ces actifs est estimée être inférieure à leur valeur comptable nette.'),
(105, 'Dépréciations de matériel, du mobilier et de l''actif biologique', '294', 'Ce compte enregistre les dépréciations comptables appliquées au matériel, au mobilier et à l''actif biologique détenus par l''entreprise. Les dépréciations sont constatées lorsque la valeur recouvrable de ces actifs est estimée être inférieure à leur valeur comptable nette.'),
(105, 'Dépréciations des avances et acomptes versés sur immobilisations', '295', 'Ce compte concerne les dépréciations comptables appliquées aux avances et acomptes versés sur immobilisations. Les dépréciations sont constatées lorsque la valeur recouvrable des immobilisations acquises à l''aide de ces avances et acomptes est estimée être inférieure à leur valeur comptable nette.'),
(105, 'Dépréciations des titres de participations', '296', 'Ce compte enregistre les dépréciations comptables appliquées aux titres de participations détenus par l''entreprise. Les dépréciations sont constatées lorsque la valeur recouvrable de ces titres est estimée être inférieure à leur valeur comptable nette.'),
(105, 'Dépréciations des autres immobilisations financières', '297', 'Ce compte concerne les dépréciations comptables appliquées aux autres immobilisations financières détenues par l''entreprise. Les dépréciations sont constatées lorsque la valeur recouvrable de ces actifs est estimée être inférieure à leur valeur comptable nette.'),



-- 106 ----
(106, 'Biens liés à l''activité A', '311', 'Cette catégorie de comptes concerne les biens et les actifs spécifiquement utilisés dans le cadre de l''activité A de l''entreprise, tels que les équipements, les matériels, ou les locaux dédiés à cette activité.'),
(106, 'Biens liés à l''activité B', '312', 'Cette catégorie de comptes concerne les biens et les actifs spécifiquement utilisés dans le cadre de l''activité B de l''entreprise, tels que les équipements, les matériels, ou les locaux dédiés à cette activité.'),



-- 107 ----
(107, 'Marchandises A', '321', 'Ce compte représente les marchandises spécifiquement liées à l''activité A de l''entreprise, généralement destinées à la revente.'),
(107, 'Marchandises B', '322', 'Ce compte représente les marchandises spécifiquement liées à l''activité B de l''entreprise, généralement destinées à la revente.'),
(107, 'Matières A', '323', 'Ce compte représente les matières premières spécifiquement utilisées dans le cadre de l''activité A de l''entreprise, avant leur transformation.'),
(107, 'Matières B', '324', 'Ce compte représente les matières premières spécifiquement utilisées dans le cadre de l''activité B de l''entreprise, avant leur transformation.'),
(107, 'Fournitures liées (A, B)', '325', 'Ce compte représente les fournitures qui sont utilisées à la fois dans le cadre de l''activité A et de l''activité B de l''entreprise.'),


-- 108 ----
(108, 'Matières consommables', '331', 'Ce compte représente les matières qui sont utilisées dans le processus de production et qui sont entièrement consommées.'),
(108, 'Fournitures de magasin', '333', 'Ce compte représente les fournitures utilisées dans les magasins de l''entreprise.'),
(108, 'Fournitures de bureau', '334', 'Ce compte représente les fournitures utilisées dans les bureaux de l''entreprise, telles que le papier, les stylos, etc.'),
(108, 'Emballages', '335', 'Ce compte représente les matériaux d''emballage utilisés pour conditionner les produits finis de l''entreprise.'),
(108, 'Autres matières', '338', 'Ce compte représente d''autres types de matières utilisées dans l''entreprise qui ne sont pas spécifiquement catégorisées ailleurs.'),


-- 109 ----
(109, 'Dons en nature non affectés', '341', 'Ce compte représente les dons reçus sous forme de biens matériels qui ne sont pas spécifiquement destinés à un projet ou une activité particulière de l''entreprise.'),
(109, 'Dons en nature affectés', '345', 'Ce compte représente les dons reçus sous forme de biens matériels qui sont spécifiquement destinés à un projet ou une activité particulière de l''entreprise.'),


-- 110 ----
Produits et services en cours



-- 111 ----
(111, 'Actifs biologiques', '363', 'Ce compte représente les actifs biologiques détenus par l''entreprise, tels que les cultures, le bétail ou les arbres destinés à la production agricole ou forestière.'),


-- 112 ----
(112, 'Biens liés à l''activité en cours de route', '371', 'Ce compte concerne les biens en transit ou en cours de transport liés à l''activité de l''entreprise, qui n''ont pas encore atteint leur destination finale.');
(112, 'Marchandises, matières premières et fournitures liés en cours de route', '372', 'Ce compte englobe les marchandises, les matières premières et les fournitures qui sont en cours de transport vers l''entreprise mais n''ont pas encore été réceptionnées.');
(112, 'Autres approvisionnements en cours de route', '373', 'Il s''agit d''autres types d''approvisionnements ou de biens en cours de transport vers l''entreprise, tels que les équipements ou les fournitures non directement liés à la production.');
(112, 'Produits finis en cours de route', '376', 'Ce compte concerne les produits finis qui sont en cours de transport vers les clients ou les points de vente, mais qui n''ont pas encore été livrés.');
(112, 'Stock en consignation ou en dépôt', '377', 'Ce compte représente les biens détenus en consignation ou en dépôt par l''entreprise pour le compte de tiers, mais qui ne sont pas encore en sa possession définitive.');
(112, 'Stock provenant d''immobilisations mises hors services ou au rebut', '378', 'Il s''agit de biens provenant d''immobilisations (matériels, machines, équipements) qui ont été retirés du service ou mis au rebut et sont en attente de leur disposition finale.'),



-- 113 ----
(113, 'non affectés', '381', 'Ce compte concerne les dons en nature qui sont reçus par l''entreprise sans affectation spécifique à un projet ou une activité particulière.'),
(113, 'Affectés', '385', 'Il s''agit des dons en nature qui sont reçus par l''entreprise avec une affectation spécifique à un projet ou une activité déterminée.'),



-- 114 ----
(114, 'Dépréciations des stocks de biens liés à l''activité', '391', 'Ce compte enregistre les dépréciations des stocks de biens directement liés à l''activité principale de l''entreprise, tels que les marchandises, les matières premières et les fournitures liées.'),
(114, 'Dépréciations des stocks de marchandises, et matières premières et fournitures liées', '392', 'Il enregistre les dépréciations spécifiquement sur les stocks de marchandises, matières premières et fournitures liées.'),
(114, 'Dépréciations des stocks d''autres approvisionnements', '393', 'Ce compte concerne les dépréciations des stocks d''autres approvisionnements, distincts des marchandises, matières premières et fournitures liées.'),
(114, 'Dépréciations des stocks de produits finis, produits intermédiaires et résiduels', '396', 'Il enregistre les dépréciations spécifiquement sur les stocks de produits finis, produits intermédiaires et résiduels.'),
(114, 'Dépréciations des stocks en cours de route, en consignation ou en dépôt', '397', 'Ce compte enregistre les dépréciations des stocks en cours de route, en consignation ou en dépôt, c''est-à-dire ceux qui ne sont pas encore intégrés au stock principal de l''entreprise.'),



-- 115 ----
(115, 'Fournisseurs, dettes en compte', '401', 'Ce compte enregistre les dettes dues aux fournisseurs pour lesquelles aucune traite ou effet à payer n''est émis.'),
(115, 'Fournisseurs, effets à payer', '402', 'Il enregistre les dettes dues aux fournisseurs pour lesquelles des traites ou effets de commerce sont émis.'),
(115, 'Fournisseurs, factures non parvenues', '408', 'Ce compte concerne les charges déjà engagées mais non encore facturées par les fournisseurs à la date de clôture de l''exercice.'),
(115, 'Fournisseurs débiteurs', '409', 'Ce compte enregistre les montants dus par les fournisseurs à l''entreprise en cas de retours de marchandises ou d''avantages accordés par ces fournisseurs.'),


-- 116 ----
(116, 'Adhérents', '411', 'Ce compte enregistre les montants dus par les membres ou adhérents de l''entreprise, tels que des cotisations ou des contributions.'),
(116, 'Clients-usagers', '412', 'Il enregistre les montants dus par les clients ou usagers pour des biens ou services fournis par l''entreprise.'),
(116, 'Adhérents, clients-usagers, chèques, effets et autres valeurs impayés', '413', 'Ce compte concerne les montants dus par les membres, clients ou usagers de l''entreprise qui n''ont pas encore été encaissés, soit en raison de chèques ou d''effets non encore honorés, soit pour d''autres valeurs impayées.'),
(116, 'Créances, adhérents, clients-usagers litigieuses ou douteuses', '416', 'Il enregistre les montants dus par les membres, clients ou usagers dont le recouvrement est incertain en raison de litiges ou de doutes sur leur solvabilité.'),
(116, 'Adhérents, Clients-usagers créditeurs', '419', 'Ce compte concerne les montants que les membres, clients ou usagers doivent à l''entreprise en cas de remboursement, de retour de marchandises ou d''autres crédits.'),


-- 117 ----
(117, 'Personnel, avances et acomptes', '421', 'Ce compte enregistre les avances et les acomptes versés au personnel pour des dépenses futures ou des salaires anticipés.'),
(117, 'Personnel, rémunérations dues', '422', 'Il enregistre les salaires et les autres rémunérations qui sont dus au personnel mais qui n''ont pas encore été payés.'),
(117, 'Personnel, oppositions, saisies arrêts', '423', 'Ce compte concerne les montants saisis sur les salaires ou les autres rémunérations du personnel en raison d''oppositions ou de saisies arrêts.'),
(117, 'Personnel, œuvres, sociales internes', '424', 'Il enregistre les montants alloués par l''entreprise pour financer des œuvres sociales internes au profit du personnel, telles que des activités culturelles, sportives ou de loisirs.'),
(117, 'Représentants du personnel', '425', 'Ce compte concerne les montants alloués aux représentants du personnel pour leurs activités au sein de l''entreprise, comme les délégués du personnel ou les membres du comité d''entreprise.'),
(117, 'Personnel-dépôts', '427', 'Il enregistre les montants déposés par le personnel à titre de caution ou de garantie, tels que des dépôts de clés ou des cautionnements.'),
(117, 'Personnel, charges à payer et produits à recevoir', '428', 'Ce compte enregistre les charges sociales dues par l''entreprise sur les salaires et autres rémunérations du personnel, ainsi que les produits à recevoir correspondants.'),


-- 118 ----
(118, 'Sécurité sociale', '431', 'Ce compte concerne les montants dus à la sécurité sociale pour les cotisations sociales prélevées sur les salaires et autres rémunérations versées par l''entreprise.'),
(118, 'Caisses de retraite', '432', 'Il enregistre les montants dus aux caisses de retraite pour les cotisations de retraite prélevées sur les salaires et autres rémunérations versées par l''entreprise.'),
(118, 'Autres organismes sociaux', '433', 'Ce compte concerne les montants dus à d''autres organismes sociaux pour des cotisations ou contributions obligatoires autres que celles relatives à la sécurité sociale ou aux caisses de retraite.'),
(118, 'Organismes sociaux, charges à payer et produits à recevoir', '438', 'Ce compte enregistre les charges sociales dues par l''entreprise sur les salaires et autres rémunérations du personnel, ainsi que les produits à recevoir correspondants pour les sommes encaissées d''avance.'),



-- 119 ----
(119, 'État, autres impôts et taxes', '442', 'Ce compte concerne les montants dus à l''État pour d''autres impôts et taxes que ceux spécifiquement liés à la TVA ou à la retenue à la source.'),
(119, 'État, T.V.A. Facturée', '443', 'Il enregistre le montant de la TVA facturée par l''entreprise sur ses ventes de biens ou de services.'),
(119, 'État, T.V.A. due ou crédit de T.V.A.', '444', 'Ce compte enregistre la TVA due à l''État sur les ventes (TVA collectée) ou le crédit de TVA à reporter sur la période suivante (TVA déductible).'),
(119, 'État, T.V.A. Récupérable', '445', 'Il enregistre le montant de la TVA que l''entreprise peut récupérer sur ses achats de biens et services, c''est-à-dire la TVA payée sur ses dépenses (TVA déductible).'),
(119, 'État, autres taxes sur le chiffre d''affaires', '446', 'Ce compte concerne les montants dus à l''État pour d''autres taxes directement liées au chiffre d''affaires de l''entreprise.'),
(119, 'État, impôts retenus à la source', '447', 'Il enregistre les montants d''impôts prélevés à la source sur les revenus versés par l''entreprise, tels que l''impôt sur le revenu ou la contribution sociale généralisée (CSG).'),
(119, 'ÉTat, charges à payer produits à recevoir', '448', 'Ce compte enregistre les charges fiscales dues par l''entreprise et les produits fiscaux à recevoir correspondants pour les sommes encaissées d''avance.'),
(119, 'État, créances et dettes diverses', '449', 'Ce compte concerne les créances et dettes de l''entreprise envers l''État qui ne sont pas liées à des impôts ou taxes spécifiques, telles que des pénalités, des amendes ou des remboursements.'),


-- 120 ----
(120, 'Association et assimilées', '451', 'Ce compte concerne les montants dus par l''entreprise à des associations ou organisations à but non lucratif.'),
(120, 'Fondations et assimilées', '452', 'Il enregistre les montants dus par l''entreprise à des fondations ou organisations similaires à but non lucratif.'),
(120, 'Ordres professionnels', '453', 'Ce compte concerne les montants dus par l''entreprise à des ordres professionnels, tels que les barreaux d''avocats ou les chambres de commerce.'),
(120, 'Organisations politiques', '454', 'Il enregistre les montants dus par l''entreprise à des organisations politiques.'),
(120, 'Organisations religieuses, apporteurs', '456', 'Ce compte concerne les montants dus par l''entreprise à des organisations religieuses ou à des contributeurs financiers de ces organisations.'),
(120, 'Mécènes, bénévoles et assimilés', '457', 'Il enregistre les montants dus par l''entreprise à des mécènes, bénévoles ou autres contributeurs à ses activités.'),
(120, 'Autres fondateurs et apporteurs', '458', 'Ce compte concerne les montants dus par l''entreprise à d''autres fondateurs ou apporteurs de fonds.'),


-- 121 ----
(121, 'Bailleurs-projet de développement, Fonds d''administration', '462', 'Ce compte enregistre les montants dus par l''entreprise aux bailleurs de fonds dans le cadre de projets de développement, destinés à l''administration de ces fonds.'),
(121, 'Etat-projet de développement, Fonds d''administration', '463', 'Il enregistre les montants dus par l''entreprise à l''État dans le cadre de projets de développement, destinés à l''administration de ces fonds.'),
(121, 'Autres tiers ou organismes de financement assimilés projet de développement, Fond d''administration', '464', 'Ce compte concerne les montants dus par l''entreprise à d''autres tiers ou organismes de financement assimilés dans le cadre de projets de développement, destinés à l''administration de ces fonds.'),
(121, 'Fonds d''administration à recevoir', '469', 'Il enregistre les montants à recevoir par l''entreprise au titre des fonds d''administration dans le cadre de projets de développement.'),
(121, 'Écarts de conversion-passif', '479', 'Ce compte enregistre les écarts de conversion passifs qui résultent de la traduction en monnaie de présentation d''éléments du bilan exprimés dans une monnaie étrangère.'),



-- 122 ----
(122, 'Débiteurs et créditeurs divers', '471', 'Ce compte enregistre les créances et les dettes de l''entreprise qui ne sont pas classées dans d''autres catégories spécifiques.'),
(122, 'Créances et dettes sur titres de placement', '472', 'Il concerne les créances et les dettes de l''entreprise liées à des titres de placement.'),
(122, 'Subventions à recevoir', '473', 'Ce compte enregistre les subventions qui sont dues à l''entreprise mais qui n''ont pas encore été reçues.'),
(122, 'Compte de répartition périodique des charges et des produits', '474', 'Il concerne les montants relatifs à la répartition périodique des charges et des produits dans les comptes de résultat.'),
(122, 'Générosités financières à recevoir', '475', 'Ce compte enregistre les générosités financières qui sont dues à l''entreprise mais qui n''ont pas encore été reçues.'),
(122, 'Charges constatés d''avance', '476', 'Il enregistre les charges pour lesquelles l''entreprise a déjà payé mais qui correspondent à des avantages économiques futurs.'),
(122, 'Produits constatés d''avance', '477', 'Ce compte enregistre les produits pour lesquels l''entreprise a déjà reçu un paiement mais qui correspondent à des avantages économiques futurs.'),
(122, 'Écarts de conversion-actif', '478', 'Il enregistre les écarts de conversion actifs qui résultent de la traduction en monnaie de présentation d''éléments du bilan exprimés dans une monnaie étrangère.'),



-- 123 ----
(123, 'Fournisseurs d''investissements', '481', 'Ce compte enregistre les dettes de l''entreprise liées à des investissements réalisés auprès de fournisseurs.'),
(123, 'Autres dettes hors activités ordinaires (H.A.O.)', '484', 'Il concerne les dettes de l''entreprise qui ne sont pas liées à ses activités ordinaires.'),
(123, 'Créances sur cessions d''immobilisations', '485', 'Ce compte enregistre les créances de l''entreprise résultant de la cession d''immobilisations.'),
(123, 'Dettes et créances des legs et dons d''immobilisations', '486', 'Il concerne les dettes et les créances de l''entreprise résultant de legs et de dons d''immobilisations.'),
(123, 'Autres créances hors activités ordinaires (H.A.O.)', '488', 'Ce compte enregistre les créances de l''entreprise qui ne sont pas liées à ses activités ordinaires.'),



-- 124 ----
(124, 'Dépréciations des comptes fournisseurs', '490', 'Ce compte enregistre les provisions pour dépréciation des comptes fournisseurs.'),
(124, 'Dépréciations des comptes adhérents et clients-usagers', '491', 'Il concerne les provisions pour dépréciation des comptes adhérents et clients-usagers.'),
(124, 'Dépréciations des comptes personnels', '492', 'Ce compte enregistre les provisions pour dépréciation des comptes personnels.'),
(124, 'Dépréciation des comptes organismes sociaux', '493', 'Il concerne les provisions pour dépréciation des comptes organismes sociaux.'),
(124, 'Dépréciations des comptes Etat et Collectivités publiques', '494', 'Ce compte enregistre les provisions pour dépréciation des comptes Etat et Collectivités publiques.'),
(124, 'Dépréciations des comptes débiteurs divers', '497', 'Il concerne les provisions pour dépréciation des comptes débiteurs divers.'),
(124, 'Dépréciations des comptes de créances H.A.O.', '498', 'Ce compte enregistre les provisions pour dépréciation des comptes de créances H.A.O.'),
(124, 'Provisions pour risques et charges à court terme', '499', 'Il concerne les provisions pour risques et charges à court terme.'),



-- 125 ----
(125, 'Titres du trésor et bons de caisse à court terme', '501', 'Ce compte enregistre les titres du trésor et les bons de caisse à court terme détenus par l''entité.'),
(125, 'Actions', '502', 'Il concerne les actions détenues par l''entité.'),
(125, 'Obligations', '503', 'Ce compte enregistre les obligations détenues par l''entité.'),
(125, 'BONS DE SOUSCRIPTION', '504', 'Il concerne les bons de souscription détenus par l''entité.'),
(125, 'Titres négociables hors région', '505', 'Ce compte enregistre les titres négociables hors région détenus par l''entité.'),
(125, 'Intérêts courus', '506', 'Il concerne les intérêts courus sur les titres de placement détenus par l''entité.'),
(125, 'Autres titres de placement et créances assimilées', '508', 'Ce compte enregistre les autres titres de placement et créances assimilées détenus par l''entité.'),


-- 126 ----
(126, 'Chèques à encaisser', '513', 'Ce compte enregistre les chèques en attente d''encaissement.'),
(126, 'Chèques à l''encaissement', '514', 'Il concerne les chèques actuellement en cours d''encaissement.'),
(126, 'Cartes de crédit à encaisser', '515', 'Ce compte enregistre les paiements par cartes de crédit en attente d''encaissement.'),
(126, 'Autres valeurs à l''encaissement', '518', 'Il concerne les autres formes de valeurs en attente d''encaissement.'),



-- 127 ----
(127, 'Banques locales', '521', 'Ce compte concerne les fonds détenus auprès de banques locales.'),
(127, 'Banques autres Etats Région', '522', 'Il concerne les fonds détenus auprès de banques situées dans d''autres États de la région.'),
(127, 'Banques autres Etats zone monétaire', '523', 'Ce compte enregistre les fonds détenus auprès de banques situées dans d''autres États de la même zone monétaire.'),
(127, 'Banques hors zone monétaire', '523', 'Il concerne les fonds détenus auprès de banques situées en dehors de la zone monétaire.'),
(127, 'Banques dépôts à terme et opérations assimilées', '524', 'Ce compte enregistre les fonds placés dans des dépôts à terme et des opérations similaires auprès des banques.'),
(127, 'Banques, intérêts courus', '526', 'Il concerne les intérêts courus sur les fonds détenus auprès des banques.'),


-- 128 ----
(128, 'Banques postales', '531', 'Ce compte concerne les fonds détenus auprès des banques postales.'),
(128, 'Trésor', '532', 'Il concerne les fonds détenus auprès du Trésor public.'),
(128, 'Société de gestion et d''intermédiation (S.G.I.)', '533', 'Ce compte enregistre les fonds détenus auprès des sociétés de gestion et d''intermédiation.'),
(128, 'Etablissements financiers, intérêts courus', '536', 'Il concerne les intérêts courus sur les fonds détenus auprès des établissements financiers.'),
(128, 'Autres organismes financiers', '538', 'Ce compte enregistre les fonds détenus auprès d''autres organismes financiers.'),


-- 129 ----
(129, 'Monnaie électronique-carte carburant', '551', ' généralement utilisé pour enregistrer les transactions liées à l''utilisation de monnaie électronique pour l''achat de carburant. Il est souvent utilisé dans les entreprises où les employés disposent de cartes carburant prépayées ou de comptes liés à des fournisseurs de carburant. Les transactions enregistrées dans ce compte peuvent inclure l''achat de carburant, les frais de service associés à l''utilisation de la carte, ainsi que toute autre dépense liée au système de gestion de carburant électronique.'),
(129, 'Monnaie électronique-téléphone portabl', '552', 'destiné à enregistrer les transactions effectuées à l''aide de monnaie électronique pour le paiement de factures de téléphone portable. Dans de nombreuses entreprises, les employés peuvent recevoir des allocations pour leurs frais de communication ou même disposer de comptes prépayés pour leur téléphone portable, et ce compte est utilisé pour suivre ces dépenses. Les transactions enregistrées dans ce compte peuvent comprendre le paiement des factures de téléphone portable, les frais de service associés à l''utilisation de la monnaie électronique pour ce service, et d''autres dépenses connexes liées à la communication électronique.'),
(129, 'Monnaie électronique-carte péage', '553', 'Ce compte concerne les fonds liés à l''utilisation de la monnaie électronique pour les péages.'),
(129, 'Porte-monnaie électronique', '554', 'Il enregistre les fonds détenus sous forme de porte-monnaie électronique.'),
(129, 'Autres instruments de monnaie électronique', '558', 'Ce compte concerne d''autres formes d''instruments de monnaie électronique.'),


-- 130 ----
(130, 'Crédits de trésorerie', '561', 'Ce compte enregistre les fonds obtenus sous forme de crédits à court terme pour les besoins de trésorerie.'),
(130, 'Escompte de crédits ordinaires', '565', 'Il concerne les réductions accordées sur les crédits ordinaires.'),
(130, 'Banques, crédits de trésorerie, intérêts courus', '566', 'Ce compte enregistre les intérêts courus sur les crédits de trésorerie auprès des banques.'),



-- 131 ----
(131, 'Caisse en monnaie nationale', '571', 'Ce compte enregistre les espèces disponibles en monnaie nationale dans la caisse de l''entreprise.'),
(131, 'Caisse en devises', '572', 'Il s''agit des espèces disponibles en devises étrangères dans la caisse de l''entreprise.'),


-- 132 ----
(132, 'Virements de fonds', '585', 'Ce compte enregistre les transferts de fonds effectués entre différents comptes bancaires ou entre la caisse et les comptes bancaires de l''entreprise.'),
(132, 'Autres virements internes', '588', 'Il s''agit des transferts de fonds effectués à l''interne au sein de l''entreprise, mais qui ne passent pas nécessairement par des comptes bancaires.'),



-- 133 ----
(133, 'Dépréciations des titres de placement', '590', 'Ce compte enregistre les dépréciations de la valeur des titres de placement détenus par l''entreprise.'),
(133, 'Dépréciations des titres et valeurs à encaisser', '591', 'Il s''agit des dépréciations constatées sur les titres et autres valeurs à encaisser détenus par l''entreprise.'),
(133, 'Dépréciations des comptes banques', '592', 'Ce compte enregistre les dépréciations constatées sur les comptes bancaires de l''entreprise.'),
(133, 'Dépréciations des comptes établissements financiers et assimilés', '593', 'Il s''agit des dépréciations constatées sur les comptes détenus auprès des établissements financiers et assimilés.'),
(133, 'Dépréciations des comptes d''instruments de monnaie électronique', '595', 'Ce compte enregistre les dépréciations constatées sur les comptes d''instruments de monnaie électronique utilisés par l''entreprise.'),
(133, 'Provisions pour risque et charges à court terme à caractère financier', '599', 'Ce compte est utilisé pour enregistrer les provisions constituées par l''entreprise pour faire face à des risques et charges financiers à court terme.'),



-- 134 ----
(134, 'Achats de biens et services liés à l''activité', '601', 'Ce compte enregistre les dépenses liées à l''achat de biens et services nécessaires à l''activité de l''entreprise.'),
(134, 'Achats de marchandises, de matières premières et fournitures liées', '602', 'Il s''agit des achats de marchandises destinées à la revente, de matières premières utilisées dans le processus de production et des fournitures liées à l''activité de l''entreprise.'),
(134, 'Variations des stocks de biens achetés et reçus en dons en nature à distribuer', '603', 'Ce compte enregistre les variations des stocks de biens achetés et des biens reçus en dons en nature destinés à être distribués par l''entreprise.'),
(134, 'Achats stockés de matières et fournitures consommables', '604', 'Il s''agit des achats de matières et de fournitures consommables stockés par l''entreprise.'),
(134, 'Autres achats', '605', 'Ce compte regroupe les autres types d''achats qui ne sont pas inclus dans les comptes précédents.'),
(134, 'Achats autres activités', '606', 'Il s''agit des achats liés à d''autres activités de l''entreprise qui ne sont pas directement liés à son activité principale.'),
(134, 'Achats d''emballages', '608', 'Ce compte enregistre les achats d''emballages utilisés par l''entreprise pour conditionner ses produits avant leur vente ou leur distribution.'),



-- 135 ----
(135, 'Transports sur ventes', '612', 'Ce compte enregistre les frais de transport liés aux ventes réalisées par l''entreprise.'),
(135, 'Transports pour le compte de tiers', '613', 'Il s''agit des frais de transport engagés par l''entreprise pour le compte de tiers.'),
(135, 'Transports de plis', '614', 'Ce compte concerne les frais de transport relatifs à l''envoi de plis par l''entreprise.'),
(135, 'Autres frais de transport', '618', 'Ce compte regroupe les autres frais de transport qui ne sont pas inclus dans les comptes précédents.'),
(135, 'Rabais, Remises et Ristournes obtenus (non ventilés)', '619', 'Il s''agit des rabais, remises et ristournes obtenus par l''entreprise et qui n''ont pas été ventilés dans d''autres comptes.'),



-- 136 ----
(136, 'Sous-traitance générale', '621', 'Ce compte enregistre les frais liés à la sous-traitance générale, c''est-à-dire les services externalisés par l''entreprise.'),
(136, 'Locations, charges locatives', '622', 'Il s''agit des charges liées à la location de biens immobiliers ou mobiliers pour les besoins de l''entreprise.'),
(136, 'Redevances de location-acquisition', '623', 'Ce compte concerne les redevances versées pour la location-acquisition de biens.'),
(136, 'Entretien, réparation, remise en état et maintenance', '624', 'Il regroupe les dépenses liées à l''entretien, la réparation, la remise en état et la maintenance des biens de l''entreprise.'),
(136, 'Primes d''assurance', '625', 'Ce compte enregistre les primes versées pour les contrats d''assurance souscrits par l''entreprise.'),
(136, 'Etudes, recherches et documentation', '626', 'Il concerne les dépenses engagées pour des études, recherches et la documentation nécessaires à l''activité de l''entreprise.'),
(136, 'Publicité, publications, relations publiques', '627', 'Ce compte regroupe les frais liés aux activités de publicité, de publications et de relations publiques de l''entreprise.'),
(136, 'Frais de télécommunications', '628', 'Il s''agit des frais engagés pour les communications téléphoniques, internet et autres services de télécommunications utilisés par l''entreprise.'),



-- 137 ----
(137, 'Frais bancaires', '631', 'Ce compte enregistre les frais facturés par les banques pour les services bancaires rendus à l''entreprise.'),
(137, 'Rémunérations d''intermédiaires et de conseils', '632', 'Il concerne les honoraires versés aux intermédiaires et aux conseillers externes pour leurs services.'),
(137, 'Frais de formation', '633', 'Ce compte regroupe les dépenses liées à la formation du personnel de l''entreprise.'),
(137, 'Redevances pour brevets, licences, logiciels, sites internet, concessions et droits et valeurs similaires', '634', 'Il concerne les redevances payées pour l''utilisation de brevets, licences, logiciels, sites internet, concessions et droits similaires.'),
(137, 'Cotisations', '635', 'Ce compte enregistre les cotisations versées à des organismes professionnels ou sociaux.'),
(137, 'Frais de recherche de fonds', '636', 'Il s''agit des frais engagés pour la recherche de financements ou de fonds par l''entreprise.'),
(137, 'Rémunérations de personnel extérieur à l''entité', '637', 'Ce compte concerne les rémunérations versées à du personnel externe à l''entreprise, tel que des intérimaires ou des consultants.'),
(137, 'Autres charges externes', '638', 'Il regroupe les autres charges externes à l''entreprise qui ne sont pas spécifiquement catégorisées dans les comptes précédents.'),


-- 138 ----
(138, 'Impôts et taxes directs', '641', 'Ce compte enregistre les impôts et taxes directement liés aux revenus ou aux bénéfices de l''entreprise, tels que l''impôt sur les sociétés ou l''impôt sur le revenu des personnes physiques.'),
(138, 'Impôts et taxes indirects', '645', 'Il concerne les impôts et taxes indirects, tels que la taxe sur la valeur ajoutée (TVA) ou les taxes sur les produits spécifiques.'),
(138, 'Droits d''enregistrement', '646', 'Ce compte enregistre les droits d''enregistrement payés lors de transactions immobilières ou de certaines opérations financières.'),
(138, 'Pénalités, amendes fiscales', '647', 'Il concerne les pénalités et amendes fiscales imposées par les autorités fiscales en cas de non-respect des obligations fiscales.'),
(138, 'Autres impôts et taxes', '648', 'Il regroupe les autres impôts et taxes qui ne sont pas spécifiquement catégorisés dans les comptes précédents.'),
(138, 'Dégrèvements et annulations des impôts et taxes', '649', 'Ce compte enregistre les dégrèvements et annulations d''impôts et taxes accordés par les autorités fiscales.'),



-- 139 ----
(139, 'Pertes sur créances adhérents clients, et autres débiteurs', '651', 'Ce compte enregistre les pertes résultant de l''impossibilité de recouvrer les créances dues par les adhérents, les clients ou d''autres débiteurs.'),
(139, 'Subventions accordées par l''entité', '652', 'Il concerne les subventions octroyées par l''entité à d''autres entités ou organisations.'),
(139, 'Dons en nature courant à distribuer', '654', 'Ce compte enregistre la valeur des dons en nature reçus par l''entité et destinés à être distribués dans le cadre de ses activités courantes.'),
(139, 'Pénalités et amendes pénales', '657', 'Il concerne les charges résultant de pénalités et amendes imposées par les autorités réglementaires ou judiciaires.'),
(139, 'Charges diverses', '658', 'Ce compte regroupe les charges qui ne peuvent être spécifiquement classées dans d''autres comptes.'),
(139, 'Charges pour dépréciations et provisions pour risques à court terme d''exploitation', '659', 'Il enregistre les charges liées aux dépréciations et provisions pour risques à court terme concernant les activités d''exploitation de l''entité.'),


-- 140 ----
(140, 'Rémunérations directes versées au personnel national', '661', 'Ce compte enregistre les rémunérations directes versées au personnel de nationalité nationale.'),
(140, 'Rémunérations directes versées au personnel non national', '662', 'Il concerne les rémunérations directes versées au personnel de nationalité étrangère.'),
(140, 'Indemnités forfaitaires versées au personnel', '663', 'Ce compte enregistre les indemnités forfaitaires versées au personnel pour compenser certains frais.'),
(140, 'Charges sociales', '664', 'Il concerne les charges sociales payées par l''entité pour le personnel.'),
(140, 'Habillement et équipement du personnel', '665', 'Ce compte regroupe les charges liées à l''habillement et à l''équipement du personnel.'),
(140, 'Rémunérations transférées de personnel extérieur', '667', 'Il enregistre les rémunérations transférées à du personnel fourni par des entités extérieures.'),
(140, 'Autres charges sociales', '668', 'Ce compte regroupe les autres charges sociales qui ne sont pas spécifiquement classées dans d''autres comptes.'),
(140, 'Dégrèvements et annulations des charges sociales', '669', 'Il concerne les dégrèvements et annulations des charges sociales.'),



-- 141 ----
(141, 'Intérêts des emprunts', '671', 'Ce compte enregistre les intérêts payés sur les emprunts contractés par l''entité.'),
(141, 'Intérêts dans loyers de location-acquisition', '672', 'Il concerne les intérêts inclus dans les loyers payés pour les contrats de location-acquisition.'),
(141, 'Escomptes accordés', '673', 'Ce compte enregistre les escomptes accordés par l''entité.'),
(141, 'Autres intérêts', '676', 'Il concerne d''autres types d''intérêts non spécifiés dans d''autres comptes.'),
(141, 'Pertes de changes financières', '678', 'Ce compte regroupe les pertes financières dues à des fluctuations des taux de change.'),
(141, 'Pertes sur titres de placement', '677', 'Il concerne les pertes sur les titres de placement.'),
(141, 'Pertes et charges sur risques financiers', '678', 'Ce compte enregistre les pertes et charges liées à des risques financiers.'),
(141, 'Charges pour dépréciations et provisions pour risques à court terme financières', '679', 'Il concerne les charges pour dépréciations et provisions pour risques financiers à court terme.'),




-- 142 ----
(142, 'Dotations aux amortissements d''usufruit temporaire', '680', 'Ce compte enregistre les dotations aux amortissements des biens en usufruit temporaire.'),
(142, 'Dotations aux amortissements d''exploitation', '681', 'Il concerne les dotations aux amortissements des biens utilisés dans le cadre de l''exploitation de l''entité.')



-- 143 ----
(143, 'Dotations aux provisions et aux dépréciations d''exploitation', '691', 'Ce compte enregistre les dotations aux provisions et aux dépréciations liées aux activités d''exploitation de l''entreprise.'),
(143, 'Dotations aux dépréciations d''immobilisations destinées à la vente provenant des dons et legs non reçus et d''usufruit temporaire', '695', 'Il concerne les dotations aux dépréciations des immobilisations destinées à la vente issues de dons et legs non encore reçus et d''usufruit temporaire.'),
(143, 'Dotations aux provisions et aux dépréciations financières', '697', 'Ce compte enregistre les dotations aux provisions et aux dépréciations financières.'),



-- 144 ----
(144, 'Cotisations des adhérents', '701', 'Ce compte enregistre les cotisations versées par les adhérents à l''organisation.'),
(144, 'Quote-part de fonds d''administration transférés', '702', 'Il concerne la quote-part des fonds d''administration transférés.'),
(144, 'Quote-part de dotation consomptible transférée', '703', 'Ce compte enregistre la quote-part de dotation consomptible transférée.'),
(144, 'Revenus liés à la générosité', '704', 'Il concerne les revenus obtenus grâce à la générosité des donateurs.'),
(144, 'Ventes marchandises, services et produits finis', '705', 'Ce compte enregistre les revenus provenant de la vente de marchandises, de services et de produits finis.'),
(144, 'Revenus des manifestations', '706', 'Il concerne les revenus générés par des manifestations organisées par l''entité.'),
(144, 'Produits accessoires', '707', 'Ce compte enregistre les revenus provenant de produits accessoires vendus par l''entreprise.'),
(144, 'Autres revenus', '708', 'Il concerne les autres revenus de l''entreprise.'),



-- 145 ----
(145, 'Subventions d''exploitation versées par l''État et les Collectivités publiques', '711', 'Ce compte enregistre les subventions d''exploitation versées par l''État et les collectivités publiques à l''entreprise.'),
(145, 'Subventions d''exploitation versées par les organismes nationaux et internationaux', '713', 'Il concerne les subventions d''exploitation versées par les organismes nationaux et internationaux.'),
(145, 'Autres subventions d''exploitation', '718', 'Ce compte enregistre les autres subventions d''exploitation.'),




-- 146 ----
(146, 'Production immobilisée, immobilisations incorporelles', '721', 'Ce compte enregistre la production immobilisée liée à la création ou à l''amélioration d''immobilisations incorporelles.'),
(146, 'Production immobilisée, immobilisations corporelles', '722', 'Il concerne la production immobilisée liée à la création ou à l''amélioration d''immobilisations corporelles.'),
(146, 'Production autoconsommée', '724', 'Ce compte enregistre la production autoconsommée, c''est-à-dire les biens ou services produits par l''entreprise et utilisés pour ses propres besoins.'),
(146, 'Production immobilisée, immobilisation financières(1)', '726', 'Il s''agit de la production immobilisée liée à la création ou à l''amélioration d''immobilisations financières.'),



-- 147 ----
(147, 'Variations des stocks de produits et services en cours', '735', 'Ce compte enregistre les variations des stocks de produits et services en cours, représentant les biens et services en cours de production à la fin de la période par rapport au début de la période.'),
(147, 'Variations des stocks de produits, produits intermédiaires et résiduels', '736', 'Il concerne les variations des stocks de produits, produits intermédiaires et résiduels, reflétant les changements dans ces stocks entre le début et la fin de la période.'),



-- 148 ----
(148, 'Profits sur créances Adhérents, clients-usagers, et autres débiteurs', '751', 'Ce compte enregistre les profits réalisés sur les créances des adhérents, des clients-usagers et d''autres débiteurs.'),
(148, 'Contribution du fondateur', '752', 'Il s''agit de la contribution du fondateur de l''entité, enregistrée comme un produit dans les états financiers.'),
(148, 'Dons en nature courants', '754', 'Les dons en nature courants reçus sont enregistrés dans ce compte.'),
(148, 'Produits divers', '758', 'Ce compte est utilisé pour enregistrer les produits divers qui ne sont pas associés à d''autres comptes de produits spécifiques.'),
(148, 'Reprises de charges pour dépréciations et provisions pour risques à court terme d''exploitation', '759', 'Les reprises de charges pour dépréciations et provisions pour risques à court terme d''exploitation sont enregistrées dans ce compte lorsqu''elles sont réintégrées dans les résultats de l''entité.'),



-- 149 ----
(149, 'Intérêts de prêts et créances diverses', '771', 'Ce compte enregistre les intérêts perçus sur les prêts et les créances diverses détenues par l''entité.'),
(149, 'Revenus de participations et autres titres immobilisés', '772', 'Les revenus issus de participations dans d''autres entreprises et de la détention d''autres titres immobilisés sont enregistrés dans ce compte.'),
(149, 'Escomptes obtenus', '773', 'Ce compte enregistre les escomptes obtenus par l''entité lorsqu''elle paie ses fournisseurs ou d''autres parties prenantes à l''avance.'),
(149, 'Revenus de placement', '774', 'Les revenus générés par les placements financiers de l''entité sont enregistrés dans ce compte.'),
(149, 'Gains de changes financiers', '776', 'Les gains réalisés sur les opérations de change sont enregistrés dans ce compte.'),
(149, 'Gains sur cessions de titres de placement', '777', 'Ce compte enregistre les gains réalisés lorsque l''entité cède des titres de placement.'),
(149, 'Gains sur risques financiers', '778', 'Les gains provenant de la gestion des risques financiers de l''entité sont enregistrés dans ce compte.'),
(149, 'Reprises de charges pour dépréciations et provisions pour risques à court terme financières', '779', 'Les reprises de charges pour dépréciations et provisions pour risques à court terme financières sont enregistrées dans ce compte lorsqu''elles sont réintégrées dans les résultats de l''entité.'),




-- 150 ----
(150, 'Transferts de charges d''exploitation', '781', ''),
(150, 'Tranfert de charges financières', '782', ''),

781 Transferts de charges d''exploitation
782 Tranfert de charges financières



-- 151 ----
(151, 'Reprises de provisions et dépréciations d''exploitation', '791', 'Ce compte enregistre les reprises de provisions et de dépréciations d''exploitation.'),
(151, 'Reprises de fonds affectés et provenant des dons et  legs d''immobilisation', '792', 'Les reprises de fonds affectés et provenant des dons et legs d''immobilisation sont enregistrées dans ce compte.'),
(151, 'Reprises des dépréciations d''immobilisations reçues destinées à la vente provenant des dons et legs et d''usufruit temporaire', '795', 'Ce compte enregistre les reprises des dépréciations des immobilisations reçues destinées à la vente provenant des dons et legs et d''usufruit temporaire.'),
(151, 'Reprises des fonds reportés', '796', 'Les reprises des fonds reportés sont enregistrées dans ce compte.'),
(151, 'Reprises de provisions et dépréciations financières', '797', 'Ce compte enregistre les reprises de provisions et de dépréciations financières.'),
(151, 'Reprises d''amortissements', '798', 'Les reprises d''amortissements sont enregistrées dans ce compte.'),
(151, 'Reprises de subventions d''investissement', '799', 'Ce compte enregistre les reprises de subventions d''investissement.'),


-- 152 ----
(152, 'Valeurs comptables des cessions d''immobilisations incorporelles', '811', 'Ce compte enregistre les valeurs comptables des cessions d''immobilisations incorporelles.'),
(152, 'Valeurs comptables des cessions d''immobilisations corporelles', '812', 'Les valeurs comptables des cessions d''immobilisations corporelles sont enregistrées dans ce compte.'),
(152, 'Valeurs comptables des cessions d''immobilisations financières', '816', 'Ce compte enregistre les valeurs comptables des cessions d''immobilisations financières.'),
(152, 'Valeurs comptables des cessions d''immobilisations reçues destinées à la vente provenant de dons et legs', '818', 'Les valeurs comptables des cessions d''immobilisations reçues destinées à la vente provenant de dons et legs sont enregistrées dans ce compte.'),



-- 153 ----
(153, 'Produits des cessions d''immobilisations incorporelles', '821', 'Ce compte enregistre les produits des cessions d''immobilisations incorporelles.'),
(153, 'Produits des cessions d''immobilisations corporelles', '822', 'Les produits des cessions d''immobilisations corporelles sont enregistrés dans ce compte.'),
(153, 'Produits des cessions d''immobilisations financières', '826', 'Ce compte enregistre les produits des cessions d''immobilisations financières.'),
(153, 'Produits des cessions d''immobilisations reçues destinées à la vente provenant de dons et legs', '828', 'Les produits des cessions d''immobilisations reçues destinées à la vente provenant de dons et legs sont enregistrés dans ce compte.'),


-- 154 ----
(154, 'Charges H.A.O. constatées', '831', 'Ce compte enregistre les charges constatées liées aux activités hors activités ordinaires (H.A.O.).'),
(154, 'Dons en nature H.A.O. à distribuer', '832', 'Les dons en nature destinés aux activités hors activités ordinaires (H.A.O.) à distribuer sont enregistrés dans ce compte.'),
(154, 'Pertes sur créances H.A.O.', '834', 'Les pertes sur créances liées aux activités hors activités ordinaires (H.A.O.) sont enregistrées dans ce compte.'),
(154, 'Abandons de créances consentis', '836', 'Les abandons de créances consentis dans le cadre des activités hors activités ordinaires (H.A.O.) sont enregistrés dans ce compte.'),
(154, 'Transferts de charges H.A.O.', '838', 'Les transferts de charges liés aux activités hors activités ordinaires (H.A.O.) sont enregistrés dans ce compte.'),
(154, 'Charges pour dépréciations et provisions pour risques à court terme H.A.O.', '839', 'Les charges pour dépréciations et provisions pour risques à court terme liées aux activités hors activités ordinaires (H.A.O.) sont enregistrées dans ce compte.'),



-- 155 ----
(155, 'Produits H.A.O. constatés', '841', 'Ce compte enregistre les produits constatés liés aux activités hors activités ordinaires (H.A.O.).'),
(155, 'Contributions volontaires en nature', '842', 'Les contributions volontaires en nature reçues dans le cadre des activités hors activités ordinaires (H.A.O.) sont enregistrées dans ce compte.'),
(155, 'Contributions volontaires en numéraire', '843', 'Les contributions volontaires en numéraire reçues dans le cadre des activités hors activités ordinaires (H.A.O.) sont enregistrées dans ce compte.'),
(155, 'Abandons de créances obtenus', '846', 'Les abandons de créances obtenus dans le cadre des activités hors activités ordinaires (H.A.O.) sont enregistrés dans ce compte.'),
(155, 'Transferts de produits H.A.O.', '848', 'Les transferts de produits liés aux activités hors activités ordinaires (H.A.O.) sont enregistrés dans ce compte.'),
(155, 'Reprises de charges pour dépressions et provision pour risques à court terme H.A.O.', '849', 'Les reprises de charges pour dépréciations et provisions pour risques à court terme liées aux activités hors activités ordinaires (H.A.O.) sont enregistrées dans ce compte.'),



-- 156 ----
(156, 'Dotations aux provisions réglementées', '851', 'Ce compte enregistre les dotations aux provisions réglementées.'),
(156, 'Dotations aux amortissements H.A.O.', '852', 'Ce compte enregistre les dotations aux amortissements liées aux activités hors activités ordinaires (H.A.O.).'),
(156, 'Dotations aux dépréciations H.A.O.', '853', 'Ce compte enregistre les dotations aux dépréciations liées aux activités hors activités ordinaires (H.A.O.).'),
(156, 'Dotations aux provisions pour risques et charges H.A.O.', '854', 'Ce compte enregistre les dotations aux provisions pour risques et charges liées aux activités hors activités ordinaires (H.A.O.).'),
(156, 'Autres dotations H.A.O.', '858', 'Ce compte enregistre les autres dotations liées aux activités hors activités ordinaires (H.A.O.).'),



-- 157 ----
(157, 'Reprises de provisions réglementées', '861', 'Ce compte enregistre les reprises de provisions réglementées.'),
(157, 'Reprises d''amortissement H.A.O.', '862', 'Ce compte enregistre les reprises d''amortissement liées aux activités hors activités ordinaires (H.A.O.).'),
(157, 'Reprises de dépréciations H.A.O.', '863', 'Ce compte enregistre les reprises de dépréciations liées aux activités hors activités ordinaires (H.A.O.).'),
(157, 'Reprises de provisions pour risques et charges H.A.O.', '864', 'Ce compte enregistre les reprises de provisions pour risques et charges liées aux activités hors activités ordinaires (H.A.O.).'),
(157, 'Autres reprises H.A.O.', '868', 'Ce compte enregistre les autres reprises liées aux activités hors activités ordinaires (H.A.O.).'),



-- 158 ----
Rien (VARIATIONS DE STOCKS DE DONS EN NATURE H.A.O)



-- 159 ----
(159, 'SUBVENTIONS D''ÉQUILIBRE, ÉTAT', '881', 'Ce compte enregistre les subventions d''équilibre accordées par l''État.'),
(159, 'SUBVENTIONS D''ÉQUILIBRE, COLLECTIVITÉS PUBLIQUES', '884', 'Ce compte enregistre les subventions d''équilibre accordées par les collectivités publiques.'),
(159, 'AUTRES SUBVENTIONS D''ÉQUILIBRE', '888', 'Ce compte enregistre les autres subventions d''équilibre.'),



-- 160 ----
(160, 'Secours en nature', '900', 'Ce compte enregistre les secours accordés en nature.'),
(160, 'Mise à disposition gratuite de biens', '901', 'Ce compte enregistre la mise à disposition gratuite de biens.'),
(160, 'Prestations en nature', '902', 'Ce compte enregistre les prestations effectuées en nature.'),
(160, 'Personnel bénévole', '904', 'Ce compte enregistre le personnel bénévole.'),


-- 161 ----
(161, 'Dons en nature à vendre', '910', 'Ce compte enregistre les dons en nature destinés à être vendus.'),
(161, 'Prestations en nature', '911', 'Ce compte enregistre les prestations fournies en nature.'),
(161, 'Bénévolat', '914', 'Ce compte enregistre les services fournis par des bénévoles.'),


-- 162 ----
COMPTES RÉFLÉCHIS
-- 163 ----
COMPTES DE RECLASSEMENTS
-- 164 ----
COMPTES DE COÛTS
-- 165 ----
COMPTES DE STOCKS
-- 166 ----
COMPTES D''ÉCARTS SUR COÛTS PRÉÉTABLIS
-- 167 ----
COMPTES DE DIFFÉRENCES DE TRAITEMENT COMPTABLE
-- 168 ----
COMPTES DE RÉSULTATS
-- 169 ----
COMPTES DE LIAISONS INTERNES






















SELECT 
    tc.typesclasse_id,
    tc.typesclasse_name,
    cc.classes_comptes_id,
    cc.class_nbr,
    cc.class_comptes_name,
    cc.class_comptes_description,
    c.comptes_id,
    c.comptes_name,
    c.comptes_nbr,
    c.comptes_description,
    sc.sous_comptes_id,
    sc.sous_comptes_name,
    sc.sous_comptes_nbr,
    sc.sous_comptes_description,
    ci.comptes_inf_id,
    ci.comptes_inf_nbr,
    ci.comptes_inf_name,
    ci.comptes_inf_description
FROM 
    typesclasse tc
LEFT JOIN 
    classes_comptes cc ON tc.typesclasse_id = cc.typesclasse_id
LEFT JOIN 
    comptes c ON cc.classes_comptes_id = c.classes_comptes_id
LEFT JOIN 
    sous_comptes sc ON c.comptes_id = sc.comptes_id
LEFT JOIN 
    comptes_inf ci ON sc.sous_comptes_id = ci.sous_comptes_id;



SELECT 
    
    tc.typesclasse_name,
   
    cc.class_nbr,
    cc.class_comptes_name,
   
   
    c.comptes_name,
    c.comptes_nbr,
    
   
    sc.sous_comptes_name,
    sc.sous_comptes_nbr,
    
   
    ci.comptes_inf_nbr,
    ci.comptes_inf_name
    
FROM 
    typesclasse tc
LEFT JOIN 
    classes_comptes cc ON tc.typesclasse_id = cc.typesclasse_id
LEFT JOIN 
    comptes c ON cc.classes_comptes_id = c.classes_comptes_id
LEFT JOIN 
    sous_comptes sc ON c.comptes_id = sc.comptes_id
LEFT JOIN 
    comptes_inf ci ON sc.sous_comptes_id = ci.sous_comptes_id;





-- QUERY TO DISPLAY ALL ACCOUNT ON TYPE LUCRATIF

SELECT 
    tc.typesclasse_name,

    cc.class_nbr,
    cc.class_comptes_name,

    c.comptes_name,
    c.comptes_nbr,

    sc.sous_comptes_name,
    sc.sous_comptes_nbr

FROM 
    typesclasse tc
JOIN 
    classes_comptes cc ON tc.typesclasse_id = cc.typesclasse_id
JOIN 
    comptes c ON cc.classes_comptes_id = c.classes_comptes_id
JOIN 
    sous_comptes sc ON c.comptes_id = sc.comptes_id

WHERE 
    tc.typesclasse_id = 1;
-- JOIN 
--     comptes_inf ci ON sc.sous_comptes_id = ci.sous_comptes_id




SELECT 
    tc.typesclasse_id,
    cc.class_nbr,
    cc.class_comptes_name,

    c.comptes_name,
    c.comptes_nbr
FROM 
    typesclasse tc
JOIN 
    classes_comptes cc ON tc.typesclasse_id = cc.typesclasse_id
JOIN 
    comptes c ON cc.classes_comptes_id = c.classes_comptes_id
JOIN 
    sous_comptes sc ON c.comptes_id = sc.comptes_id

WHERE 
    tc.typesclasse_id = 1;




SELECT 
    tc.typesclasse_id,
    cc.class_nbr,
    c.comptes_nbr,
    sc.sous_comptes_nbr
FROM 
    typesclasse tc
JOIN 
    classes_comptes cc ON tc.typesclasse_id = cc.typesclasse_id
JOIN 
    comptes c ON cc.classes_comptes_id = c.classes_comptes_id
JOIN 
    sous_comptes sc ON c.comptes_id = sc.comptes_id

WHERE 
    tc.typesclasse_id = 1;


---------------------------------Query to get all classe of types of classe-------------------------------------

-- Case of "LUCRATIF"
SELECT 
    tc.typesclasse_id,
    cc.class_nbr,
    cc.class_comptes_name
  
FROM 
    typesclasse tc
JOIN 
    classes_comptes cc ON tc.typesclasse_id = cc.typesclasse_id

WHERE 
    tc.typesclasse_id = 1;

-- Case of "Non Lucratif"
SELECT 
    tc.typesclasse_id,
    cc.class_nbr,
    cc.class_comptes_name
  
FROM 
    typesclasse tc
JOIN 
    classes_comptes cc ON tc.typesclasse_id = cc.typesclasse_id

WHERE 
    tc.typesclasse_id = 2;




--------------------------------------Query to get all ''comptes'' of one "classe" by id querying--------------------------------------------------

-- Case of id = 1

SELECT
cc.class_comptes_name,
    cc.classes_comptes_id,
    cc.class_nbr,
    c.comptes_name,
    c.comptes_nbr

FROM 
  classes_comptes cc
JOIN 
  comptes c ON  cc.classes_comptes_id = c.classes_comptes_id
WHERE
  cc.classes_comptes_id = 1;



-- Query to get all "sous_comptes" of one "comptes" by id querying











































--------------------------------------------------------------------Comptes_inf----------------------------------------------------------------------------
--1
1011 Capital souscrit, non appelé
1012 Capital souscrit, appelé, non versé
1013 Capital souscrit, appelé, versé, non amorti
1014 Capital souscrit, appelé, versé, amorti
1018 Capital souscrit soumis à des conditions particulières
(1, 'Capital souscrit, non appelé', '1011', 'Montant du capital que les actionnaires se sont engagés à verser mais qui n''a pas encore été demandé par l''entreprise.'),
(1, 'Capital souscrit, appelé, non versé', '1012', 'Montant du capital qui a été demandé par l''entreprise mais qui n''a pas encore été versé par les actionnaires.'),
(1, 'Capital souscrit, appelé, versé, non amorti', '1013', 'Montant du capital qui a été versé par les actionnaires mais qui n''a pas encore été affecté à des actifs spécifiques.'),
(1, 'Capital souscrit, appelé, versé, amorti', '1014', 'Montant du capital qui a été versé par les actionnaires et qui a été affecté à des actifs spécifiques.'),
(1, 'Capital souscrit soumis à des conditions particulières', '1018', 'Montant du capital qui est soumis à des conditions spécifiques énoncées dans les statuts de l''entreprise.'),


--2
1021 Dotation initiale
1022 Dotations complémentaires
1028 Autres dotations
(2, 'Dotation initiale', '1021', 'Montant initial alloué à un fonds, une réserve ou un compte spécifique.'),
(2, 'Dotations complémentaires', '1022', 'Montant ajouté à un fonds, une réserve ou un compte spécifique après la dotation initiale.'),
(2, 'Autres dotations', '1028', 'Montant ajouté à un fonds, une réserve ou un compte spécifique pour des raisons autres que la dotation initiale ou les dotations complémentaires.'),


--3 


--4 
1041 Apports temporaires
1042 Operations courantes
1043 Rémunérations, impôts et autres charges personnelles
1047 Prélèvements d''autoconsommation
1048 Autres prélèvements
(4, 'Apports temporaires', '1041', 'Montant apporté temporairement à l''entreprise pour répondre à des besoins spécifiques et qui sera restitué ultérieurement.'),
(4, 'Opérations courantes', '1042', 'Charges liées aux opérations habituelles de l''entreprise, y compris les frais généraux et les dépenses opérationnelles.'),
(4, 'Rémunérations, impôts et autres charges personnelles', '1043', 'Dépenses liées à la rémunération du personnel, aux impôts sur le revenu et autres charges personnelles.'),
(4, 'Prélèvements d''autoconsommation', '1047', 'Biens ou services prélevés par l''entreprise pour ses propres besoins internes.'),
(4, 'Autres prélèvements', '1048', 'Tout autre prélèvement effectué par l''entreprise pour des raisons spécifiques non couvertes par les autres comptes.'),


--5 
1051 Primes d''émission
1052 Primes d''apport
1053 Primes de fusion
1054 Primes de conversion
1058 Autres primes

(5, 'Primes d''émission', '1051', 'Montants reçus par une entreprise lors de l''émission d''actions au-dessus de la valeur nominale.'),
(5, 'Primes d''apport', '1052', 'Montants reçus en plus de la valeur nominale lorsqu''un actif est apporté à une entreprise.'),
(5, 'Primes de fusion', '1053', 'Montants reçus en plus de la valeur nominale lorsqu''une entreprise fusionne avec une autre.'),
(5, 'Primes de conversion', '1054', 'Montants reçus en plus de la valeur nominale lors de la conversion de valeurs mobilières en actions.'),
(5, 'Autres primes', '1058', 'Toutes autres primes qui ne sont pas spécifiquement classées dans les catégories précédentes.'),

--6
1061 Écarts de réévaluation légale
1062 Écarts de réévaluation libre
(6, 'Écarts de réévaluation légale', '1061', 'Différences positives entre la valeur réévaluée d''un actif et sa valeur comptable initiale, conformément à des dispositions légales spécifiques.'),
(6, 'Écarts de réévaluation libre', '1062', 'Différences positives entre la valeur réévaluée d''un actif et sa valeur comptable initiale, effectuée librement par l''entreprise.'),



--7



--8


--9

--10
1131 Réserves de plus-values nettes à long terme 
1132 Réserves d''attribution gratuite d''actions au personnel salarié et aux dirigeants
1133 Réserves consécutives à l''octroi de subventions d''investissement
1134 Réserves des valeurs mobilières donnant accès au capital
1138 Autres réserves règlementées

(10, 'Réserves de plus-values nettes à long terme', '1131', 'Montant accumulé des bénéfices non distribués provenant de la vente d''actifs à long terme à un prix supérieur à leur valeur comptable.'),
(10, 'Réserves d''attribution gratuite d''actions au personnel salarié et aux dirigeants', '1132', 'Montant des bénéfices non distribués attribués sous forme d''actions gratuites aux salariés et aux dirigeants de l''entreprise.'),
(10, 'Réserves consécutives à l''octroi de subventions d''investissement', '1133', 'Montant des bénéfices non distribués provenant de subventions spécifiquement destinées à des investissements.'),
(10, 'Réserves des valeurs mobilières donnant accès au capital', '1134', 'Montant des bénéfices non distribués liés à des valeurs mobilières (actions, obligations convertibles) qui donnent accès au capital de l''entreprise.'),
(10, 'Autres réserves règlementées', '1138', 'Autres montants de bénéfices non distribués soumis à des règlementations spécifiques.'),



--11
1181 Réserves facultatives
1188 Réserves diverses
(11, 'Réserves facultatives', '1181', 'Montant des bénéfices non distribués qui ont été mis de côté de manière discrétionnaire par la direction de l''entreprise.'),
(11, 'Réserves diverses', '1188', 'Autres montants de bénéfices non distribués mis de côté pour différentes raisons et non spécifiquement réglementés.'),


--12


--13
1291 Perte nette à reporter
1292 Perte - Amortissements réputés différés
(13, 'Perte nette à reporter', '1291', 'Montant cumulatif des pertes nettes accumulées au fil du temps et reportées d''un exercice à l''autre.'),
(13, 'Perte - Amortissements réputés différés', '1292', 'Montant cumulatif des amortissements réputés différés qui ont été comptabilisés et reportés sur plusieurs périodes comptables.'),

-- 14
1301 Résultat en instance d''affectation : Bénéfice
1309 Résultat en instance d''affectation : Perte
(14, 'Résultat en instance d''affectation : Bénéfice', '1301', 'Montant des bénéfices qui sont en attente d''affectation à la clôture de l''exercice comptable.'),
(14, 'Résultat en instance d''affectation : Perte', '1309', 'Montant des pertes qui sont en attente d''affectation à la clôture de l''exercice comptable.'),

-- 15


-- 16 


-- 17 



-- 18 




-- 19


--20


--21



--22
1381 Résultat de fusion
1382 Résultat d''apport partiel d''actif
1383 Résultat de scission
1384 Résultat de liquidation
(22, 'Résultat de fusion', '1381', 'Montant résultant de l''opération de fusion entre deux entités commerciales, qui est affecté au bilan de la nouvelle entité.'),
(22, 'Résultat d''apport partiel d''actif', '1382', 'Montant résultant de l''opération d''apport partiel d''actif, où une société apporte une partie de ses actifs à une autre société en échange de titres.'),
(22, 'Résultat de scission', '1383', 'Montant résultant de l''opération de scission, où une société divise ses activités en plusieurs entités distinctes.'),
(22, 'Résultat de liquidation', '1384', 'Montant résultant de la liquidation d''une société, après que tous ses actifs ont été vendus et ses dettes payées.'),


-- 23


--24
1411 État
1412 Régions
1413 Départements
1414 Communes et collectivités publiques décentralisées
1415 Entités publiques ou mixtes
1416 Entités et organismes privés
1417 Organismes internationaux
1418 Autres
(24, 'État', '1411', 'Montants dus à l''État pour divers impôts, taxes ou redevances.'),
(24, 'Régions', '1412', 'Montants dus aux régions pour divers impôts, taxes ou redevances.'),
(24, 'Départements', '1413', 'Montants dus aux départements pour divers impôts, taxes ou redevances.'),
(24, 'Communes et collectivités publiques décentralisées', '1414', 'Montants dus aux communes et collectivités publiques décentralisées pour divers impôts, taxes ou redevances.'),
(24, 'Entités publiques ou mixtes', '1415', 'Montants dus à des entités publiques ou mixtes pour divers impôts, taxes ou redevances.'),
(24, 'Entités et organismes privés', '1416', 'Montants dus à des entités et organismes privés pour divers impôts, taxes ou redevances.'),
(24, 'Organismes internationaux', '1417', 'Montants dus à des organismes internationaux pour diverses contributions ou redevances.'),
(24, 'Autres', '1418', 'Autres montants dus pour des impôts, taxes ou redevances non spécifiés.'),


-- 25



--26



--27


-- 28
1531 Fonds National
1532 Prélèvement pour le Budget
(28, 'Fonds National', '1531', 'Montants affectés au fonds national pour diverses fins.'),
(28, 'Prélèvement pour le Budget', '1532', 'Montants prélevés pour alimenter le budget national ou d''autres entités.'),

--29 


-- 30
1551 Reconstitution des gisements miniers et pétroliers
(30, 'Reconstitution des gisements miniers et pétroliers', '1551', 'Montants affectés à la reconstitution des gisements miniers et pétroliers pour assurer la durabilité des ressources.')

--31
1561 Hausse de prix
1562 Fluctuation des cours
(31, 'Hausse de prix', '1561', 'Enregistre les variations positives des prix des biens ou services par rapport à une période antérieure.')
(31, 'Fluctuation des cours', '1562', 'Comprend les variations des cours des valeurs mobilières, des matières premières ou d''autres actifs financiers par rapport à une période antérieure.')

--32


--33

--34
1611 Emprunts obligataires ordinaires
1612 Emprunts obligataires convertibles en actions
1613 Emprunts obligataires convertibles en actions
1618 Autres emprunts obligataires


--35

--36


--37


--38
1651 Dépôts
1652 Cautionnements
(38, 'Dépôts', '1651', 'Inclut les montants déposés auprès d''institutions financières ou d''autres entités en tant que garantie ou pour des besoins spécifiques.')
(38, 'Cautionnements', '1652', 'Comprend les sommes déposées ou garanties par une tierce partie en tant que garantie pour l''exécution d''un contrat ou le respect d''une obligation financière.'),

--39
1661 Sur emprunts obligataires
1662 Sur emprunts et dettes auprès des établissements de crédit
1663 Sur avances reçues de l''État
1664 Sur avances reçues et comptes courants bloqués
1665 Sur dépôts et cautionnements reçus
1667 Sur avances assorties de conditions particulières
1668 Sur autres emprunts et dettes
(39, 'Sur emprunts obligataires', '1661', 'Comprend les intérêts courus sur les emprunts obligataires.'),
(39, 'Sur emprunts et dettes auprès des établissements de crédit', '1662', 'Inclut les intérêts courus sur les emprunts et les dettes contractées auprès des établissements de crédit.'),
(39, 'Sur avances reçues de l''État', '1663', 'Comprend les intérêts courus sur les avances reçues de l''État.'),
(39, 'Sur avances reçues et comptes courants bloqués', '1664', 'Inclut les intérêts courus sur les avances reçues et les comptes courants bloqués.'),
(39, 'Sur dépôts et cautionnements reçus', '1665', 'Comprend les intérêts courus sur les dépôts et les cautionnements reçus.'),
(39, 'Sur avances assorties de conditions particulières', '1667', 'Inclut les intérêts courus sur les avances assorties de conditions particulières.'),
(39, 'Sur autres emprunts et dettes', '1668', 'Comprend les intérêts courus sur d''autres emprunts et dettes.'),


-- 40
1671 Avances bloquées pour augmentation du capital
1672 Avances conditionnées par l''État
1673 Avances conditionnées par les autres organismes africains
1674 Avances conditionnées par les organismes internationaux
(40, 'Avances bloquées pour augmentation du capital', '1671', 'Comprend les avances bloquées destinées à être utilisées pour augmenter le capital.'),
(40, "Avances conditionnées par l'État", '1672', 'Inclut les avances conditionnées accordées par l''État.'),
(40, 'Avances conditionnées par les autres organismes africains', '1673', 'Comprend les avances conditionnées accordées par d''autres organismes africains.'),
(40, 'Avances conditionnées par les organismes internationaux', '1674', 'Inclut les avances conditionnées accordées par des organismes internationaux.'),


--41
1681 Rentes viagères capitalisées
1682 Billets de fonds
1683 Dettes consécutives à des titres empruntés
1684 Emprunts participatifs
1685 Participation des travailleurs aux bénéfices
1686 Emprunts et dettes contractés auprès des autres tiers
(41, 'Rentes viagères capitalisées', '1681', 'Comprend les rentes viagères qui ont été capitalisées.'),
(41, 'Billets de fonds', '1682', 'Inclut les billets de fonds.'),
(41, 'Dettes consécutives à des titres empruntés', '1683', 'Comprend les dettes qui résultent de l''emprunt de titres.'),
(41, 'Emprunts participatifs', '1684', 'Inclut les emprunts participatifs.'),
(41, 'Participation des travailleurs aux bénéfices', '1685', 'Comprend la participation des travailleurs aux bénéfices.'),
(41, 'Emprunts et dettes contractés auprès des autres tiers', '1686', 'Inclut les emprunts et les dettes contractés auprès d''autres tiers.'),


--42


--43



--44





--45
1762 Sur dettes de location - acquisition / crédit-bail immobilier
1763 dettes de location - acquisition /crédit-bail mobilier
1764 sur dettes de location - acquisition/location-vente
1768 sur autres dettes de location - acquisition
(45, 'Sur dettes de location - acquisition / crédit-bail immobilier', '1762', 'Comprend les intérêts capitalisés sur les dettes de location - acquisition ou crédit-bail immobilier.'),
(45, 'Sur dettes de location - acquisition / crédit-bail mobilier', '1763', 'Inclut les intérêts capitalisés sur les dettes de location - acquisition ou crédit-bail mobilier.'),
(45, 'Sur dettes de location - acquisition/location-vente', '1764', 'Comprend les intérêts capitalisés sur les dettes de location - acquisition ou location-vente.'),
(45, 'Sur autres dettes de location - acquisition', '1768', 'Inclut les intérêts capitalisés sur d''autres dettes de location - acquisition.'),


--46


--47
1811 Dettes liées à des participations (groupe)
1812 Dettes liées à des participations (hors groupe)
(47, 'Dettes liées à des participations (groupe)', '1811', 'Englobe les dettes résultant de participations dans des sociétés du même groupe.'),
(47, 'Dettes liées à des participations (hors groupe)', '1812', 'Englobe les dettes résultant de participations dans des sociétés hors du groupe.'),


--48

--49

--50

--51

--52

--53

--54

--55

--56

--57

--58

--59

--60
1961 Provisions pour pensions et obligations similaires engagement de retraite
1962 Actif du régime de retraite
(60, 'Provisions pour pensions et obligations similaires engagement de retraite', '1961', 'Comprend les provisions constituées pour couvrir les obligations de l''entreprise envers ses employés en matière de pensions et de retraites, ainsi que d''autres obligations similaires.'),
(60, 'Actif du régime de retraite', '1962', 'Englobe les actifs détenus par le régime de retraite pour couvrir les engagements de retraite futurs.'),


--61

--62
1981 Provisions pour amendes et pénalités
1983 Provisions pour propre assureur
1984 Provision pour démantèlement et remise en état
1985 Provisions pour droit à réduction ou avantage en nature (chèque cadeau, cartes de fidélité)
1988 Provisions pour divers risques et charges
(62, 'Provisions pour amendes et pénalités', '1981', 'Comprend les provisions constituées pour faire face à des amendes ou des pénalités éventuelles résultant d''infractions ou de manquements à des obligations légales ou contractuelles.'),
(62, 'Provisions pour propre assureur', '1983', 'Englobe les provisions constituées pour couvrir des risques assurés par l''entreprise elle-même, généralement en l''absence de couverture d''une compagnie d''assurance externe.'),
(62, 'Provision pour démantèlement et remise en état', '1984', 'Comprend les provisions constituées pour couvrir les coûts estimés du démantèlement et de la remise en état d''installations ou d''équipements à la fin de leur vie utile.'),
(62, 'Provisions pour droit à réduction ou avantage en nature (chèque cadeau, cartes de fidélité)', '1985', 'Englobe les provisions constituées pour honorer les droits à réduction ou les avantages en nature qui seront accordés aux clients, tels que les chèques cadeaux ou les cartes de fidélité.'),
(62, 'Provisions pour divers risques et charges', '1988', 'Regroupe les provisions constituées pour couvrir divers risques et charges non spécifiquement mentionnés dans d''autres comptes de provisions.'),




--63

--64
2121 Brevets
2122 Licences
2123 Concessions de service public
2128 Autres concessions et droits similaires
(64, 'Brevets', '2121', 'Comprend les coûts liés à l''acquisition ou au développement de brevets, qui sont des droits exclusifs accordés pour une invention.'),
(64, 'Licences', '2122', 'Englobe les coûts associés à l''acquisition ou à l''utilisation de licences, qui sont des droits d''utilisation ou de distribution accordés par le titulaire du droit.'),
(64, 'Concessions de service public', '2123', 'Comprend les coûts liés à l''acquisition ou à l''exploitation de concessions de service public, qui sont des droits exclusifs accordés par l''autorité publique pour fournir un service au public.'),
(64, 'Autres concessions et droits similaires', '2128', 'Regroupe les coûts associés à l''acquisition ou à l''exploitation d''autres concessions et droits similaires non spécifiquement mentionnés dans d''autres comptes de concessions et droits.'),



--65
2131 Logiciels
2132 Sites internet
(65, 'Logiciels', '2131', 'Englobe les coûts liés à l''acquisition ou au développement de logiciels informatiques, qui sont des programmes ou des applications utilisés pour exécuter des tâches sur un ordinateur.'),
(65, 'Sites internet', '2132', 'Comprend les coûts liés à l''acquisition ou au développement de sites internet, qui sont des pages web ou des plateformes en ligne utilisées pour diffuser des informations ou fournir des services.'),


--66

--67

--68

--69


--70
2181 Frais de prospection et d''évaluation de ressources minérales
2182 Coûts d''obtention du contrat
2183 Fichiers clients, notices, titres de journaux et magazines
2184 Couts des franchises
2188 Divers droits et valeurs incorporelles
(70, 'Frais de prospection et d''évaluation de ressources minérales', '2181', 'Englobe les coûts engagés pour rechercher et évaluer les ressources minérales, telles que le pétrole, le gaz ou les minerais, dans le but de les exploiter commercialement.'),
(70, 'Coûts d''obtention du contrat', '2182', 'Comprend les coûts associés à l''obtention d''un contrat ou d''une licence pour l''exploitation de droits ou de services, tels que les frais juridiques, les honoraires de conseil et les coûts de négociation.'),
(70, 'Fichiers clients, notices, titres de journaux et magazines', '2183', 'Englobe les coûts liés à l''acquisition ou à la création de fichiers clients, de notices publicitaires, de droits sur des titres de journaux ou de magazines, utilisés dans le cadre des activités commerciales.'),
(70, 'Coûts des franchises', '2184', 'Comprend les frais engagés pour acquérir ou utiliser une franchise commerciale, qui permet à une entreprise d''utiliser un modèle commercial et une marque déjà établis en échange de redevances ou de frais.'),
(70, 'Divers droits et valeurs incorporelles', '2188', 'Englobe d''autres droits et valeurs incorporelles non spécifiquement mentionnés dans les catégories précédentes, tels que les droits d''auteur, les marques de commerce ou les secrets commerciaux.'),


--71
2191 Frais de développement
2193 Logiciels et internet
2198 Autres droits et valeurs incorporels
(71, 'Frais de développement', '2191', 'Comprend les coûts liés au développement de nouveaux produits, services ou technologies, tels que les frais de recherche, de conception et de test.'),
(71, 'Logiciels et internet', '2193', 'Englobe les coûts associés à l''acquisition ou au développement de logiciels informatiques et de solutions Internet, y compris les licences, les développements sur mesure et les abonnements à des services en ligne.'),
(71, 'Autres droits et valeurs incorporels', '2198', 'Englobe d''autres droits et valeurs incorporels non spécifiquement mentionnés dans les catégories précédentes, tels que les droits d''auteur, les marques de commerce ou les secrets commerciaux.'),


--72
2211 Terrains d''exploitation agricole
2212 Terrains d''exploitation forestière
2218 Autres terrains
(72, 'Terrains d''exploitation agricole', '2211', 'Inclut les terrains utilisés pour l''agriculture, tels que les champs cultivés, les vergers et les vignobles.'),
(72, 'Terrains d''exploitation forestière', '2212', 'Englobe les terrains destinés à l''exploitation forestière, notamment les forêts exploitées pour le bois de construction, le bois de chauffage ou d''autres produits forestiers.'),
(72, 'Autres terrains', '2218', 'Comprend les terrains qui ne sont pas spécifiquement utilisés pour l''agriculture ou l''exploitation forestière, tels que les terrains destinés à la construction, les terrains vacants ou les terrains non développés.'),


--73
2221 Terrains à bâtir
2228 Autres terrains nus
(73, 'Terrains à bâtir', '2221', 'Désigne les terrains destinés à la construction de bâtiments, tels que les parcelles réservées pour des projets immobiliers ou des développements urbains.'),
(73, 'Autres terrains nus', '2228', 'Englobe les terrains non bâtis qui ne sont pas spécifiquement réservés à la construction, comme les terrains non développés pour lesquels aucun projet de construction n''est prévu à court terme.'),



--74
2231 Pour bâtiments industriels et agricoles
2232 Pour bâtiments administratifs et commerciaux
2234 Pour bâtiments affectes aux autres opérations professionnelles
2235 Pour bâtiments affectés aux autres opérations non professionnelles
2238 Autres terrains bâtis
(74, 'Pour bâtiments industriels et agricoles', '2231', 'Comprend les terrains utilisés pour la construction de bâtiments destinés à des activités industrielles ou agricoles, comme les usines ou les exploitations agricoles.'),
(74, 'Pour bâtiments administratifs et commerciaux', '2232', 'Englobe les terrains réservés à la construction de bâtiments destinés à des activités administratives ou commerciales, tels que les bureaux ou les magasins.'),
(74, 'Pour bâtiments affectés aux autres opérations professionnelles', '2234', 'Inclut les terrains destinés à la construction de bâtiments utilisés pour d''autres types d''activités professionnelles non spécifiquement industrielles, agricoles, administratives ou commerciales.'),
(74, 'Pour bâtiments affectés aux autres opérations non professionnelles', '2235', 'Comprend les terrains réservés à la construction de bâtiments utilisés pour des opérations non professionnelles, telles que des installations sportives ou récréatives.'),
(74, 'Autres terrains bâtis', '2238', 'Englobe les terrains sur lesquels des bâtiments ont été construits mais qui ne correspondent pas aux catégories spécifiques énumérées ci-dessus.'),


--75
2241 Plantation d''arbres et d''arbustes
2245 Améliorations du fonds
2248 Autres travaux
(75, 'Plantation d''arbres et d''arbustes', '2241', 'Comprend les coûts liés à la plantation d''arbres et d''arbustes sur des terrains, souvent dans le cadre d''activités forestières ou de reboisement.'),
(75, 'Améliorations du fonds', '2245', 'Englobe les coûts associés à l''amélioration ou à la modification des terrains, tels que l''assainissement, le drainage ou d''autres travaux visant à améliorer la qualité ou l''utilité des terrains.'),
(75, 'Autres travaux', '2248', 'Inclut les coûts des travaux sur les terrains qui ne correspondent pas aux catégories spécifiques énumérées ci-dessus.'),


--76
2251 Carrières
(76, 'Carrières', '2251', 'Englobe les coûts liés à l''acquisition et à l''exploitation de carrières pour l''extraction de matériaux tels que la pierre, le sable, le gravier, etc.'),


--77
2261 Parkings
(77, 'Parkings', '2261', 'Comprend les coûts liés à l''acquisition, à la construction et à l''aménagement de parkings destinés au stationnement de véhicules.'),



--78

--79
2281 Terrains immeubles de placement
2285 Terrains des logements affectés au personnel
2286 Terrains de location – acquisition
2288 Divers terrains
(79, 'Terrains immeubles de placement', '2281', 'Comprend les terrains détenus à des fins d''investissement ou de placement.'),
(79, 'Terrains des logements affectés au personnel', '2285', 'Comprend les terrains réservés à la construction de logements destinés au personnel de l''entreprise ou de l''organisation.'),
(79, 'Terrains de location – acquisition', '2286', 'Comprend les terrains acquis dans le cadre de contrats de location-acquisition.'),
(79, 'Divers terrains', '2288', 'Comprend les terrains qui ne rentrent pas dans les catégories précédentes.'),



--80
2291 Terrains agricoles et forestiers
2292 Terrains nus
2295 Terrains de carrières – tréfonds
2298 Autres terrains
(80, 'Terrains agricoles et forestiers', '2291', 'Comprend les terrains utilisés pour des activités agricoles ou forestières.'),
(80, 'Terrains nus', '2292', 'Comprend les terrains non développés ou non construits.'),
(80, 'Terrains de carrières – tréfonds', '2295', 'Comprend les terrains exploités pour des activités de carrières ou de tréfonds.'),
(80, 'Autres terrains', '2298', 'Comprend les terrains qui ne rentrent pas dans les catégories précédentes.'),


--81
2311 Bâtiments industriels
2312 Bâtiments agricoles
2313 Bâtiments administratifs et commerciaux
2314 Bâtiments affectés au logement du personnel
2315 Bâtiments - immeubles de placement
2316 Bâtiments de location-acquisition
(81, 'Bâtiments industriels', '2311', 'Comprend les bâtiments utilisés pour des activités industrielles.'),
(81, 'Bâtiments agricoles', '2312', 'Comprend les bâtiments utilisés pour des activités agricoles.'),
(81, 'Bâtiments administratifs et commerciaux', '2313', 'Comprend les bâtiments utilisés pour des activités administratives ou commerciales.'),
(81, 'Bâtiments affectés au logement du personnel', '2314', 'Comprend les bâtiments utilisés pour le logement du personnel.'),
(81, 'Bâtiments - immeubles de placement', '2315', 'Comprend les bâtiments utilisés comme investissement.'),
(81, 'Bâtiments de location-acquisition', '2316', 'Comprend les bâtiments acquis dans le cadre de contrats de location-acquisition.'),


--82
2321 Bâtiments industriels
2322 Bâtiments agricoles
2323 Bâtiments administratifs et commerciaux
2324 Bâtiments affectés au logement du personnel
2325 Bâtiments - immeubles de placement
2326 Bâtiments de location – acquisition
(82, 'Bâtiments industriels', '2321', 'Comprend les bâtiments industriels.'),
(82, 'Bâtiments agricoles', '2322', 'Comprend les bâtiments utilisés pour des activités agricoles.'),
(82, 'Bâtiments administratifs et commerciaux', '2323', 'Comprend les bâtiments utilisés à des fins administratives ou commerciales.'),
(82, 'Bâtiments affectés au logement du personnel', '2324', 'Comprend les bâtiments utilisés pour le logement du personnel.'),
(82, 'Bâtiments - immeubles de placement', '2325', 'Comprend les bâtiments utilisés comme investissement.'),
(82, 'Bâtiments de location – acquisition', '2326', 'Comprend les bâtiments acquis dans le cadre de contrats de location-acquisition.'),


--83
2331 Voies de terre
2332 Voies de fer
2333 Voies d''eau
2334 Barrages, Digues
2335 Pistes d''aérodrome
2338 Autres ouvrages d''infrastructures
(83, 'Voies de terre', '2331', 'Comprend les routes et chemins terrestres.'),
(83, 'Voies de fer', '2332', 'Comprend les voies ferrées.'),
(83, 'Voies d''eau', '2333', 'Comprend les voies navigables telles que les rivières, les canaux et les ports.'),
(83, 'Barrages, Digues', '2334', 'Comprend les ouvrages de retenue d''eau et les digues.'),
(83, 'Pistes d''aérodrome', '2335', 'Comprend les pistes d''atterrissage et de décollage des aéroports.'),
(83, 'Autres ouvrages d''infrastructures', '2338', 'Comprend d''autres types d''infrastructures non spécifiés.'),


--84
2341 Installations complexes spécialisées sur sol propre
2342 Installations complexes spécialisées sur sol d''autrui
2343 Installations à caractère spécifique sur sol propre
2344 Installations à caractère spécifique sur sol d''autrui
2345 Aménagements et agencements des bâtiments
(84, 'Installations complexes spécialisées sur sol propre', '2341', 'Comprend les installations spécialisées sur un terrain appartenant à l''entreprise.'),
(84, 'Installations complexes spécialisées sur sol d''autrui', '2342', 'Comprend les installations spécialisées sur un terrain appartenant à un tiers.'),
(84, 'Installations à caractère spécifique sur sol propre', '2343', 'Comprend les installations spécifiques sur un terrain appartenant à l''entreprise.'),
(84, 'Installations à caractère spécifique sur sol d''autrui', '2344', 'Comprend les installations spécifiques sur un terrain appartenant à un tiers.'),
(84, 'Aménagements et agencements des bâtiments', '2345', 'Comprend les travaux d''aménagement et d''agencement des bâtiments.'),


--85
2351 Installations générales
2358 Autres aménagements de bureaux
(85, 'Installations générales', '2351', 'Comprend les installations générales dans les locaux de l''entreprise.'),
(85, 'Autres aménagements de bureaux', '2358', 'Comprend les autres aménagements spécifiques des bureaux.'),

--86

--87

--88
2391 Bâtiments en cours 
2392 Installations en cours 
2393 Ouvrages d''infastructures en cours
2394 Aménagements et agencements et installations techniques en cours
2395 Aménagements de bureaux en cours 
2398 Autres installations et agencements en cours
(88, 'Bâtiments en cours', '2391', 'Comprend les bâtiments en cours de construction ou de rénovation.'),
(88, 'Installations en cours', '2392', 'Comprend les installations en cours de construction ou d''installation.'),
(88, 'Ouvrages d''infastructures en cours', '2393', 'Comprend les ouvrages d''infrastructures en cours de construction ou de rénovation.'),
(88, 'Aménagements et agencements et installations techniques en cours', '2394', 'Comprend les aménagements, les agencements et les installations techniques en cours de réalisation.'),
(88, 'Aménagements de bureaux en cours', '2395', 'Comprend les aménagements de bureaux en cours de réalisation.'),
(88, 'Autres installations et agencements en cours', '2398', 'Comprend les autres installations et agencements en cours de réalisation.'),


--89
2411 Matériel industriel
2412 Outillage industriel
2413 Matériel commercial
2414 Outillage commercial
2416 Matériel et outillage industriel et commercial de location - acquisition
(89, 'Matériel industriel', '2411', 'Comprend le matériel utilisé dans le processus de production industrielle.'),
(89, 'Outillage industriel', '2412', 'Comprend les outils et équipements utilisés dans le processus de production industrielle.'),
(89, 'Matériel commercial', '2413', 'Comprend le matériel utilisé dans les activités commerciales.'),
(89, 'Outillage commercial', '2414', 'Comprend les outils et équipements utilisés dans les activités commerciales.'),
(89, 'Matériel et outillage industriel et commercial de location - acquisition', '2416', 'Comprend le matériel et l''outillage industriel et commercial acquis dans le cadre de la location.'),


--90
2421 Matériel agricole
2422 Outillage agricole
2426 Matériel et outillage agricole de location – acquisition
(90, 'Matériel agricole', '2421', 'Comprend le matériel utilisé dans les activités agricoles.'),
(90, 'Outillage agricole', '2422', 'Comprend les outils et équipements utilisés dans les activités agricoles.'),
(90, 'Matériel et outillage agricole de location – acquisition', '2426', 'Comprend le matériel et l''outillage agricole acquis dans le cadre de la location.'),


--91


--92
2441 Matériel de bureau
2442 Matériel informatique
2443 Matériel bureautique
2444 Mobilier de bureau
2445 Matériel et mobilier - immeubles de placement
2446 Matériel et mobilier de location – acquisition
2447 Matériel et mobilier des logements du personnel
(92, 'Matériel de bureau', '2441', 'Comprend le matériel utilisé dans un bureau, tel que des photocopieuses, des fax, etc.'),
(92, 'Matériel informatique', '2442', 'Comprend le matériel informatique, comme les ordinateurs, les serveurs, etc.'),
(92, 'Matériel bureautique', '2443', 'Comprend le matériel de bureau spécifiquement utilisé pour les tâches administratives.'),
(92, 'Mobilier de bureau', '2444', 'Comprend le mobilier utilisé dans un bureau, comme les chaises, les bureaux, etc.'),
(92, 'Matériel et mobilier - immeubles de placement', '2445', 'Comprend le matériel et le mobilier utilisé dans des immeubles de placement.'),
(92, 'Matériel et mobilier de location – acquisition', '2446', 'Comprend le matériel et le mobilier acquis dans le cadre de la location.'),
(92, 'Matériel et mobilier des logements du personnel', '2447', 'Comprend le matériel et le mobilier fourni dans les logements du personnel.'),


--93
2451 Matériel automobile
2452 Matériel ferroviaire
2453 Matériel fluvial, lagunaire
2454 Matériel naval
2455 Matériel aérien
2456 Matériel de transport de location – acquisition
2457 Matériel hippomobile
2458 Autres matériels de transport
(93, 'Matériel automobile', '2451', 'Comprend les véhicules à moteur utilisés pour le transport terrestre, tels que les voitures, les camions, etc.'),
(93, 'Matériel ferroviaire', '2452', 'Comprend le matériel utilisé dans le transport ferroviaire, comme les locomotives, les wagons, etc.'),
(93, 'Matériel fluvial, lagunaire', '2453', 'Comprend le matériel utilisé dans le transport fluvial et lagunaire.'),
(93, 'Matériel naval', '2454', 'Comprend le matériel utilisé dans le transport maritime, comme les navires, les bateaux, etc.'),
(93, 'Matériel aérien', '2455', 'Comprend le matériel utilisé dans le transport aérien, comme les avions, les hélicoptères, etc.'),
(93, 'Matériel de transport de location – acquisition', '2456', 'Comprend le matériel de transport acquis dans le cadre de la location.'),
(93, 'Matériel hippomobile', '2457', 'Comprend le matériel utilisé dans le transport hippomobile, comme les chariots, les calèches, etc.'),
(93, 'Autres matériels de transport', '2458', 'Comprend d''autres types de matériel de transport non spécifiés dans les catégories précédentes.'),


--94
2461 Cheptel, animaux de trait
2462 Cheptel, animaux reproducteurs
2463 Animaux de garde
2465 Plantations agricoles
2468 Autres actifs biologiques
(94, 'Cheptel, animaux de trait', '2461', 'Comprend les animaux utilisés pour le travail agricole, tels que les chevaux, les bœufs, etc.'),
(94, 'Cheptel, animaux reproducteurs', '2462', 'Comprend les animaux destinés à la reproduction dans le cadre de l''élevage, comme les taureaux, les vaches, etc.'),
(94, 'Animaux de garde', '2463', 'Comprend les animaux utilisés pour la garde et la sécurité, tels que les chiens de garde, les chiens de police, etc.'),
(94, 'Plantations agricoles', '2465', 'Comprend les plantations destinées à l''agriculture, comme les champs de céréales, les vergers, les vignobles, etc.'),
(94, 'Autres actifs biologiques', '2468', 'Comprend d''autres actifs biologiques non spécifiés dans les catégories précédentes.'),


--95
2471 Agencements et aménagements du matériel 
2472 Agencements et aménagements des actifs biologiques 
2478 Autres agencements, aménagements du matériel et actifs biologiques
(95, 'Agencements et aménagements du matériel', '2471', 'Comprend les coûts liés à l''installation et à l''aménagement du matériel, tels que les travaux de montage, d''installation électrique, etc.'),
(95, 'Agencements et aménagements des actifs biologiques', '2472', 'Comprend les coûts liés à l''agencement et à l''aménagement des actifs biologiques, tels que l''aménagement des pâturages, des étables, etc.'),
(95, 'Autres agencements, aménagements du matériel et actifs biologiques', '2478', 'Comprend d''autres coûts d''agencement et d''aménagement non spécifiés dans les catégories précédentes.'),


--96
2481 Collections et œuvres d''art
2488 Divers matériels mobiliers
(96, 'Collections et œuvres d''art', '2481', 'Comprend les collections et les œuvres d''art détenues par l''entité.'),
(96, 'Divers matériels mobiliers', '2488', 'Comprend d''autres matériels mobiliers non spécifiés dans les catégories précédentes.'),


--97
2491 Matériel et outillage industriel et commercial
2492 Matériel et outillage agricole
2493 Matériel d''emballage récupérable et identifiable
2494 Matériel et mobilier de bureau
2495 Matériel de transport
2496 Actifs biologiques
2497 Agencements et aménagements du matériel et des actifs biologiques
2498 Autres matériels et actifs biologiques en cours
(97, 'Matériel et outillage industriel et commercial', '2491', 'Comprend le matériel et l''outillage utilisés dans les activités industrielles et commerciales.'),
(97, 'Matériel et outillage agricole', '2492', 'Comprend le matériel et l''outillage utilisés dans les activités agricoles.'),
(97, 'Matériel d''emballage récupérable et identifiable', '2493', 'Comprend le matériel d''emballage qui peut être récupéré et identifié après utilisation.'),
(97, 'Matériel et mobilier de bureau', '2494', 'Comprend le matériel et le mobilier utilisés dans les bureaux.'),
(97, 'Matériel de transport', '2495', 'Comprend le matériel utilisé pour le transport de biens ou de personnes.'),
(97, 'Actifs biologiques', '2496', 'Comprend les actifs biologiques tels que le cheptel, les animaux reproducteurs, les plantations agricoles, etc.'),
(97, 'Agencements et aménagements du matériel et des actifs biologiques', '2497', 'Comprend les agencements et les aménagements réalisés sur le matériel et les actifs biologiques.'),
(97, 'Autres matériels et actifs biologiques en cours', '2498', 'Comprend d''autres matériels et actifs biologiques en cours de traitement ou d''utilisation.'),



--98

--99

--100

--101

--102

--103

--104

--105



--106
2711 Prêts participatifs
2712 Prêts aux associes
2713 Billets de fonds
2714 Créances de location financement
2715 Titres prêtés
2718 Autres prêts et créances
(106, 'Prêts participatifs', '2711', 'Prêts accordés avec une participation aux résultats ou aux pertes de l''entreprise emprunteuse.'),
(106, 'Prêts aux associés', '2712', 'Prêts accordés aux associés de l''entreprise.'),
(106, 'Billets de fonds', '2713', 'Créances résultant de la souscription de billets de fonds.'),
(106, 'Créances de location financement', '2714', 'Créances résultant de contrats de location financement.'),
(106, 'Titres prêtés', '2715', 'Titres financiers prêtés à des tiers.'),
(106, 'Autres prêts et créances', '2718', 'Autres prêts et créances non spécifiquement catégorisés.'),



--107
2721 Prêts immobiliers
2722 Prêts mobiliers et d''installation
2728 Autres prêts au personnel
(107, 'Prêts immobiliers', '2721', 'Prêts accordés pour des acquisitions ou des investissements immobiliers.'),
(107, 'Prêts mobiliers et d''installation', '2722', 'Prêts accordés pour l''acquisition de biens mobiliers ou pour des frais d''installation.'),
(107, 'Autres prêts au personnel', '2728', 'Autres types de prêts accordés au personnel de l''entreprise.'),


--108
2731 Retenues de garantie
2733 Fonds règlementés
2734 Créances sur le concédant 
2738 Autres créances sur l''État
(108, 'Retenues de garantie', '2731', 'Montants retenus en garantie pour assurer l''exécution d''un contrat ou d''une prestation.'),
(108, 'Fonds règlementés', '2733', 'Fonds réglementés spécifiques.'),
(108, 'Créances sur le concédant', '2734', 'Montants dus par le concédant, souvent dans le cadre d''un contrat de concession.'),
(108, 'Autres créances sur l''État', '2738', 'Créances dues par l''État pour des raisons autres que celles spécifiées dans d''autres comptes.'),


--109
2741 Titres immobilisés de l''activité de portefeuille (T.I.A.P.)
2742 Titres participatifs
2743 Certificats d''investissement
2744 Parts de fonds commun de placement (F.C.P.)
2745 Obligations
2746 Actions ou parts propres
2748 Autres titres immobilisés
(109, 'Titres immobilisés de l''activité de portefeuille (T.I.A.P.)', '2741', 'Titres détenus en portefeuille dans le cadre de l''activité d''investissement de l''entité, généralement en vue de générer des revenus par le biais de dividendes, d''intérêts ou de gains en capital.'),
(109, 'Titres participatifs', '2742', 'Titres financiers donnant droit à une part des bénéfices de l''entreprise émettrice, sans pour autant conférer de droit de vote.'),
(109, 'Certificats d''investissement', '2743', 'Titres représentant une participation dans un actif ou un portefeuille d''actifs, souvent émis par des fonds d''investissement ou des sociétés de placement.'),
(109, 'Parts de fonds commun de placement (F.C.P.)', '2744', 'Fraction du capital d''un fonds commun de placement, qui détient des actifs financiers variés, géré de manière collective par une société de gestion pour le compte de plusieurs investisseurs.'),
(109, 'Obligations', '2745', 'Titres de créance émis par des entreprises ou des entités publiques, qui représentent des emprunts contractés auprès des investisseurs et pour lesquels l''émetteur s''engage à rembourser le capital emprunté à une date future convenue, ainsi qu''à verser des intérêts périodiques.'),
(109, 'Actions ou parts propres', '2746', 'Actions ou parts d''une entreprise détenues par elle-même, souvent acquises dans le cadre d''un rachat d''actions ou de parts propres.'),
(109, 'Autres titres immobilisés', '2748', 'Tout autre titre immobilisé non spécifiquement mentionné dans les catégories précédentes, comme des titres de participation dans d''autres entreprises.'),


--110
2751 Dépôts pour loyers d''avance
2752 Dépôts pour l''électricité
2753 Dépôts pour l''eau
2754 Dépôts pour le gaz
2755 Dépôts pour le téléphone, le télex, la télécopie
2756 Cautionnements sur marchés publics
2757 Cautionnements sur autres opérations
2758 Autres dépôts et cautionnement
(110, 'Dépôts pour loyers d''avance', '2751', 'Sommes déposées à l''avance par l''entité en tant que garantie pour le paiement futur des loyers de biens immobiliers loués.'),
(110, 'Dépôts pour l''électricité', '2752', 'Montants versés à titre de dépôt de garantie pour l''électricité fournie par des fournisseurs de services publics ou d''autres fournisseurs d''électricité.'),
(110, 'Dépôts pour l''eau', '2753', 'Fonds déposés à titre de garantie pour l''utilisation future de services d''approvisionnement en eau, généralement fournis par des sociétés de services publics ou des autorités locales.'),
(110, 'Dépôts pour le gaz', '2754', 'Sommes déposées en garantie pour l''utilisation future de services de fourniture de gaz, souvent par des sociétés de services publics ou des fournisseurs de gaz.'),
(110, 'Dépôts pour le téléphone, le télex, la télécopie', '2755', 'Montants déposés en tant que garantie pour l''utilisation future des services de télécommunications, y compris le téléphone, le télex et la télécopie, fournis par des opérateurs de télécommunications.'),
(110, 'Cautionnements sur marchés publics', '2756', 'Garanties financières fournies par l''entité pour garantir la bonne exécution de contrats ou de marchés conclus avec des entités publiques.'),
(110, 'Cautionnements sur autres opérations', '2757', 'Garanties financières fournies par l''entité dans le cadre d''autres transactions ou opérations, en dehors des marchés publics.'),
(110, 'Autres dépôts et cautionnement', '2758', 'Tout autre dépôt ou cautionnement non spécifiquement lié aux catégories précédentes, utilisé comme garantie pour diverses transactions ou obligations.'),


--111
2761 Prêts et créances non commerciales
2762 Prêts au personnel
2763 Créances sur l''État
2764 Titres immobilisés
2765 Dépôts et cautionnements versés
2767 Créances rattachées à des participations
2768 Immobilisations financières diverses
(111, 'Prêts et créances non commerciales', '2761', 'Montants dus à l''entité qui ne découlent pas d''activités commerciales habituelles, souvent liés à des prêts consentis ou à des créances résultant de transactions non commerciales.'),
(111, 'Prêts au personnel', '2762', 'Montants prêtés au personnel de l''entité, souvent dans le cadre de politiques de prêt interne ou de programmes d''aide financière aux employés.'),
(111, 'Créances sur l''État', '2763', 'Montants dus à l''entité par des organismes gouvernementaux ou des entités publiques pour diverses raisons, telles que des subventions, des remboursements d''impôts ou des paiements pour des biens ou services fournis.'),
(111, 'Titres immobilisés', '2764', 'Instruments financiers détenus par l''entité à long terme, tels que des actions ou des obligations, qui ne sont pas destinés à être négociés activement sur le marché.'),
(111, 'Dépôts et cautionnements versés', '2765', 'Montants versés par l''entité à titre de dépôts ou de garanties dans le cadre de diverses transactions ou obligations.'),
(111, 'Créances rattachées à des participations', '2767', 'Montants dus à l''entité résultant de participations dans d''autres entreprises, souvent sous forme de dividendes à recevoir ou d''intérêts sur des prêts consentis à ces entreprises.'),
(111, 'Immobilisations financières diverses', '2768', 'Autres actifs financiers à long terme détenus par l''entité et qui ne sont pas spécifiquement catégorisés dans les autres rubriques.'),


--112
2771 Créances rattachées à des participations (groupe)
2772 Créances rattachées à des participations (hors groupe)
2773 Créances rattachées à des sociétés en participation
2774 Avances à des Groupements d''intérêt économique (G.I.E.)
(112, 'Créances rattachées à des participations (groupe)', '2771', 'Montants dus à l''entité résultant de participations dans d''autres entreprises appartenant au même groupe économique, souvent sous forme de dividendes à recevoir ou d''intérêts sur des prêts consentis à ces entreprises.'),
(112, 'Créances rattachées à des participations (hors groupe)', '2772', 'Montants dus à l''entité résultant de participations dans d''autres entreprises qui ne font pas partie du même groupe économique, souvent sous forme de dividendes à recevoir ou d''intérêts sur des prêts consentis à ces entreprises.'),
(112, 'Créances rattachées à des sociétés en participation', '2773', 'Montants dus à l''entité résultant de participations dans des sociétés en participation, souvent sous forme de dividendes à recevoir ou d''intérêts sur des prêts consentis à ces sociétés.'),
(112, 'Avances à des Groupements d''intérêt économique (G.I.E.)', '2774', 'Montants avancés par l''entité à des Groupements d''intérêt économique (G.I.E.), souvent dans le cadre de partenariats ou de collaborations commerciales.'),


--113
2781 Créances diverses groupe
2782 Créances diverses hors groupe
2784 Banques dépôts à terme
2785 Or et métaux précieux (1)
2788 Autres immobilisations financières
(113, 'Créances diverses groupe', '2781', 'Ensemble des montants dus à l''entité résultant de diverses transactions commerciales ou financières avec des entités appartenant au même groupe économique, autres que les créances rattachées à des participations.'),
(113, 'Créances diverses hors groupe', '2782', 'Ensemble des montants dus à l''entité résultant de diverses transactions commerciales ou financières avec des entités qui ne font pas partie du même groupe économique, autres que les créances rattachées à des participations.'),
(113, 'Banques dépôts à terme', '2784', 'Montants placés par l''entité sous forme de dépôts à terme dans des banques ou des institutions financières, généralement pour une durée fixe et à un taux d''intérêt convenu à l''avance.'),
(113, 'Or et métaux précieux (1)', '2785', 'Montants investis par l''entité dans l''achat et la détention d''or et d''autres métaux précieux à des fins d''investissement ou de spéculation.'),
(113, 'Autres immobilisations financières', '2788', 'Ensemble des autres actifs financiers détenus par l''entité qui ne rentrent pas dans les catégories spécifiques déjà mentionnées, tels que les prêts non commerciaux, les titres immobilisés, etc.'),


--114
2811 Amortissements des frais de développement
2812 Amortissements des brevets, licences, concessions et droits similaires
2813 Amortissements des logiciels et sites internet
2814 Amortissements des marques
2815 Amortissements du fonds commercial
2816 Amortissements du droit au bail
2817 Amortissements des investissements de création
2818 Amortissements des autres droits et valeurs incorporels
(114, 'Amortissements des frais de développement', '2811', 'Montants comptabilisés périodiquement pour amortir les frais engagés par l''entité pour développer de nouveaux produits, procédés ou services, généralement répartis sur leur durée d''utilisation prévue.'),
(114, 'Amortissements des brevets, licences, concessions et droits similaires', '2812', 'Montants comptabilisés périodiquement pour amortir la valeur des brevets, licences, concessions et droits similaires détenus par l''entité, généralement répartis sur leur durée d''utilisation prévue.'),
(114, 'Amortissements des logiciels et sites internet', '2813', 'Montants comptabilisés périodiquement pour amortir la valeur des logiciels et sites internet détenus par l''entité, généralement répartis sur leur durée d''utilisation prévue.'),
(114, 'Amortissements des marques', '2814', 'Montants comptabilisés périodiquement pour amortir la valeur des marques détenues par l''entité, généralement répartis sur leur durée d''utilisation prévue.'),
(114, 'Amortissements du fonds commercial', '2815', 'Montants comptabilisés périodiquement pour amortir la valeur du fonds commercial de l''entité, généralement répartis sur sa durée d''utilisation prévue.'),
(114, 'Amortissements du droit au bail', '2816', 'Montants comptabilisés périodiquement pour amortir la valeur du droit au bail détenu par l''entité, généralement répartis sur sa durée d''utilisation prévue.'),
(114, 'Amortissements des investissements de création', '2817', 'Montants comptabilisés périodiquement pour amortir la valeur des investissements de création réalisés par l''entité, généralement répartis sur leur durée d''utilisation prévue.'),
(114, 'Amortissements des autres droits et valeurs incorporels', '2818', 'Montants comptabilisés périodiquement pour amortir la valeur des autres droits et valeurs incorporels détenus par l''entité, généralement répartis sur leur durée d''utilisation prévue.'),


--115
2824 Amortissements des travaux de mise en valeur des terrains
(115, 'Amortissements des travaux de mise en valeur des terrains', '2824', 'Montants comptabilisés périodiquement pour amortir la valeur des travaux de mise en valeur des terrains réalisés par l''entité, généralement répartis sur leur durée d''utilisation prévue.'),


--116
2831 Amortissements des bâtiments industriels, agricoles, administratifs et commerciaux sur sol propre
2832 Amortissements des bâtiments industriels, agricoles, administratifs et commerciaux sur sol d''autrui
2833 Amortissements des ouvrages d''infrastructure
2834 Amortissements des aménagements, agencements et installations techniques
2835 Amortissements des aménagements de bureaux
2837 Amortissements des bâtiments industriels, agricoles et commerciaux mis en concession
2838 Amortissements des autres installations et agencements
(116, 'Amortissements des bâtiments industriels, agricoles, administratifs et commerciaux sur sol propre', '2831', 'Montants comptabilisés périodiquement pour amortir la valeur des bâtiments industriels, agricoles, administratifs et commerciaux construits sur un terrain propre à l''entité.'),
(116, 'Amortissements des bâtiments industriels, agricoles, administratifs et commerciaux sur sol d''autrui', '2832', 'Montants comptabilisés périodiquement pour amortir la valeur des bâtiments industriels, agricoles, administratifs et commerciaux construits sur un terrain appartenant à une autre entité.'),
(116, 'Amortissements des ouvrages d''infrastructure', '2833', 'Montants comptabilisés périodiquement pour amortir la valeur des ouvrages d''infrastructure tels que les routes, les ponts, les digues, etc.'),
(116, 'Amortissements des aménagements, agencements et installations techniques', '2834', 'Montants comptabilisés périodiquement pour amortir la valeur des aménagements, agencements et installations techniques réalisés par l''entité.'),
(116, 'Amortissements des aménagements de bureaux', '2835', 'Montants comptabilisés périodiquement pour amortir la valeur des aménagements spécifiques réalisés dans les bureaux de l''entité.'),
(116, 'Amortissements des bâtiments industriels, agricoles et commerciaux mis en concession', '2837', 'Montants comptabilisés périodiquement pour amortir la valeur des bâtiments industriels, agricoles et commerciaux mis en concession par l''entité.'),
(116, 'Amortissements des autres installations et agencements', '2838', 'Montants comptabilisés périodiquement pour amortir la valeur des autres installations et agencements réalisés par l''entité.'),


--117
2841 Amortissements du matériel et outillage industriel et commercial
2842 Amortissements du matériel et outillage agricole
2843 Amortissements du matériel d''emballage récupérable et identifiable 
2844 Amortissements du matériel et mobilier
2845 Amortissements du matériel de transport
2846 Amortissements des actifs biologiques
2847 Amortissements des agencements et aménagements du matériel et des actifs biologiques
2848 Amortissements des autres matériels
(117, 'Amortissements du matériel et outillage industriel et commercial', '2841', 'Montants comptabilisés périodiquement pour amortir la valeur du matériel et de l''outillage utilisés dans les activités industrielles et commerciales de l''entité.'),
(117, 'Amortissements du matériel et outillage agricole', '2842', 'Montants comptabilisés périodiquement pour amortir la valeur du matériel et de l''outillage utilisés dans les activités agricoles de l''entité.'),
(117, 'Amortissements du matériel d''emballage récupérable et identifiable', '2843', 'Montants comptabilisés périodiquement pour amortir la valeur du matériel d''emballage récupérable et identifiable utilisé par l''entité.'),
(117, 'Amortissements du matériel et mobilier', '2844', 'Montants comptabilisés périodiquement pour amortir la valeur du matériel et du mobilier utilisés par l''entité.'),
(117, 'Amortissements du matériel de transport', '2845', 'Montants comptabilisés périodiquement pour amortir la valeur du matériel de transport utilisé par l''entité.'),
(117, 'Amortissements des actifs biologiques', '2846', 'Montants comptabilisés périodiquement pour amortir la valeur des actifs biologiques détenus par l''entité.'),
(117, 'Amortissements des agencements et aménagements du matériel et des actifs biologiques', '2847', 'Montants comptabilisés périodiquement pour amortir la valeur des agencements et aménagements réalisés sur le matériel et les actifs biologiques détenus par l''entité.'),
(117, 'Amortissements des autres matériels', '2848', 'Montants comptabilisés périodiquement pour amortir la valeur des autres matériels détenus par l''entité.'),


--118
2911 Dépréciations des frais de développement
2912 Dépréciations des brevets, licences, concessions et droits similaires
2913 Dépréciations des logiciels et sites internet
2914 Dépréciations des marques
2915 Dépréciations du fonds commercial
2916 Dépréciations du droit au bail
2917 Dépréciations des investissements de création
2918 Dépréciations des autres droits et valeurs incorporels
2919 Dépréciations des immobilisations incorporelles en cours
(118, 'Dépréciations des frais de développement', '2911', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des frais de développement engagés par l''entité.'),
(118, 'Dépréciations des brevets, licences, concessions et droits similaires', '2912', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des brevets, licences, concessions et droits similaires détenus par l''entité.'),
(118, 'Dépréciations des logiciels et sites internet', '2913', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des logiciels et sites internet détenus par l''entité.'),
(118, 'Dépréciations des marques', '2914', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des marques détenues par l''entité.'),
(118, 'Dépréciations du fonds commercial', '2915', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur du fonds commercial détenu par l''entité.'),
(118, 'Dépréciations du droit au bail', '2916', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur du droit au bail détenu par l''entité.'),
(118, 'Dépréciations des investissements de création', '2917', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des investissements de création réalisés par l''entité.'),
(118, 'Dépréciations des autres droits et valeurs incorporels', '2918', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des autres droits et valeurs incorporels détenus par l''entité.'),
(118, 'Dépréciations des immobilisations incorporelles en cours', '2919', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des immobilisations incorporelles en cours de réalisation par l''entité.'),


--119
2921 Dépréciations des terrains agricoles et forestiers
2922 Dépréciations des terrains nus
2923 Dépréciations des terrains bâtis
2924 Dépréciations des travaux de mise en valeur des terrains
2925 Dépréciations des terrains de gisement
2926 Dépréciations des terrains aménagés
2927 Dépréciations des terrains mis en concession
2928 Dépréciations des autres terrains
2929 Dépréciations des aménagements de terrains en cours
(119, 'Dépréciations des terrains agricoles et forestiers', '2921', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des terrains agricoles et forestiers détenus par l''entité.'),
(119, 'Dépréciations des terrains nus', '2922', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des terrains nus détenus par l''entité.'),
(119, 'Dépréciations des terrains bâtis', '2923', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des terrains bâtis détenus par l''entité.'),
(119, 'Dépréciations des travaux de mise en valeur des terrains', '2924', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des travaux de mise en valeur des terrains réalisés par l''entité.'),
(119, 'Dépréciations des terrains de gisement', '2925', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des terrains de gisement détenus par l''entité.'),
(119, 'Dépréciations des terrains aménagés', '2926', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des terrains aménagés détenus par l''entité.'),
(119, 'Dépréciations des terrains mis en concession', '2927', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des terrains mis en concession détenus par l''entité.'),
(119, 'Dépréciations des autres terrains', '2928', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des autres terrains détenus par l''entité.'),
(119, 'Dépréciations des aménagements de terrains en cours', '2929', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des aménagements de terrains en cours de réalisation par l''entité.'),


--120
2931 Dépréciations des bâtiments industriels, agricoles, adminis tratifs et commerciaux sur sol propre
2932 Dépréciations des bâtiments industriels, agricoles, adminis tratifs et commerciaux sur sol d''autrui
2933 Dépréciations des ouvrages d''infrastructures
2934 Dépréciations des aménagements, agencements et installations techniques
2935 Dépréciations des aménagements de bureaux
2937 Dépréciations des bâtiments industriels, agricoles et commerciaux mis en concession
2938 Dépréciations des autres installations et agencements
2939 Dépréciations des bâtiments et installations en cours
(120, 'Dépréciations des bâtiments industriels, agricoles, administratifs et commerciaux sur sol propre', '2931', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des bâtiments industriels, agricoles, administratifs et commerciaux construits sur un sol appartenant à l''entité.'),
(120, 'Dépréciations des bâtiments industriels, agricoles, administratifs et commerciaux sur sol d''autrui', '2932', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des bâtiments industriels, agricoles, administratifs et commerciaux construits sur un sol appartenant à autrui, mais utilisés par l''entité.'),
(120, 'Dépréciations des ouvrages d''infrastructures', '2933', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des ouvrages d''infrastructures, tels que les routes, les ponts, les tunnels, etc., détenus par l''entité.'),
(120, 'Dépréciations des aménagements, agencements et installations techniques', '2934', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des aménagements, agencements et installations techniques réalisés par l''entité.'),
(120, 'Dépréciations des aménagements de bureaux', '2935', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des aménagements réalisés dans les bureaux de l''entité.'),
(120, 'Dépréciations des bâtiments industriels, agricoles et commerciaux mis en concession', '2937', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des bâtiments industriels, agricoles et commerciaux construits sur un sol concédé à l''entité.'),
(120, 'Dépréciations des autres installations et agencements', '2938', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des autres installations et agencements réalisés par l''entité.'),
(120, 'Dépréciations des bâtiments et installations en cours', '2939', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des bâtiments et installations en cours de réalisation par l''entité.'),


--121
2941 Dépréciations du matériel et outillage industriel et commercial
2942 Dépréciations du matériel et outillage agricole
2943 Dépréciations du matériel d''emballage récupérable et identifiable
2944 Dépréciations du matériel et mobilier
2945 Dépréciations du matériel de transport
2946 Dépréciations des actifs biologiques
2947 Dépréciations des agencements et aménagements du matériel et des actifs biologiques
2948 Dépréciations des autres matériels
2949 Dépréciations de matériel en cours
(121, 'Dépréciations du matériel et outillage industriel et commercial', '2941', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur du matériel et de l''outillage utilisés dans les activités industrielles et commerciales de l''entité.'),
(121, 'Dépréciations du matériel et outillage agricole', '2942', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur du matériel et de l''outillage utilisés dans les activités agricoles de l''entité.'),
(121, 'Dépréciations du matériel d''emballage récupérable et identifiable', '2943', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur du matériel d''emballage récupérable et identifiable utilisé dans les opérations de l''entité.'),
(121, 'Dépréciations du matériel et mobilier', '2944', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur du matériel et du mobilier utilisé dans les activités de l''entité.'),
(121, 'Dépréciations du matériel de transport', '2945', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur du matériel de transport utilisé dans les opérations de l''entité.'),
(121, 'Dépréciations des actifs biologiques', '2946', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des actifs biologiques détenus par l''entité, tels que le cheptel ou les plantations.'),
(121, 'Dépréciations des agencements et aménagements du matériel et des actifs biologiques', '2947', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des agencements et aménagements réalisés sur le matériel et les actifs biologiques de l''entité.'),
(121, 'Dépréciations des autres matériels', '2948', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur des autres matériels détenus par l''entité et non spécifiquement catégorisés ailleurs.'),
(121, 'Dépréciations de matériel en cours', '2949', 'Montants comptabilisés périodiquement pour constater la dépréciation de la valeur du matériel en cours de réalisation par l''entité.')


--122
2951 Dépréciations des avances et acomptes versés sur immobilisations incorporelles
2952 Dépréciations des avances et acomptes versés sur immobilisations corporelles
(122, 'Dépréciations des avances et acomptes versés sur immobilisations incorporelles', '2951', 'Montants comptabilisés périodiquement pour constater la dépréciation des avances et acomptes versés sur des immobilisations incorporelles qui sont en cours de réalisation ou dont la valeur a diminué.'),
(122, 'Dépréciations des avances et acomptes versés sur immobilisations corporelles', '2952', 'Montants comptabilisés périodiquement pour constater la dépréciation des avances et acomptes versés sur des immobilisations corporelles qui sont en cours de réalisation ou dont la valeur a diminué.'),


--123
2961 Dépréciations des titres de participation dans des sociétés sous contrôle exclusif
2962 Dépréciations des titres de participation dans les sociétés sous contrôle conjoint
2963 Dépréciations des titres de participation dans les sociétés conférant une influence notable
2965 Dépréciations des participations dans des organismes professionnels
2966 Dépréciations des parts dans des GIE
2968 Dépréciations des autres titres de participation
(123, 'Dépréciations des titres de participation dans des sociétés sous contrôle exclusif', '2961', 'Montants comptabilisés périodiquement pour constater la dépréciation des titres de participation dans des sociétés où l''entreprise exerce un contrôle exclusif, lorsque leur valeur a diminué de manière durable.'),
(123, 'Dépréciations des titres de participation dans les sociétés sous contrôle conjoint', '2962', 'Montants comptabilisés périodiquement pour constater la dépréciation des titres de participation dans des sociétés où l''entreprise exerce un contrôle conjoint, lorsque leur valeur a diminué de manière durable.'),
(123, 'Dépréciations des titres de participation dans les sociétés conférant une influence notable', '2963', 'Montants comptabilisés périodiquement pour constater la dépréciation des titres de participation dans des sociétés où l''entreprise détient une influence notable, lorsque leur valeur a diminué de manière durable.'),
(123, 'Dépréciations des participations dans des organismes professionnels', '2965', 'Montants comptabilisés périodiquement pour constater la dépréciation des participations dans des organismes professionnels lorsque leur valeur a diminué de manière durable.'),
(123, 'Dépréciations des parts dans des GIE', '2966', 'Montants comptabilisés périodiquement pour constater la dépréciation des parts dans des Groupements d''Intérêt Économique lorsque leur valeur a diminué de manière durable.'),
(123, 'Dépréciations des autres titres de participation', '2968', 'Montants comptabilisés périodiquement pour constater la dépréciation des autres titres de participation lorsque leur valeur a diminué de manière durable.'),


--124
2971 Dépréciations des prêts et créances
2972 Dépréciations des prêts au personnel
2973 Dépréciations des créances sur l''État
2974 Dépréciations des titres immobilisés
2975 Dépréciations des dépôts et cautionnements versés
2977 Dépréciations des créances rattachées à des participations et avances à des GIE
2978 Dépréciations des créances financières diverses
(124, 'Dépréciations des prêts et créances', '2971', 'Montants comptabilisés périodiquement pour constater la dépréciation des prêts et créances lorsque leur valeur a diminué de manière durable.'),
(124, 'Dépréciations des prêts au personnel', '2972', 'Montants comptabilisés périodiquement pour constater la dépréciation des prêts consentis au personnel lorsque leur valeur a diminué de manière durable.'),
(124, 'Dépréciations des créances sur l''État', '2973', 'Montants comptabilisés périodiquement pour constater la dépréciation des créances sur l''État lorsque leur valeur a diminué de manière durable.'),
(124, 'Dépréciations des titres immobilisés', '2974', 'Montants comptabilisés périodiquement pour constater la dépréciation des titres immobilisés lorsque leur valeur a diminué de manière durable.'),
(124, 'Dépréciations des dépôts et cautionnements versés', '2975', 'Montants comptabilisés périodiquement pour constater la dépréciation des dépôts et cautionnements versés lorsque leur valeur a diminué de manière durable.'),
(124, 'Dépréciations des créances rattachées à des participations et avances à des GIE', '2977', 'Montants comptabilisés périodiquement pour constater la dépréciation des créances rattachées à des participations et avances à des Groupements d''Intérêt Économique lorsque leur valeur a diminué de manière durable.'),
(124, 'Dépréciations des créances financières diverses', '2978', 'Montants comptabilisés périodiquement pour constater la dépréciation des autres créances financières lorsque leur valeur a diminué de manière durable.'),


--125
3111 Marchandises A1
3112 Marchandises A2
(125, 'Marchandises A1', '3111', 'Comprend les biens destinés à la revente qui sont classés dans la catégorie A1.'),
(125, 'Marchandises A2', '3112', 'Comprend les biens destinés à la revente qui sont classés dans la catégorie A2.'),


--126
3121 Marchandises B1
3122 Marchandises B2
(126, 'Marchandises B1', '3121', 'Comprend les biens destinés à la revente qui sont classés dans la catégorie B1.'),
(126, 'Marchandises B2', '3122', 'Comprend les biens destinés à la revente qui sont classés dans la catégorie B2.'),


--127
3131 Animaux
3132 Végétaux
(127, 'Animaux', '3131', 'Comprend les animaux destinés à la revente ou à être utilisés dans le processus de production.'),
(127, 'Végétaux', '3132', 'Comprend les plantes destinées à la revente ou à être utilisées dans le processus de production.'),


--128

--129

--130

--131

--132

--133

--134

--135

--136
3351 Emballages perdus
3352 Emballages récupérables non identifiables
3353 Emballages à usage mixte
3358 Autres emballages
(136, 'Emballages perdus', '3351', 'Comprend les emballages perdus lors du processus de vente ou de production.'),
(136, 'Emballages récupérables non identifiables', '3352', 'Comprend les emballages qui peuvent être récupérés mais qui ne sont pas identifiables de manière individuelle.'),
(136, 'Emballages à usage mixte', '3353', 'Comprend les emballages pouvant être réutilisés à des fins multiples.'),
(136, 'Autres emballages', '3358', 'Comprend les emballages non inclus dans les catégories précédentes.'),


--137

--138
3411 Produits en cours P1
3412 Produits en cours P2
(138, 'Produits en cours P1', '3411', 'Comprend les produits en cours de fabrication ou de transformation, correspondant à une étape spécifique du processus de production.'),
(138, 'Produits en cours P2', '3412', 'Comprend les produits en cours de fabrication ou de transformation, correspondant à une autre étape spécifique du processus de production.'),


--139
3421 Travaux en cours T1
3422 Travaux en cours T2
(139, 'Travaux en cours T1', '3421', 'Comprend les travaux en cours correspondant à une étape spécifique d''un chantier ou d''un projet en cours.'),
(139, 'Travaux en cours T2', '3422', 'Comprend les travaux en cours correspondant à une autre étape spécifique d''un chantier ou d''un projet en cours.'),



--140
3431 Produits intermédiaires A
3432 Produits intermédiaires B
(140, 'Produits intermédiaires A', '3431', 'Comprend les produits en cours de fabrication qui sont à un stade intermédiaire de production et qui nécessitent encore des transformations ou des processus supplémentaires.'),
(140, 'Produits intermédiaires B', '3432', 'Comprend les produits en cours de fabrication qui sont à un stade intermédiaire de production et qui nécessitent encore des transformations ou des processus supplémentaires.'),


--141
3441 Produits résiduels A
3442 Produits résiduels B
(141, 'Produits résiduels A', '3441', 'Comprend les produits restants après le processus de production principale, pouvant être recyclés, retraités ou utilisés dans d''autres processus.'),
(141, 'Produits résiduels B', '3442', 'Comprend les produits restants après le processus de production principale, pouvant être recyclés, retraités ou utilisés dans d''autres processus.'),


--142
3451 Animaux
3452 Végétaux
(142, 'Animaux', '3451', 'Comprend les animaux utilisés dans le processus de production ou destinés à la vente.'),
(142, 'Végétaux', '3452', 'Comprend les plantes et les cultures utilisées dans le processus de production ou destinées à la vente.'),


--143
3511 Études en cours E1
3512 Études en cours E2
(143, 'Études en cours E1', '3511', 'Comprend les études en cours pour le développement de nouveaux produits ou services.'),
(143, 'Études en cours E2', '3512', 'Comprend les études en cours pour l''amélioration des produits ou services existants.'),


--144
3521 Prestations de services S1
3522 Prestations de services S2
(144, 'Prestations de services S1', '3521', 'Comprend les prestations de services en cours pour des clients ou des partenaires.'),
(144, 'Prestations de services S2', '3522', 'Comprend les prestations de services en cours internes à l''entreprise.'),


--145

--146

--147
3631 Animaux
3632 Végétaux
3638 Autres stocks (activités annexe)
(147, 'Animaux', '3631', 'Comprend les stocks d''animaux détenus pour des activités annexes.'),
(147, 'Végétaux', '3632', 'Comprend les stocks de végétaux détenus pour des activités annexes.'),
(147, 'Autres stocks (activités annexe)', '3638', 'Comprend les autres types de stocks détenus pour des activités annexes.'),


--148
3711 Produits intermédiaires A
3712 Produits intermédiaires B
(148, 'Produits intermédiaires A', '3711', 'Comprend les produits intermédiaires de type A.'),
(148, 'Produits intermédiaires B', '3712', 'Comprend les produits intermédiaires de type B.'),


--149
3721 Déchets
3722 Rebuts
3723 Matières de récupération
(149, 'Déchets', '3721', 'Comprend les déchets générés par le processus de production ou d''autres activités.'),
(149, 'Rebuts', '3722', 'Comprend les rebuts produits lors du processus de production ou d''autres activités.'),
(149, 'Matières de récupération', '3723', 'Comprend les matières pouvant être récupérées ou recyclées.'),


--150
3731 Animaux
3732 Végétaux 
3738 Autres stocks (activités annexe)
(150, 'Animaux', '3731', 'Comprend les animaux détenus en stock pour diverses activités, comme l''élevage ou la revente.'),
(150, 'Végétaux', '3732', 'Comprend les végétaux détenus en stock pour diverses activités, comme l''agriculture ou la vente de plantes.'),
(150, 'Autres stocks (activités annexe)', '3738', 'Comprend les autres types de stocks détenus pour des activités annexes non spécifiées.'),


--151

--152

--153

--154

--155
3871 Stock en consignation
3872 Stock en dépôt
(155, 'Stock en consignation', '3871', 'Stock de marchandises ou de produits placé chez un tiers (consignataire) en vue de leur vente.'),
(155, 'Stock en dépôt', '3872', 'Stock de marchandises ou de produits entreposé chez un tiers (dépositaire) pour diverses raisons, comme le stockage temporaire ou la distribution ultérieure.'),



--156

--157

--158

--159

--160

--161

--162

--163

--164


--165
4011 Fournisseurs
4012 Fournisseurs Groupe
4013 Fournisseurs sous-traitants
4016 Fournisseurs réserve de propriété
4017 Fournisseurs retenues de garantie
(165, 'Fournisseurs', '4011', 'Montant dû aux fournisseurs pour l''achat de biens ou services.')
(165, 'Fournisseurs Groupe', '4012', 'Montant dû aux fournisseurs faisant partie du même groupe d''entreprises.'),
(165, 'Fournisseurs sous-traitants', '4013', 'Montant dû aux fournisseurs qui fournissent des biens ou services dans le cadre d''une sous-traitance.'),
(165, 'Fournisseurs réserve de propriété', '4016', 'Montant dû aux fournisseurs pour des biens dont la propriété n''a pas encore été transférée à l''acheteur en raison d''une réserve de propriété.'),
(165, 'Fournisseurs retenues de garantie', '4017', 'Montant dû aux fournisseurs pour lequel une partie du paiement est retenue en garantie jusqu''à la satisfaction de certaines conditions ou la fin d''une période donnée.'),


--166
4021 Fournisseurs, Effets à payer
4022 Fournisseurs - Groupe, Effets à payer
4023 Fournisseurs sous-traitants, Effets à payer
(166, 'Fournisseurs, Effets à payer', '4021', 'Montant dû aux fournisseurs pour lequel des effets à payer ont été émis en tant que moyen de paiement différé.'),
(166, 'Fournisseurs - Groupe, Effets à payer', '4022', 'Montant dû aux fournisseurs faisant partie du même groupe d''entreprises pour lequel des effets à payer ont été émis en tant que moyen de paiement différé.'),
(166, 'Fournisseurs sous-traitants, Effets à payer', '4023', 'Montant dû aux fournisseurs sous-traitants pour lequel des effets à payer ont été émis en tant que moyen de paiement différé.'),


--167
4041 Fournisseurs dettes en compte, immobilisations incorporelles
4042 Fournisseurs dettes en compte, immobilisations corporelles
4046 Fournisseurs effets à payer, immobilisations incorporelles
4047 Fournisseurs effets à payer, immobilisations corporelles
(167, 'Fournisseurs dettes en compte, immobilisations incorporelles', '4041', 'Montant dû aux fournisseurs pour l''acquisition d''immobilisations incorporelles enregistrées en tant que dettes sur compte.'),
(167, 'Fournisseurs dettes en compte, immobilisations corporelles', '4042', 'Montant dû aux fournisseurs pour l''acquisition d''immobilisations corporelles enregistrées en tant que dettes sur compte.'),
(167, 'Fournisseurs effets à payer, immobilisations incorporelles', '4046', 'Montant dû aux fournisseurs pour l''acquisition d''immobilisations incorporelles pour lesquelles des effets à payer ont été émis en tant que moyen de paiement différé.'),
(167, 'Fournisseurs effets à payer, immobilisations corporelles', '4047', 'Montant dû aux fournisseurs pour l''acquisition d''immobilisations corporelles pour lesquelles des effets à payer ont été émis en tant que moyen de paiement différé.'),


--168
4081 Fournisseurs
4082 Fournisseurs Groupe
4083 Fournisseurs sous-traitants
4086 Fournisseurs, intérêts courus
(168, 'Fournisseurs', '4081', 'Montant dû aux fournisseurs pour des biens ou des services fournis.'),
(168, 'Fournisseurs Groupe', '4082', 'Montant dû aux fournisseurs appartenant au même groupe pour des biens ou des services fournis.'),
(168, 'Fournisseurs sous-traitants', '4083', 'Montant dû aux fournisseurs qui fournissent des biens ou des services dans le cadre d''un contrat de sous-traitance.'),
(168, 'Fournisseurs, intérêts courus', '4086', 'Montant dû aux fournisseurs pour des intérêts courus sur des dettes envers eux.'),


--169
4091 Fournisseurs avances et acomptes versés
4092 Fournisseurs - Groupe avances et acomptes versés
4093 Fournisseurs sous-traitants avances et acomptes versés
4094 Fournisseurs créances pour emballages et matériels à rendre
4098 Fournisseurs, rabais, remises, ristournes et autres avoirs à obtenir
(169, 'Fournisseurs avances et acomptes versés', '4091', 'Montant versé aux fournisseurs à titre d''avances ou d''acomptes pour des biens ou des services à fournir.'),
(169, 'Fournisseurs - Groupe avances et acomptes versés', '4092', 'Montant versé aux fournisseurs appartenant au même groupe à titre d''avances ou d''acomptes pour des biens ou des services à fournir.'),
(169, 'Fournisseurs sous-traitants avances et acomptes versés', '4093', 'Montant versé aux fournisseurs sous-traitants à titre d''avances ou d''acomptes pour des biens ou des services à fournir.'),
(169, 'Fournisseurs créances pour emballages et matériels à rendre', '4094', 'Montant dû par les fournisseurs pour les emballages et le matériel qui doivent être restitués.'),
(169, 'Fournisseurs, rabais, remises, ristournes et autres avoirs à obtenir', '4098', 'Montant attendu des fournisseurs pour les rabais, remises, ristournes et autres avoirs à obtenir.'),



--170
4111 Clients
4112 Clients Groupe
4114 Clients, État et Collectivités publiques
4115 Clients, organismes internationaux
4116 Clients, ventes avec réserve de propriété 
4117 Clients, retenues de garantie
4118 Clients, dégrèvement de Taxes sur la Valeur Ajoutée (T.V.A.)
(170, 'Clients', '4111', 'Montant dû par les clients pour des biens ou des services fournis.'),
(170, 'Clients Groupe', '4112', 'Montant dû par les clients appartenant au même groupe pour des biens ou des services fournis.'),
(170, 'Clients, État et Collectivités publiques', '4114', 'Montant dû par les clients qui sont des entités gouvernementales ou des collectivités publiques pour des biens ou des services fournis.'),
(170, 'Clients, organismes internationaux', '4115', 'Montant dû par les clients qui sont des organismes internationaux pour des biens ou des services fournis.'),
(170, 'Clients, ventes avec réserve de propriété', '4116', 'Montant dû par les clients pour des biens ou des services vendus avec réserve de propriété, ce qui signifie que le transfert de propriété n''a pas encore eu lieu.'),
(170, 'Clients, retenues de garantie', '4117', 'Montant retenu par les clients en garantie de la qualité des biens ou des services fournis.'),
(170, 'Clients, dégrèvement de Taxes sur la Valeur Ajoutée (T.V.A.)', '4118', 'Montant de TVA que les clients peuvent déduire du montant qu''ils doivent payer.'),


--171
4121 Clients, Effets à recevoir
4122 Clients - Groupe, Effets à recevoir
4124 État et Collectivités publiques, Effets à recevoir
4125 Organismes Internationaux, Effets à recevoir
4126 Clients, ventes avec réserve de propriétés effets à recevoir
(171, 'Clients, Effets à recevoir', '4121', 'Montant dû par les clients et payable sous forme de traites ou d''autres effets à recevoir.'),
(171, 'Clients - Groupe, Effets à recevoir', '4122', 'Montant dû par les clients appartenant au même groupe et payable sous forme de traites ou d''autres effets à recevoir.'),
(171, 'État et Collectivités publiques, Effets à recevoir', '4124', 'Montant dû par les entités gouvernementales ou les collectivités publiques et payable sous forme de traites ou d''autres effets à recevoir.'),
(171, 'Organismes Internationaux, Effets à recevoir', '4125', 'Montant dû par les organismes internationaux et payable sous forme de traites ou d''autres effets à recevoir.'),
(171, 'Clients, ventes avec réserve de propriétés effets à recevoir', '4126', 'Montant dû par les clients pour des ventes avec réserve de propriétés et payable sous forme de traites ou d''autres effets à recevoir.'),


--172
4131 Clients, chèques impayés
4132 Clients, effets impayés
4133 Clients, cartes de crédit impayées
4138 Clients, autres valeurs impayés
(172, 'Clients, chèques impayés', '4131', 'Montant dû par les clients et non payé sous forme de chèques impayés.'),
(172, 'Clients, effets impayés', '4132', 'Montant dû par les clients et non payé sous forme d''effets impayés.'),
(172, 'Clients, cartes de crédit impayées', '4133', 'Montant dû par les clients et non payé avec des cartes de crédit impayées.'),
(172, 'Clients, autres valeurs impayés', '4138', 'Montant dû par les clients et non payé sous forme d''autres valeurs impayées.'),


--173
4141 Créances en compte, immobilisations incorporelles
4142 Créances en compte, immobilisations corporelles
4146 Effets à recevoir, immobilisations incorporelles
4147 Effets à recevoir, immobilisations corporelles
(173, 'Créances en compte, immobilisations incorporelles', '4141', 'Montant dû par les clients et non payé en compte, concernant des immobilisations incorporelles.'),
(173, 'Créances en compte, immobilisations corporelles', '4142', 'Montant dû par les clients et non payé en compte, concernant des immobilisations corporelles.'),
(173, 'Effets à recevoir, immobilisations incorporelles', '4146', 'Montant dû par les clients et non payé sous forme d''effets à recevoir, concernant des immobilisations incorporelles.'),
(173, 'Effets à recevoir, immobilisations corporelles', '4147', 'Montant dû par les clients et non payé sous forme d''effets à recevoir, concernant des immobilisations corporelles.'),


--174

--175
4161 Créances litigieuses
4162 Créances douteuses
(175, 'Créances litigieuses', '4161', 'Montant dû par les clients, mais dont le paiement est contesté ou sujet à un litige.'),
(175, 'Créances douteuses', '4162', 'Montant dû par les clients, mais dont le recouvrement est incertain en raison de leur situation financière instable ou de difficultés de paiement présumées.'),


--176
4181 Clients, factures à établir
4186 Clients, intérêts courus
(176, 'Clients, factures à établir', '4181', 'Montant dû par les clients pour des biens ou des services fournis, mais pour lesquels les factures n''ont pas encore été émises.'),
(176, 'Clients, intérêts courus', '4186', 'Montant dû par les clients pour les intérêts accumulés sur des sommes non encore payées.'),


--177
4191 Clients, avances et acomptes reçus
4192 Clients - Groupe, avancés et acomptes reçus
4194 Clients, dettes pour emballages et matériels consignes
4198 Clients, rabais, remises, ristournes et autres avoirs à accorder
(177, 'Clients, avances et acomptes reçus', '4191', 'Montant reçu des clients à titre d''avance ou d''acompte pour des biens ou des services qui seront fournis ultérieurement.'),
(177, 'Clients - Groupe, avancés et acomptes reçus', '4192', 'Montant reçu des clients appartenant au groupe à titre d''avance ou d''acompte pour des biens ou des services qui seront fournis ultérieurement.'),
(177, 'Clients, dettes pour emballages et matériels consignes', '4194', 'Montant dû aux clients pour les emballages ou les matériels consignés.'),
(177, 'Clients, rabais, remises, ristournes et autres avoirs à accorder', '4198', 'Montant à accorder aux clients sous forme de rabais, de remises, de ristournes ou d''autres avoirs.'),


--178
4211 Personnel, avances
4212 Personnel, acomptes
4213 Frais avances et fournitures au personnel
(178, 'Personnel, avances', '4211', 'Montant avancé au personnel pour couvrir des dépenses professionnelles.'),
(178, 'Personnel, acomptes', '4212', 'Montant versé au personnel à titre d''acompte sur son salaire ou sur d''autres prestations.'),
(178, 'Frais avances et fournitures au personnel', '4213', 'Montant avancé pour couvrir les frais ou fournitures du personnel.'),


--179

--180
4231 Personnel, oppositions
4232 Personnel, saisies arrêts
4233 Personnel, avis à tiers détenteur
(180, 'Personnel, oppositions', '4231', 'Montant saisi sur le salaire du personnel en raison d''une opposition.'),
(180, 'Personnel, saisies arrêts', '4232', 'Montant saisi sur le salaire du personnel en raison d''une saisie-arrêt.'),
(180, 'Personnel, avis à tiers détenteur', '4233', 'Montant saisi sur le salaire du personnel en raison d''un avis à tiers détenteur.'),


--181
4241 Assistance médicale
4242 Allocations familiales
4245 Organismes sociaux rattachés à l''entité
4248 Autres œuvres sociales internes
(181, 'Assistance médicale', '4241', 'Montant des dépenses liées à l''assistance médicale du personnel.'),
(181, 'Allocations familiales', '4242', 'Montant des allocations familiales versées au personnel.'),
(181, "Organismes sociaux rattachés à l'entité", '4245', 'Montant des cotisations versées aux organismes sociaux rattachés à l''entité.'),
(181, 'Autres œuvres sociales internes', '4248', 'Montant des dépenses liées à d''autres œuvres sociales internes.'),


--182
4251 Délégués du personnel
4252 Syndicats et Comités d''entreprises, d''Établissement
4258 Autres représentants du personnel
(182, 'Délégués du personnel', '4251', 'Montant des dépenses liées aux délégués du personnel.'),
(182, 'Syndicats et Comités d''entreprises, d''Établissement', '4252', 'Montant des dépenses liées aux syndicats et aux comités d''entreprises ou d''établissement.'),
(182, 'Autres représentants du personnel', '4258', 'Montant des dépenses liées à d''autres représentants du personnel.'),


--183
4261 Participation aux bénéfices
4264 Participation au capital
(183, 'Participation aux bénéfices', '4261', 'Montant des dépenses liées à la participation aux bénéfices des employés.'),
(183, 'Participation au capital', '4264', 'Montant des dépenses liées à la participation au capital des employés.'),

--184


--185
4281 Dettes provisionnées pour congés à payer
4286 Autres Charges à payer
4287 Produits à recevoir
(185, 'Dettes provisionnées pour congés à payer', '4281', 'Montant des dettes provisionnées pour les congés à payer aux employés.'),
(185, 'Autres Charges à payer', '4286', 'Montant des autres charges à payer qui ne sont pas spécifiquement répertoriées ailleurs.'),
(185, 'Produits à recevoir', '4287', 'Montant des produits à recevoir qui sont dus mais pas encore reçus.'),


--186
4311 Prestations familiales
4312 Accidents de travail
4313 Caisse de retraite obligatoire
4314 Caisse de retraite facultative
4318 Autres cotisations sociales
(186, 'Prestations familiales', '4311', 'Montant des cotisations versées pour les prestations familiales.'),
(186, 'Accidents de travail', '4312', 'Montant des cotisations versées pour les accidents du travail.'),
(186, 'Caisse de retraite obligatoire', '4313', 'Montant des cotisations versées pour la caisse de retraite obligatoire.'),
(186, 'Caisse de retraite facultative', '4314', 'Montant des cotisations versées pour la caisse de retraite facultative.'),
(186, 'Autres cotisations sociales', '4318', 'Montant des cotisations versées pour d''autres types de prestations sociales.'),


--187

--188
4331 Mutuelle
4332 Assurance retraite 
4333 Assurance et organismes de santé
(188, 'Mutuelle', '4331', 'Montant des cotisations versées pour la mutuelle.'),
(188, 'Assurance retraite', '4332', 'Montant des cotisations versées pour l''assurance retraite.'),
(188, 'Assurance et organismes de santé', '4333', 'Montant des cotisations versées pour l''assurance et les organismes de santé.'),


--189
4381 Charges sociales sur gratifications à payer
4382 Charges sociales sur congés à payer
4386 Autres charges à payer
4387 Produits à recevoir
(189, 'Charges sociales sur gratifications à payer', '4381', 'Montant des charges sociales dues sur les gratifications à payer.'),
(189, 'Charges sociales sur congés à payer', '4382', 'Montant des charges sociales dues sur les congés à payer.'),
(189, 'Autres charges à payer', '4386', 'Montant des autres charges à payer.'),
(189, 'Produits à recevoir', '4387', 'Montant des produits à recevoir.'),


--190

--191
4421 Impôts et taxes d''état
4422 Impôts et taxes pour les collectivités publiques
4423 Impôts et taxes recouvrables sur des obligataires
4424 Impôts et taxes recouvrables sur des associes
4426 Droits de douane
4428 Autres impôts et taxes
(191, 'Impôts et taxes d''état', '4421', 'Montant des impôts et taxes à payer à l''État.'),
(191, 'Impôts et taxes pour les collectivités publiques', '4422', 'Montant des impôts et taxes à payer aux collectivités publiques.'),
(191, 'Impôts et taxes recouvrables sur des obligataires', '4423', 'Montant des impôts et taxes recouvrables sur des obligataires.'),
(191, 'Impôts et taxes recouvrables sur des associes', '4424', 'Montant des impôts et taxes recouvrables sur des associés.'),
(191, 'Droits de douane', '4426', 'Montant des droits de douane à payer.'),
(191, 'Autres impôts et taxes', '4428', 'Montant des autres impôts et taxes à payer.'),


--192
4431 T.V.A. facturée sur ventes
4432 T.V.A. facturée sur prestations de services
4433 T.V.A. facturée sur travaux
4434 T.V.A. facturée sur production livrée à soi-même
4435 T.V.A. sur factures à établir
(192, 'T.V.A. facturée sur ventes', '4431', 'Ce compte enregistre la taxe sur la valeur ajoutée (T.V.A.) facturée sur les ventes de biens.'),
(192, 'T.V.A. facturée sur prestations de services', '4432', 'Ce compte enregistre la taxe sur la valeur ajoutée (T.V.A.) facturée sur les prestations de services.'),
(192, 'T.V.A. facturée sur travaux', '4433', 'Ce compte enregistre la taxe sur la valeur ajoutée (T.V.A.) facturée sur les travaux réalisés.'),
(192, 'T.V.A. facturée sur production livrée à soi-même', '4434', 'Ce compte enregistre la taxe sur la valeur ajoutée (T.V.A.) facturée sur les productions livrées à soi-même.'),
(192, 'T.V.A. sur factures à établir', '4435', 'Ce compte enregistre la taxe sur la valeur ajoutée (T.V.A.) à établir sur les factures.');


--193
4441 État, T.V.A. due
4445 État,Dégrèvement T.V.A
4449 État, crédit de T.V.A. à reporter
(193, 'État, T.V.A. due', '4441', 'Ce compte enregistre la taxe sur la valeur ajoutée (T.V.A.) due à l''État.'),
(193, 'État, Dégrèvement T.V.A.', '4445', 'Ce compte enregistre les dégrèvements de taxe sur la valeur ajoutée (T.V.A.) accordés par l''État.'),
(193, 'État, crédit de T.V.A. à reporter', '4449', 'Ce compte enregistre les crédits de taxe sur la valeur ajoutée (T.V.A.) à reporter à l''État.'),


--194
4451 T.V.A. récupérable sur immobilisations
4452 T.V.A. récupérable sur achats
4453 T.V.A. récupérable sur transport
4454 T.V.A. récupérable sur services extérieurs et autres charges
4455 T.V.A. récupérable sur factures non parvenues
4456 T.V.A. transférée par d''autres entités
(194, 'T.V.A. récupérable sur immobilisations', '4451', 'Ce compte enregistre la taxe sur la valeur ajoutée (T.V.A.) récupérable sur les immobilisations.'),
(194, 'T.V.A. récupérable sur achats', '4452', 'Ce compte enregistre la taxe sur la valeur ajoutée (T.V.A.) récupérable sur les achats.'),
(194, 'T.V.A. récupérable sur transport', '4453', 'Ce compte enregistre la taxe sur la valeur ajoutée (T.V.A.) récupérable sur le transport.'),
(194, 'T.V.A. récupérable sur services extérieurs et autres charges', '4454', 'Ce compte enregistre la taxe sur la valeur ajoutée (T.V.A.) récupérable sur les services extérieurs et autres charges.'),
(194, 'T.V.A. récupérable sur factures non parvenues', '4455', 'Ce compte enregistre la taxe sur la valeur ajoutée (T.V.A.) récupérable sur les factures non parvenues.'),
(194, 'T.V.A. transférée par d''autres entités', '4456', 'Ce compte enregistre la taxe sur la valeur ajoutée (T.V.A.) transférée par d''autres entités.'),


--195

--196
4471 Impôt Général sur le revenu
4472 Impôts sur salaires
4473 Contribution nationale
4474 Contribution nationale de solidarité
4478 Autres impôts et contributions
(196, 'Impôt Général sur le revenu', '4471', 'Ce compte enregistre l''impôt général sur le revenu.'),
(196, 'Impôts sur salaires', '4472', 'Ce compte enregistre les impôts sur les salaires.'),
(196, 'Contribution nationale', '4473', 'Ce compte enregistre la contribution nationale.'),
(196, 'Contribution nationale de solidarité', '4474', 'Ce compte enregistre la contribution nationale de solidarité.'),
(196, 'Autres impôts et contributions', '4478', 'Ce compte enregistre d''autres impôts et contributions.'),


--197
4486 Charges à payer
4487 Produits à recevoir
(197, 'Charges à payer', '4486', 'Ce compte enregistre les charges à payer.'),
(197, 'Produits à recevoir', '4487', 'Ce compte enregistre les produits à recevoir.'),


--198
4491 État, obligations cautionnées
4492 État, avances et acomptes versés sur impôts
4493 Etat, fonds de dotation à recevoir
4494 État, subventions investissement à recevoir
4495 État, subventions d''exploitation à recevoir
4496 État, subventions d''équilibre à recevoir
4497 État avances sur subventions 
4499 État, fonds réglementes provisionnes
(198, 'État, obligations cautionnées', '4491', 'Ce compte enregistre les obligations cautionnées à l''État.'),
(198, 'État, avances et acomptes versés sur impôts', '4492', 'Ce compte enregistre les avances et acomptes versés sur impôts à l''État.'),
(198, 'État, fonds de dotation à recevoir', '4493', 'Ce compte enregistre les fonds de dotation à recevoir de l''État.'),
(198, 'État, subventions investissement à recevoir', '4494', 'Ce compte enregistre les subventions d''investissement à recevoir de l''État.'),
(198, 'État, subventions d''exploitation à recevoir', '4495', 'Ce compte enregistre les subventions d''exploitation à recevoir de l''État.'),
(198, 'État, subventions d''équilibre à recevoir', '4496', 'Ce compte enregistre les subventions d''équilibre à recevoir de l''État.'),
(198, 'État avances sur subventions', '4497', 'Ce compte enregistre les avances sur subventions à l''État.'),
(198, 'État, fonds réglementés provisionnés', '4499', 'Ce compte enregistre les fonds réglementés provisionnés à l''État.'),


--199















--200

--201
4581 Organismes internationaux, fonds de dotation à recevoir
4582 Organismes internationaux, subventions à recevoir
(201, 'Organismes internationaux, fonds de dotation à recevoir', '4581', 'Ce compte enregistre les fonds de dotation à recevoir des organismes internationaux.'),
(201, 'Organismes internationaux, subventions à recevoir', '4582', 'Ce compte enregistre les subventions à recevoir des organismes internationaux.'),


--202
4611 Apporteurs, apports en nature 
4612 Apporteurs, apports en numéraire
4613 Apporteurs, capital appelé, non versé 
4614 Apporteurs, compte d''apport, opérations de restructuration (fusion)
4615 Apporteurs, versements reçus sur augmentation de capital
4616 Apporteurs, versements anticipés 
4617 Apporteurs défaillants 
4618 Apporteurs, titres à échanger
4619 Apporteurs, capital à rembourser
(202, 'Apporteurs, apports en nature', '4611', 'Ce compte enregistre les apports en nature effectués par les apporteurs.'),
(202, 'Apporteurs, apports en numéraire', '4612', 'Ce compte enregistre les apports en numéraire effectués par les apporteurs.'),
(202, 'Apporteurs, capital appelé, non versé', '4613', 'Ce compte enregistre le capital appelé mais non versé par les apporteurs.'),
(202, 'Apporteurs, compte d''apport, opérations de restructuration (fusion)', '4614', 'Ce compte enregistre les opérations de restructuration (fusion) sur le compte d''apport des apporteurs.'),
(202, 'Apporteurs, versements reçus sur augmentation de capital', '4615', 'Ce compte enregistre les versements reçus sur l''augmentation de capital par les apporteurs.'),
(202, 'Apporteurs, versements anticipés', '4616', 'Ce compte enregistre les versements anticipés effectués par les apporteurs.'),
(202, 'Apporteurs défaillants', '4617', 'Ce compte enregistre les apporteurs défaillants.'),
(202, 'Apporteurs, titres à échanger', '4618', 'Ce compte enregistre les titres à échanger des apporteurs.'),
(202, 'Apporteurs, capital à rembourser', '4619', 'Ce compte enregistre le capital à rembourser aux apporteurs.'),


--203
4621 Principal
4626 Intérêts courus
(203, 'Principal', '4621', 'Ce compte enregistre le montant principal d''une dette ou d''un emprunt.'),
(203, 'Intérêts courus', '4626', 'Ce compte enregistre les intérêts courus mais non encore payés sur une dette ou un emprunt.'),


--204
4631 Opérations courantes
4636 Intérêts courus
(204, 'Opérations courantes', '4631', 'Ce compte enregistre les opérations financières régulières et habituelles de l''entreprise, telles que les achats, les ventes et les charges courantes.'),
(204, 'Intérêts courus', '4636', 'Ce compte enregistre les intérêts accumulés mais non encore payés sur des dettes ou des emprunts, jusqu''à la date de comptabilité.'),


--205

--206

--207

--208
4711 Débiteurs divers
4712 Créditeurs divers 
4713 Obligataires
4714 Créances sur cessions de titres de placements 
4715 Rémunérations d''administrateurs 
4716 Comptes d''affacturage 
4717 Débiteurs divers-retenues de garantie 
4718 Apport, compte de fusion et opérations assimilées 
4719 Bons de souscription d''actions et d''obligations
(208, 'Débiteurs divers', '4711', 'Ce compte enregistre les montants dus à l''entreprise par divers débiteurs qui ne rentrent pas dans d''autres catégories spécifiques de créances.'),
(208, 'Créditeurs divers', '4712', 'Ce compte enregistre les montants que l''entreprise doit à divers créditeurs qui ne rentrent pas dans d''autres catégories spécifiques de dettes.'),
(208, 'Obligataires', '4713', 'Ce compte enregistre les montants dus à des détenteurs d''obligations émises par l''entreprise.'),
(208, 'Créances sur cessions de titres de placements', '4714', 'Ce compte enregistre les montants que l''entreprise attend de la cession de titres de placements.'),
(208, 'Rémunérations d''administrateurs', '4715', 'Ce compte enregistre les montants dus aux administrateurs de l''entreprise pour leur rémunération.'),
(208, 'Comptes d''affacturage', '4716', 'Ce compte enregistre les montants liés aux opérations d''affacturage, c''est-à-dire la cession de créances commerciales à un établissement financier.'),
(208, 'Débiteurs divers - retenues de garantie', '4717', 'Ce compte enregistre les montants dus à l''entreprise par divers débiteurs, mais avec des retenues de garantie qui doivent être déduites.'),
(208, 'Apport, compte de fusion et opérations assimilées', '4718', 'Ce compte enregistre les montants liés aux apports lors de fusions, scissions ou autres opérations similaires.'),
(208, 'Bons de souscription d''actions et d''obligations', '4719', 'Ce compte enregistre les montants dus aux porteurs de bons de souscription d''actions ou d''obligations émis par l''entreprise.'),


--209
4721 Créances sur cessions de titres de placement 
4726 Versements restant à effectuer sur titres de placement non libéré
(209, 'Créances sur cessions de titres de placement', '4721', 'Ce compte enregistre les montants que l''entreprise attend de la cession de titres de placement.'),
(209, 'Versements restant à effectuer sur titres de placement non libéré', '4726', 'Ce compte enregistre les montants restant à verser pour des titres de placement qui n''ont pas encore été libérés en totalité.'),


--210
4731 Mandants 
4732 Mandataires 
4733 Commettants 
4734 Commissionnaires
4739 États, collectivités publiques, fonds global d''allocation
(210, 'Mandants', '4731', 'Ce compte enregistre les montants dus à des mandants, c''est-à-dire des personnes ou des entités qui ont donné mandat à l''entreprise pour agir en leur nom.'),
(210, 'Mandataires', '4732', 'Ce compte enregistre les montants dus à des mandataires, c''est-à-dire des personnes ou des entités agissant au nom de l''entreprise.'),
(210, 'Commettants', '4733', 'Ce compte enregistre les montants dus à des commettants, c''est-à-dire des personnes ou des entités qui ont chargé l''entreprise d''exécuter des tâches en leur nom.'),
(210, 'Commissionnaires', '4734', 'Ce compte enregistre les montants dus à des commissionnaires, c''est-à-dire des personnes ou des entités qui agissent en tant qu''intermédiaires pour l''entreprise dans des transactions commerciales.'),
(210, 'États, collectivités publiques, fonds global d''allocation', '4739', 'Ce compte enregistre les montants dus à des États, des collectivités publiques ou des fonds globaux d''allocation.'),


--211
4746 Compte de répartition périodique des charges
4747 Compte de répartition périodique des produits
(211, 'Compte de répartition périodique des charges', '4746', 'Ce compte enregistre les montants utilisés pour répartir périodiquement les charges entre différentes catégories ou départements de l''entreprise.'),
(211, 'Compte de répartition périodique des produits', '4747', 'Ce compte enregistre les montants utilisés pour répartir périodiquement les produits entre différentes catégories ou départements de l''entreprise.'),


--212
4751 Compte actif 
4752 Compte passif
(212, 'Compte actif', '4751', 'Ce compte enregistre les éléments d''actif de l''entreprise, c''est-à-dire les biens et les droits détenus par l''entreprise.'),
(212, 'Compte passif', '4752', 'Ce compte enregistre les éléments de passif de l''entreprise, c''est-à-dire les dettes et les obligations financières de l''entreprise.'),


--213

--214

--215
4781 Diminution des créances d''exploitation
4782 Diminution de créances financières 
4783 Augmentions des dettes d''exploitation 
4784 Augmentation des dettes financières 
4786 Différences d''évaluation sur instruments de trésorerie 
4788 Différences compensées par couverture de change
(215, 'Diminution des créances d''exploitation', '4781', 'Ce compte enregistre les diminutions des créances résultant d''activités d''exploitation, telles que les ventes à crédit ou les services fournis.'),
(215, 'Diminution de créances financières', '4782', 'Ce compte enregistre les diminutions des créances financières, telles que les prêts accordés à des tiers.'),
(215, 'Augmentation des dettes d''exploitation', '4783', 'Ce compte enregistre les augmentations des dettes résultant d''activités d''exploitation, telles que les achats à crédit ou les dépenses engagées.'),
(215, 'Augmentation des dettes financières', '4784', 'Ce compte enregistre les augmentations des dettes financières, telles que les emprunts ou les obligations émises par l''entreprise.'),
(215, 'Différences d''évaluation sur instruments de trésorerie', '4786', 'Ce compte enregistre les différences de valorisation sur les instruments de trésorerie, comme les devises étrangères, les titres financiers ou les contrats à terme.'),
(215, 'Différences compensées par couverture de change', '4788', 'Ce compte enregistre les différences de valorisation compensées par des instruments de couverture de change, telles que les contrats à terme ou les options de change.'),



--216
4791 Augmentation des créances d''exploitation
4792 Augmentation des créances financières 
4793 Diminution des dettes d''exploitation 
4794 Diminution des dettes financières 
4797 Différences d''évaluation sur instruments de trésorerie 
4798 Différences compensées par couverture de change
(216, 'Augmentation des créances d''exploitation', '4791', 'Ce compte enregistre les augmentations des créances résultant d''activités d''exploitation, telles que les ventes à crédit ou les services fournis.'),
(216, 'Augmentation des créances financières', '4792', 'Ce compte enregistre les augmentations des créances financières, telles que les prêts accordés à des tiers.'),
(216, 'Diminution des dettes d''exploitation', '4793', 'Ce compte enregistre les diminutions des dettes résultant d''activités d''exploitation, telles que les achats à crédit ou les dépenses engagées.'),
(216, 'Diminution des dettes financières', '4794', 'Ce compte enregistre les diminutions des dettes financières, telles que les emprunts ou les obligations émises par l''entreprise.'),
(216, 'Différences d''évaluation sur instruments de trésorerie', '4797', 'Ce compte enregistre les différences de valorisation sur les instruments de trésorerie, comme les devises étrangères, les titres financiers ou les contrats à terme.'),
(216, 'Différences compensées par couverture de change', '4798', 'Ce compte enregistre les différences de valorisation compensées par des instruments de couverture de change, telles que les contrats à terme ou les options de change.'),


--217
4811 Immobilisations incorporelles
4812 Immobilisations corporelles
4813 Versements restant à effectuer sur titres de participation et titres immobilisés non libérés
4816 Réserve de propriété
4817 Retenues de garantie (2)
4818 Factures non parvenues (2)
(217, 'Immobilisations incorporelles', '4811', 'Ce compte enregistre les actifs non matériels de l''entreprise, tels que les brevets, les marques, les logiciels et les licences.'),
(217, 'Immobilisations corporelles', '4812', 'Ce compte enregistre les actifs matériels de l''entreprise, tels que les terrains, les bâtiments, les équipements et les véhicules.'),
(217, 'Versements restant à effectuer sur titres de participation et titres immobilisés non libérés', '4813', 'Ce compte enregistre les montants restant à verser pour des titres de participation ou des titres immobilisés qui n''ont pas encore été libérés en totalité.'),
(217, 'Réserve de propriété', '4816', 'Ce compte enregistre les biens vendus par l''entreprise mais pour lesquels la propriété reste avec l''entreprise jusqu''au paiement complet.'),
(217, 'Retenues de garantie (2)', '4817', 'Ce compte enregistre les retenues de garantie effectuées par les clients ou les fournisseurs pour assurer l''exécution correcte des contrats.'),
(217, 'Factures non parvenues (2)', '4818', 'Ce compte enregistre les montants qui n''ont pas encore été facturés mais qui doivent être comptabilisés comme des charges ou des produits.'),



--218
4821 Immobilisation incorporelles
4822 Immobilisations corporelles
(218, 'Immobilisations incorporelles', '4821', 'Ce compte enregistre les actifs non matériels de l''entreprise, tels que les brevets, les marques, les logiciels et les licences.'),
(218, 'Immobilisations corporelles', '4822', 'Ce compte enregistre les actifs matériels de l''entreprise, tels que les terrains, les bâtiments, les équipements et les véhicules.'),



--219

--220
4851 En compte, immobilisations incorporelles
4852 En compte, immobilisations corporelles
4853 Effets à recevoir, immobilisations incorporelles
4854 Effets à recevoir, immobilisations corporelles
4855 Effets escomptés non échus
4857 Retenues de garantie
4858 Factures à établir
(220, 'En compte, immobilisations incorporelles', '4851', 'Ce compte enregistre les immobilisations incorporelles qui sont en attente d''être inscrites au bilan de l''entreprise.'),
(220, 'En compte, immobilisations corporelles', '4852', 'Ce compte enregistre les immobilisations corporelles qui sont en attente d''être inscrites au bilan de l''entreprise.'),
(220, 'Effets à recevoir, immobilisations incorporelles', '4853', 'Ce compte enregistre les effets (comme des chèques ou des traites) à recevoir liés aux transactions impliquant des immobilisations incorporelles.'),
(220, 'Effets à recevoir, immobilisations corporelles', '4854', 'Ce compte enregistre les effets (comme des chèques ou des traites) à recevoir liés aux transactions impliquant des immobilisations corporelles.'),
(220, 'Effets escomptés non échus', '4855', 'Ce compte enregistre les effets escomptés qui n''ont pas encore atteint leur date d''échéance.'),
(220, 'Retenues de garantie', '4857', 'Ce compte enregistre les montants retenus par les clients ou les fournisseurs en garantie de l''exécution correcte des contrats.'),
(220, 'Factures à établir', '4858', 'Ce compte enregistre les montants à facturer mais qui n''ont pas encore été émis sous forme de factures.'),


--221

--222

--223
4911 Créances litigieuses
4912 Créances douteuses
(223, 'Créances litigieuses', '4911', 'Ce compte enregistre les créances pour lesquelles un litige est en cours, ce qui signifie qu''il existe un différend ou un désaccord entre l''entreprise et le débiteur quant au montant dû ou à d''autres conditions de paiement.'),
(223, 'Créances douteuses', '4912', 'Ce compte enregistre les créances pour lesquelles il existe des doutes raisonnables quant à la capacité du débiteur à payer, souvent en raison de retards de paiement importants ou de difficultés financières.'),


--224

--225

--226

--227

--228
4962 Associés, comptes courants
4963 Associés, opérations faites en commun
4966 Groupe, comptes courants
(228, 'Associés, comptes courants', '4962', 'Ce compte enregistre les montants dus aux associés de l''entreprise au titre de comptes courants, qui représentent des avances de fonds ou des prêts consentis par les associés à l''entreprise.'),
(228, 'Associés, opérations faites en commun', '4963', 'Ce compte enregistre les opérations réalisées en commun avec les associés de l''entreprise, telles que les coentreprises ou les partenariats.'),
(228, 'Groupe, comptes courants', '4966', 'Ce compte enregistre les montants dus aux entreprises du même groupe au titre de comptes courants, qui représentent des avances de fonds ou des prêts consentis par ces entreprises à l''entreprise.'),


--229

--230
4985 Créances sur cessions d''immobilisations
4986 Créances sur cessions de titres de placement
4988 Autres Créances H.A.O.
(230, 'Créances sur cessions d''immobilisations', '4985', 'Ce compte enregistre les montants que l''entreprise attend de la cession d''immobilisations, telles que des biens immobiliers ou des équipements.'),
(230, 'Créances sur cessions de titres de placement', '4986', 'Ce compte enregistre les montants que l''entreprise attend de la cession de titres de placement, tels que des actions ou des obligations.'),
(230, 'Autres Créances H.A.O.', '4988', 'Ce compte enregistre les autres créances hors activités ordinaires (H.A.O.) de l''entreprise, qui ne rentrent pas dans d''autres catégories spécifiques de créances.'),



--231
4991 Sur opérations d''exploitation
4997 Sur opérations financières 
4998 Sur opérations H.A.O.
(231, 'Sur opérations d''exploitation', '4991', 'Ce compte enregistre les produits et les charges sur les opérations d''exploitation de l''entreprise, telles que les ventes de biens ou de services.'),
(231, 'Sur opérations financières', '4997', 'Ce compte enregistre les produits et les charges sur les opérations financières de l''entreprise, telles que les revenus d''intérêts ou les pertes de change.'),
(231, 'Sur opérations H.A.O.', '4998', 'Ce compte enregistre les produits et les charges sur les opérations hors activités ordinaires (H.A.O.) de l''entreprise, qui ne rentrent pas dans d''autres catégories spécifiques.'),


--232
5011 Titres du Trésor à court terme
5012 Titres d''organismes financiers
5013 Bons de caisse à court terme
5016 Frais d''acquisition des titres de trésor et bons de caisse 
(232, 'Titres du Trésor à court terme', '5011', 'Ce compte enregistre les investissements de l''entreprise dans des titres du Trésor à court terme, émis par le gouvernement et ayant une échéance à court terme.'),
(232, 'Titres d''organismes financiers', '5012', 'Ce compte enregistre les investissements de l''entreprise dans des titres émis par des organismes financiers, tels que des obligations ou des actions.'),
(232, 'Bons de caisse à court terme', '5013', 'Ce compte enregistre les investissements de l''entreprise dans des bons de caisse à court terme, qui sont des titres de créance émis par des institutions financières.'),
(232, 'Frais d''acquisition des titres de trésor et bons de caisse', '5016', 'Ce compte enregistre les frais encourus par l''entreprise lors de l''acquisition de titres du Trésor à court terme et de bons de caisse.'),


--233
5021 Actions ou parts propres
5022 Actions cotées
5023 Actions non cotées
5024 Actions démembrées (certificats d''investissement ; droits de vôte)
5025 Autres actions
5026 Frais d''acquisition des actions
(233, 'Actions ou parts propres', '5021', 'Ce compte enregistre les actions ou parts d''entreprise détenues par l''entreprise elle-même, souvent dans le cadre de programmes de rachat d''actions.'),
(233, 'Actions cotées', '5022', 'Ce compte enregistre les actions cotées en bourse détenues par l''entreprise comme investissement.'),
(233, 'Actions non cotées', '5023', 'Ce compte enregistre les actions non cotées en bourse détenues par l''entreprise comme investissement.'),
(233, 'Actions démembrées (certificats d''investissement ; droits de vote)', '5024', 'Ce compte enregistre les actions démembrées, telles que les certificats d''investissement ou les droits de vote séparés des droits économiques.'),
(233, 'Autres actions', '5025', 'Ce compte enregistre les actions de l''entreprise qui ne rentrent pas dans d''autres catégories spécifiques.'),
(233, 'Frais d''acquisition des actions', '5026', 'Ce compte enregistre les frais encourus par l''entreprise lors de l''acquisition d''actions, tels que les frais de courtage ou les honoraires d''avocats.'),



--234
5031 Obligations émises par la société et rachetées par elle
5032 Obligations cotées
5033 Obligations non cotées
5035 Autres obligations
5036 Frais d''acquisition des obligations
(234, 'Obligations émises par la société et rachetées par elle', '5031', 'Ce compte enregistre les obligations émises par l''entreprise et rachetées ultérieurement par elle-même.'),
(234, 'Obligations cotées', '5032', 'Ce compte enregistre les obligations cotées en bourse détenues par l''entreprise comme investissement.'),
(234, 'Obligations non cotées', '5033', 'Ce compte enregistre les obligations non cotées en bourse détenues par l''entreprise comme investissement.'),
(234, 'Autres obligations', '5035', 'Ce compte enregistre les obligations de l''entreprise qui ne rentrent pas dans d''autres catégories spécifiques.'),
(234, 'Frais d''acquisition des obligations', '5036', 'Ce compte enregistre les frais encourus par l''entreprise lors de l''acquisition d''obligations, tels que les frais de courtage ou les honoraires d''avocats.'),


--235
5042 Bons de souscription d''actions
5043 Bons de souscription d''obligations
(235, 'Bons de souscription d''actions', '5042', 'Ce compte enregistre les bons de souscription d''actions émis par l''entreprise, qui donnent à leur détenteur le droit d''acheter des actions de l''entreprise à un prix spécifié et pendant une période déterminée.'),
(235, 'Bons de souscription d''obligations', '5043', 'Ce compte enregistre les bons de souscription d''obligations émis par l''entreprise, qui donnent à leur détenteur le droit d''acheter des obligations de l''entreprise à un prix spécifié et pendant une période déterminée.'),


--236

--237
5061 Titres du Trésor et bons de caisse à court terme
5062 Actions
5063 Obligations
(237, 'Titres du Trésor et bons de caisse à court terme', '5061', 'Ce compte enregistre les investissements de l''entreprise dans des titres du Trésor et des bons de caisse à court terme, qui sont des instruments financiers à faible risque et à maturité courte.'),
(237, 'Actions', '5062', 'Ce compte enregistre les investissements de l''entreprise dans des actions d''autres sociétés, qui représentent des participations dans le capital de ces sociétés.'),
(237, 'Obligations', '5063', 'Ce compte enregistre les investissements de l''entreprise dans des obligations émises par d''autres entités, qui représentent des dettes contractées par ces entités envers l''entreprise.'),



--238

--239

--240

--241

--242

--243

--244
5181 Warrants
5182 Billets de fonds
5185 Chèques de voyage
5186 Coupons échus
5187 Intérêts échus des obligations
(244, 'Warrants', '5181', 'Ce compte enregistre les warrants détenus par l''entreprise, qui sont des options permettant d''acheter ou de vendre des actions à un prix spécifié pendant une période déterminée.'),
(244, 'Billets de fonds', '5182', 'Ce compte enregistre les billets de fonds détenus par l''entreprise, qui sont des instruments de dette à court terme émis par des institutions financières.'),
(244, 'Chèques de voyage', '5185', 'Ce compte enregistre les chèques de voyage détenus par l''entreprise, qui sont des moyens de paiement sécurisés utilisés par les voyageurs.'),
(244, 'Coupons échus', '5186', 'Ce compte enregistre les coupons d''obligations échus mais non encore encaissés par l''entreprise.'),
(244, 'Intérêts échus des obligations', '5187', 'Ce compte enregistre les intérêts échus des obligations détenues par l''entreprise mais non encore encaissés.'),



--245
5211 Banques en monnaie nationale
5215 Banques en devises
(245, 'Banques en monnaie nationale', '5211', 'Ce compte enregistre les fonds détenus par l''entreprise auprès de banques nationales dans la monnaie nationale du pays où elle opère.'),
(245, 'Banques en devises', '5215', 'Ce compte enregistre les fonds détenus par l''entreprise auprès de banques dans des devises étrangères autres que sa monnaie nationale.'),

--246

--247

--248

--249

--250
5261 Banque, intérêts courus charges à payer 
5267 Banque, intérêts courus produits à recevoir
(250, 'Banque, intérêts courus charges à payer', '5261', 'Ce compte enregistre les intérêts courus sur les charges à payer de l''entreprise, tels que les intérêts à payer sur des emprunts ou des dettes.'),
(250, 'Banque, intérêts courus produits à recevoir', '5267', 'Ce compte enregistre les intérêts courus sur les produits à recevoir de l''entreprise, tels que les intérêts à recevoir sur des placements ou des créances.'),


--251

--252

--253

--254

--255

--256

--257

--258

--259

--260

--261

--262

--263

--264

--265

--266

--267

--268

--269

--270
5711 Caisse en monnaie nationale
5712 Caisse en devises
(270, 'Caisse en monnaie nationale', '5711', 'Ce compte enregistre les fonds en espèces détenus par l''entreprise dans la monnaie nationale du pays où elle opère.'),
(270, 'Caisse en devises', '5712', 'Ce compte enregistre les fonds en espèces détenus par l''entreprise dans des devises étrangères autres que la monnaie nationale.'),


--271
5721 en monnaie nationale
5722 en devise
(271, 'En monnaie nationale', '5721', 'Ce compte enregistre les fonds détenus par l''entreprise dans la monnaie nationale du pays où elle opère, autres que ceux en caisse.'),
(271, 'En devise', '5722', 'Ce compte enregistre les fonds détenus par l''entreprise dans des devises étrangères autres que la monnaie nationale, autres que ceux en caisse.'),


--272
5731 en monnaie nationale
5732 en devise
(272, 'En monnaie nationale', '5731', 'Ce compte enregistre les fonds détenus par l''entreprise dans la monnaie nationale du pays où elle opère, autres que ceux en caisse ou en banque.'),
(272, 'En devise', '5732', 'Ce compte enregistre les fonds détenus par l''entreprise dans des devises étrangères autres que la monnaie nationale, autres que ceux en caisse ou en banque.'),


--273

--274

--275

--276

--277

--278

--279

--280

--281

--282

--283
6011 dans la Région (5)
6012 hors Région (5)
6013 aux entités du groupe dans la Région
6014 aux entités du groupe hors Région
6015 Frais sur achats (6)
6019 Rabais, Remises et Ristournes obtenus (non ventiles)
(283, 'Dans la Région', '6011', 'Ce compte enregistre les achats effectués par l''entreprise dans la région spécifiée.'),
(283, 'Hors Région', '6012', 'Ce compte enregistre les achats effectués par l''entreprise en dehors de la région spécifiée.'),
(283, 'Aux entités du groupe dans la Région', '6013', 'Ce compte enregistre les achats effectués par l''entreprise auprès des entités de son groupe situées dans la région spécifiée.'),
(283, 'Aux entités du groupe hors Région', '6014', 'Ce compte enregistre les achats effectués par l''entreprise auprès des entités de son groupe situées en dehors de la région spécifiée.'),
(283, 'Frais sur achats', '6015', 'Ce compte enregistre les frais associés aux achats effectués par l''entreprise, tels que les frais de transport ou les frais de douane.'),
(283, 'Rabais, Remises et Ristournes obtenus (non ventiles)', '6019', 'Ce compte enregistre les rabais, remises et ristournes obtenus par l''entreprise sur ses achats, qui ne sont pas ventilés dans d''autres comptes spécifiques.'),




--284
6021 dans la Région (5)
6022 hors Région (5)
6023 aux entités du groupe dans la Région
6024 aux entités du groupe hors Région
6025 Frais sur achats (6)
6029 Rabais, Remises et Ristournes obtenus (non ventiles)
(284, 'Dans la Région', '6021', 'Ce compte enregistre les achats effectués par l''entreprise dans la région spécifiée.'),
(284, 'Hors Région', '6022', 'Ce compte enregistre les achats effectués par l''entreprise en dehors de la région spécifiée.'),
(284, 'Aux entités du groupe dans la Région', '6023', 'Ce compte enregistre les achats effectués par l''entreprise auprès des entités de son groupe situées dans la région spécifiée.'),
(284, 'Aux entités du groupe hors Région', '6024', 'Ce compte enregistre les achats effectués par l''entreprise auprès des entités de son groupe situées en dehors de la région spécifiée.'),
(284, 'Frais sur achats', '6025', 'Ce compte enregistre les frais associés aux achats effectués par l''entreprise, tels que les frais de transport ou les frais de douane.'),
(284, 'Rabais, Remises et Ristournes obtenus (non ventiles)', '6029', 'Ce compte enregistre les rabais, remises et ristournes obtenus par l''entreprise sur ses achats, qui ne sont pas ventilés dans d''autres comptes spécifiques.'),


--285
6031 Variations des stocks de marchandises
6032 Variations des stocks de matières premières et fournitures liées
6033 Variations des stocks d''autres approvisionnements
(285, 'Variations des stocks de marchandises', '6031', 'Ce compte enregistre les variations de valeur des stocks de marchandises détenus par l''entreprise, généralement en raison de changements de prix ou de quantités.'),
(285, 'Variations des stocks de matières premières et fournitures liées', '6032', 'Ce compte enregistre les variations de valeur des stocks de matières premières et fournitures liées détenus par l''entreprise, généralement en raison de changements de prix ou de quantités.'),
(285, 'Variations des stocks d''autres approvisionnements', '6033', 'Ce compte enregistre les variations de valeur des autres approvisionnements détenus par l''entreprise, tels que les produits semi-finis ou les fournitures de bureau, généralement en raison de changements de prix ou de quantités.'),


--286
6041 Matières consommables
6042 Matières combustibles
6043 Produits d''entretien
6044 Fournitures d''atelier et d''usine
6045 Frais sur achats (6)
6046 Fournitures de magasin
6047 Fournitures de bureau
6049 Rabais, Remises et Ristournes obtenus (non ventilés)
(286, 'Matières consommables', '6041', 'Ce compte enregistre les matières consommables utilisées par l''entreprise dans son processus de production ou dans la prestation de services.'),
(286, 'Matières combustibles', '6042', 'Ce compte enregistre les matières combustibles utilisées par l''entreprise, telles que le charbon, le gaz ou le fioul.'),
(286, 'Produits d''entretien', '6043', 'Ce compte enregistre les produits d''entretien utilisés par l''entreprise pour maintenir ses installations et ses équipements en bon état.'),
(286, 'Fournitures d''atelier et d''usine', '6044', 'Ce compte enregistre les fournitures utilisées dans les ateliers et les usines de l''entreprise, telles que les outils et les équipements de protection individuelle.'),
(286, 'Frais sur achats', '6045', 'Ce compte enregistre les frais associés aux achats effectués par l''entreprise, tels que les frais de transport ou les frais de douane.'),
(286, 'Fournitures de magasin', '6046', 'Ce compte enregistre les fournitures utilisées dans les magasins de l''entreprise, telles que les emballages ou les étiquettes.'),
(286, 'Fournitures de bureau', '6047', 'Ce compte enregistre les fournitures utilisées dans les bureaux de l''entreprise, telles que les fournitures de papeterie ou les équipements informatiques.'),
(286, 'Rabais, Remises et Ristournes obtenus (non ventilés)', '6049', 'Ce compte enregistre les rabais, remises et ristournes obtenus par l''entreprise sur ses achats de fournitures, qui ne sont pas ventilés dans d''autres comptes spécifiques.'),


--287
6051 Fournitures non stockables -Eau
6052 Fournitures non stockables - Électricité
6053 Fournitures non stockables - Autres énergies
6054 Fournitures d''entretien non stockables
6055 Fournitures de bureau non stockables
6056 Achats de petit matériel et outillage
6057 Achats d''études et prestations de services
6058 Achats de travaux, matériels et équipements
6059 Rabais, Remises et Ristournes obtenus (non ventilés)
(287, 'Fournitures non stockables - Eau', '6051', 'Ce compte enregistre les achats de fournitures non stockables liées à l''eau, telles que l''eau potable ou l''eau pour usage industriel.'),
(287, 'Fournitures non stockables - Électricité', '6052', 'Ce compte enregistre les achats de fournitures non stockables liées à l''électricité, telles que l''électricité utilisée pour les installations de l''entreprise.'),
(287, 'Fournitures non stockables - Autres énergies', '6053', 'Ce compte enregistre les achats de fournitures non stockables liées à d''autres formes d''énergie, telles que le gaz ou le fioul.'),
(287, 'Fournitures d''entretien non stockables', '6054', 'Ce compte enregistre les achats de fournitures d''entretien non stockables utilisées par l''entreprise pour maintenir ses installations en bon état.'),
(287, 'Fournitures de bureau non stockables', '6055', 'Ce compte enregistre les achats de fournitures de bureau non stockables utilisées par l''entreprise dans ses opérations quotidiennes.'),
(287, 'Achats de petit matériel et outillage', '6056', 'Ce compte enregistre les achats de petit matériel et d''outillage utilisés par l''entreprise dans ses activités de production ou de service.'),
(287, 'Achats d''études et prestations de services', '6057', 'Ce compte enregistre les achats d''études et de prestations de services externes réalisés par l''entreprise.'),
(287, 'Achats de travaux, matériels et équipements', '6058', 'Ce compte enregistre les achats de travaux, de matériels et d''équipements réalisés par l''entreprise pour son exploitation.'),
(287, 'Rabais, Remises et Ristournes obtenus (non ventilés)', '6059', 'Ce compte enregistre les rabais, remises et ristournes obtenus par l''entreprise sur ses achats de fournitures non stockables, qui ne sont pas ventilés dans d''autres comptes spécifiques.'),


--288
6081 Emballages perdus
6082 Emballages récupérables non identifiables
6083 Emballages à usage mixte
6085 Frais sur achats (6)
6089 Rabais, Remises et Ristournes obtenus (non ventilés)
(288, 'Emballages perdus', '6081', 'Ce compte enregistre les achats d''emballages qui sont perdus ou non récupérables après utilisation par l''entreprise.'),
(288, 'Emballages récupérables non identifiables', '6082', 'Ce compte enregistre les achats d''emballages qui sont récupérables mais ne peuvent pas être identifiés individuellement après utilisation par l''entreprise.'),
(288, 'Emballages à usage mixte', '6083', 'Ce compte enregistre les achats d''emballages qui peuvent être utilisés à la fois comme emballages et comme produits finis.'),
(288, 'Frais sur achats', '6085', 'Ce compte enregistre les frais associés aux achats effectués par l''entreprise, tels que les frais de transport ou les frais de douane.'),
(288, 'Rabais, Remises et Ristournes obtenus (non ventilés)', '6089', 'Ce compte enregistre les rabais, remises et ristournes obtenus par l''entreprise sur ses achats d''emballages, qui ne sont pas ventilés dans d''autres comptes spécifiques.'),


--289

--290

--291

--292

--293
6181 Voyages et déplacements
6182 Transports entre établissements ou chantiers
6183 Transports administratifs
(293, 'Voyages et déplacements', '6181', 'Ce compte enregistre les frais liés aux voyages et déplacements effectués par le personnel de l''entreprise, tels que les frais de transport, d''hébergement et de restauration.'),
(293, 'Transports entre établissements ou chantiers', '6182', 'Ce compte enregistre les frais liés aux transports de biens ou de personnes entre les différents établissements ou chantiers de l''entreprise.'),
(293, 'Transports administratifs', '6183', 'Ce compte enregistre les frais liés aux transports administratifs, tels que les frais de courrier ou de messagerie.'),


--294

--295
6221 Locations de terrains
6222 Locations de bâtiments
6223 Locations de matériels et outillages
6224 Malis sur emballages
6225 Locations d''emballages
6226 Fermages et loyers du foncier
6228 Locations et charges locatives diverses 
(295, 'Locations de terrains', '6221', 'Ce compte enregistre les frais de location de terrains payés par l''entreprise pour l''utilisation de terrains appartenant à des tiers.'),
(295, 'Locations de bâtiments', '6222', 'Ce compte enregistre les frais de location de bâtiments payés par l''entreprise pour l''utilisation de locaux appartenant à des tiers.'),
(295, 'Locations de matériels et outillages', '6223', 'Ce compte enregistre les frais de location de matériels et d''outillages payés par l''entreprise pour l''utilisation d''équipements appartenant à des tiers.'),
(295, 'Malis sur emballages', '6224', 'Ce compte enregistre les pertes financières résultant de la location d''emballages, généralement dues à des dommages ou à des pertes.'),
(295, 'Locations d''emballages', '6225', 'Ce compte enregistre les frais de location d''emballages payés par l''entreprise pour l''utilisation d''emballages appartenant à des tiers.'),
(295, 'Fermages et loyers du foncier', '6226', 'Ce compte enregistre les frais de location de terres agricoles ou de propriétés foncières payés par l''entreprise pour des activités agricoles ou immobilières.'),
(295, 'Locations et charges locatives diverses', '6228', 'Ce compte enregistre les frais de location et autres charges locatives payés par l''entreprise pour d''autres types de biens ou d''équipements.'),


--296
6232 Crédit-bail immobilier
6233 Crédit-bail mobilier
6234 Location-vente 
6238 Autres contrats de location acquisition
(296, 'Crédit-bail immobilier', '6232', 'Ce compte enregistre les frais liés au crédit-bail immobilier, une forme de financement où l''entreprise loue un bien immobilier avec une option d''achat à la fin du contrat.'),
(296, 'Crédit-bail mobilier', '6233', 'Ce compte enregistre les frais liés au crédit-bail mobilier, une forme de financement où l''entreprise loue des équipements ou des biens mobiliers avec une option d''achat à la fin du contrat.'),
(296, 'Location-vente', '6234', 'Ce compte enregistre les frais liés à la location-vente, une transaction où l''entreprise loue un bien avec l''intention de l''acheter à la fin de la période de location.'),
(296, 'Autres contrats de location acquisition', '6238', 'Ce compte enregistre les frais liés à d''autres types de contrats de location acquisition qui ne rentrent pas dans les catégories précédentes.'),


--297
6241 Entretien et réparations des biens immobiliers
6242 Entretien et réparations des biens mobiliers
6243 Maintenance
6244 Charges de démantèlement et remise en état 
6248 Autres entretiens et réparations
(297, 'Entretien et réparations des biens immobiliers', '6241', 'Ce compte enregistre les frais liés à l''entretien et aux réparations des biens immobiliers de l''entreprise, tels que les bâtiments, les installations et les équipements fixes.'),
(297, 'Entretien et réparations des biens mobiliers', '6242', 'Ce compte enregistre les frais liés à l''entretien et aux réparations des biens mobiliers de l''entreprise, tels que les équipements, les machines et les véhicules.'),
(297, 'Maintenance', '6243', 'Ce compte enregistre les frais liés à la maintenance préventive et corrective des équipements et des installations de l''entreprise, visant à assurer leur bon fonctionnement et leur durabilité.'),
(297, 'Charges de démantèlement et remise en état', '6244', 'Ce compte enregistre les charges liées au démantèlement et à la remise en état des installations ou des équipements de l''entreprise, généralement en fin de vie utile.'),
(297, 'Autres entretiens et réparations', '6248', 'Ce compte enregistre les frais liés à d''autres types d''entretiens et de réparations qui ne rentrent pas dans les catégories précédentes.'),



--298
6251 Assurances multirisques
6252 Assurances matérielles de transport
6253 Assurances risques d''exploitation
6254 Assurances responsabilité du producteur
6255 Assurances insolvabilité clients
6257 Assurances transport sur ventes
6258 Autres primes d''assurances
(298, 'Assurances multirisques', '6251', 'Ce compte enregistre les primes d''assurance payées par l''entreprise pour une couverture multirisques, qui protège contre plusieurs types de risques, tels que les dommages matériels, les pertes financières et la responsabilité civile.'),
(298, 'Assurances matérielles de transport', '6252', 'Ce compte enregistre les primes d''assurance payées par l''entreprise pour couvrir les biens matériels lors de leur transport, que ce soit par voie terrestre, maritime, aérienne ou ferroviaire.'),
(298, 'Assurances risques d''exploitation', '6253', 'Ce compte enregistre les primes d''assurance payées par l''entreprise pour couvrir les risques spécifiques liés à son activité commerciale ou industrielle, tels que les pertes d''exploitation, les dommages causés par des tiers ou les interruptions d''activité.'),
(298, 'Assurances responsabilité du producteur', '6254', 'Ce compte enregistre les primes d''assurance payées par l''entreprise pour couvrir sa responsabilité en tant que producteur, notamment en cas de dommages ou de préjudices causés par ses produits.'),
(298, 'Assurances insolvabilité clients', '6255', 'Ce compte enregistre les primes d''assurance payées par l''entreprise pour se prémunir contre les risques d''insolvabilité de ses clients, garantissant ainsi le paiement des créances impayées.'),
(298, 'Assurances transport sur ventes', '6257', 'Ce compte enregistre les primes d''assurance payées par l''entreprise pour couvrir les risques liés au transport des marchandises vendues à ses clients, assurant ainsi leur livraison et leur intégrité.'),
(298, 'Autres primes d''assurances', '6258', 'Ce compte enregistre les primes d''assurance payées par l''entreprise pour d''autres types de couvertures qui ne rentrent pas dans les catégories précédentes.'),




--299
6261 Études et recherches
6265 Documentation générale
6266 Documentation technique
(299, 'Études et recherches', '6261', 'Ce compte enregistre les frais liés aux études et aux recherches menées par l''entreprise pour développer de nouveaux produits, améliorer les processus existants ou explorer de nouvelles opportunités commerciales.'),
(299, 'Documentation générale', '6265', 'Ce compte enregistre les frais liés à la documentation générale utilisée par l''entreprise, tels que les abonnements à des revues professionnelles, les achats de livres ou les frais d''accès à des bases de données.'),
(299, 'Documentation technique', '6266', 'Ce compte enregistre les frais liés à la documentation technique utilisée par l''entreprise, tels que les manuels d''utilisation, les spécifications techniques ou les plans de construction.'),









--300
6271 Annonces, insertions
6272 Catalogues, imprimes publicitaires
6273 Échantillons
6274 Foires et expositions
6275 Publications
6276 Cadeaux à la clientèle
6277 Frais de colloques, séminaires, conférences
6278 Autres charges de publicité et relations publiques
(300, 'Annonces, insertions', '6271', 'Ce compte enregistre les frais liés à la publication d''annonces et d''insertions publicitaires dans les médias, tels que les journaux, les magazines ou les sites web.'),
(300, 'Catalogues, imprimés publicitaires', '6272', 'Ce compte enregistre les frais liés à la création et à l''impression de catalogues et d''autres supports publicitaires utilisés par l''entreprise pour promouvoir ses produits ou ses services.'),
(300, 'Échantillons', '6273', 'Ce compte enregistre les frais liés à la distribution d''échantillons gratuits de produits par l''entreprise, dans le but de promouvoir leur vente ou leur utilisation.'),
(300, 'Foires et expositions', '6274', 'Ce compte enregistre les frais liés à la participation de l''entreprise à des foires commerciales, des salons professionnels ou des expositions, pour présenter ses produits ou ses services.'),
(300, 'Publications', '6275', 'Ce compte enregistre les frais liés à la publication de publications d''entreprise, telles que des magazines d''entreprise ou des bulletins d''information, destinées à informer et à communiquer avec les clients, les employés ou d''autres parties prenantes.'),
(300, 'Cadeaux à la clientèle', '6276', 'Ce compte enregistre les frais liés à l''achat de cadeaux destinés aux clients ou aux partenaires commerciaux de l''entreprise, dans le cadre d''actions de fidélisation ou de relations publiques.'),
(300, 'Frais de colloques, séminaires, conférences', '6277', 'Ce compte enregistre les frais liés à la participation de l''entreprise à des colloques, des séminaires ou des conférences, que ce soit en tant qu''organisateur ou en tant que participant.'),
(300, 'Autres charges de publicité et relations publiques', '6278', 'Ce compte enregistre les autres frais liés à la publicité et aux relations publiques qui ne rentrent pas dans les catégories précédentes.'),


--301
6281 Frais de téléphone
6282 Frais de télex
6283 Frais de télécopie
6288 Autres frais de télécommunications
(301, 'Frais de téléphone', '6281', 'Ce compte enregistre les frais liés aux communications téléphoniques effectuées par l''entreprise, que ce soit pour les appels locaux, nationaux ou internationaux.'),
(301, 'Frais de télex', '6282', 'Ce compte enregistre les frais liés à l''utilisation du télex, un système de communication par écrit utilisant des terminaux spécifiques et des lignes téléphoniques.'),
(301, 'Frais de télécopie', '6283', 'Ce compte enregistre les frais liés à l''utilisation de la télécopie, un système de transmission de documents à distance par voie téléphonique.'),
(301, 'Autres frais de télécommunications', '6288', 'Ce compte enregistre les autres frais liés aux communications électroniques ou téléphoniques qui ne rentrent pas dans les catégories précédentes.'),


--302
6311 Frais sur titres (vente, garde)
6312 Frais sur effets
6313 Location de coffres
6314 Commissions d''affacturage 
6315 Commissions sur cartes de crédit
6316 Frais d''émission d''emprunts
6317 Frais sur instruments monnaie électronique 
6318 Autres frais bancaires
(302, 'Frais sur titres (vente, garde)', '6311', 'Ce compte enregistre les frais liés à la détention et à la gestion des titres financiers par l''entreprise, tels que les frais de courtage, de conservation ou de gestion de portefeuille.'),
(302, 'Frais sur effets', '6312', 'Ce compte enregistre les frais liés à la gestion et au traitement des effets de commerce, tels que les frais de remise, d''encaissement ou de gestion de chèques et de traites.'),
(302, 'Location de coffres', '6313', 'Ce compte enregistre les frais liés à la location de coffres-forts dans les banques ou autres établissements financiers, utilisés pour la conservation de valeurs ou de documents importants.'),
(302, 'Commissions d''affacturage', '6314', 'Ce compte enregistre les commissions payées par l''entreprise à une société d''affacturage pour la gestion de ses créances clients, notamment l''assurance-crédit, le recouvrement et le financement.'),
(302, 'Commissions sur cartes de crédit', '6315', 'Ce compte enregistre les commissions payées par l''entreprise aux émetteurs de cartes de crédit pour l''utilisation de leurs services de paiement électronique par carte.'),
(302, 'Frais d''émission d''emprunts', '6316', 'Ce compte enregistre les frais liés à l''émission d''emprunts par l''entreprise, tels que les frais d''émission, de placement ou de garantie associés à l''émission de titres de dette.'),
(302, 'Frais sur instruments monnaie électronique', '6317', 'Ce compte enregistre les frais liés à l''utilisation d''instruments de monnaie électronique, tels que les cartes prépayées ou les portefeuilles électroniques, pour effectuer des transactions financières.'),
(302, 'Autres frais bancaires', '6318', 'Ce compte enregistre les autres frais bancaires payés par l''entreprise qui ne rentrent pas dans les catégories précédentes.'),


--303
6322 Commissions et courtages sur ventes
6324 Honoraires des professions règlementées
6325 frais d''actes et de contentieux
6326 Rémunérations d''affacturage 
6327 Rémunérations des autres prestataires de services 
6328 Divers frais
(303, 'Commissions et courtages sur ventes', '6322', 'Ce compte enregistre les commissions et les courtages payés par l''entreprise à des intermédiaires ou des agents pour la vente de ses produits ou services.'),
(303, 'Honoraires des professions règlementées', '6324', 'Ce compte enregistre les honoraires payés par l''entreprise à des professions réglementées, telles que les avocats, les experts-comptables ou les notaires, pour des services professionnels rendus.'),
(303, 'Frais d''actes et de contentieux', '6325', 'Ce compte enregistre les frais liés à la rédaction d''actes juridiques et aux procédures contentieuses, tels que les frais de notaire, les frais d''huissier ou les honoraires d''avocat.'),
(303, 'Rémunérations d''affacturage', '6326', 'Ce compte enregistre les rémunérations payées par l''entreprise à une société d''affacturage pour la gestion de ses créances clients, notamment l''assurance-crédit, le recouvrement et le financement.'),
(303, 'Rémunérations des autres prestataires de services', '6327', 'Ce compte enregistre les rémunérations payées par l''entreprise à d''autres prestataires de services pour des services rendus, tels que les consultants, les agences de communication ou les prestataires informatiques.'),
(303, 'Divers frais', '6328', 'Ce compte enregistre les autres frais de services qui ne rentrent pas dans les catégories précédentes, tels que les frais de nettoyage, de gardiennage ou de maintenance.'),


--304

--305
6342 Redevances pour brevets, licences
6343 Redevances pour logiciels
6344 Redevances pour marques 
6345 Redevances pour site internet
6346 Redevances pour concessions, droits et valeurs similaires 
(305, 'Redevances pour brevets, licences', '6342', 'Ce compte enregistre les redevances payées par l''entreprise pour l''utilisation de brevets ou de licences détenus par des tiers, permettant l''exploitation de technologies ou de propriétés intellectuelles protégées.'),
(305, 'Redevances pour logiciels', '6343', 'Ce compte enregistre les redevances payées par l''entreprise pour l''utilisation de logiciels détenus par des tiers, permettant l''exploitation de programmes informatiques ou d''applications spécifiques.'),
(305, 'Redevances pour marques', '6344', 'Ce compte enregistre les redevances payées par l''entreprise pour l''utilisation de marques détenues par des tiers, permettant l''utilisation de marques déposées ou de noms commerciaux protégés.'),
(305, 'Redevances pour site internet', '6345', 'Ce compte enregistre les redevances payées par l''entreprise pour l''utilisation de sites internet ou de contenus en ligne détenus par des tiers, permettant l''accès à des plateformes web ou à des contenus spécifiques.'),
(305, 'Redevances pour concessions, droits et valeurs similaires', '6346', 'Ce compte enregistre les redevances payées par l''entreprise pour l''obtention de concessions, de droits ou de valeurs similaires détenus par des tiers, permettant l''utilisation de biens ou de services spécifiques.'),


--306
6351 Cotisations
6358 Concours divers
(306, 'Cotisations', '6351', 'Ce compte enregistre les cotisations payées par l''entreprise à des organismes, associations ou syndicats, pour adhérer à des groupements professionnels, des chambres de commerce ou des organisations sectorielles.'),
(306, 'Concours divers', '6358', 'Ce compte enregistre les frais liés à la participation de l''entreprise à différents concours, compétitions ou prix, ainsi que les dons versés à des fondations ou des œuvres caritatives dans le cadre de concours ou d''événements.'),


--307
6371 Personnel intérimaire
6372 Personnel détaché ou prête à l''entité
(307, 'Personnel intérimaire', '6371', 'Ce compte enregistre les frais liés à l''emploi de personnel intérimaire ou temporaire, recruté par une agence d''intérim pour répondre à des besoins ponctuels ou temporaires de l''entreprise.'),
(307, 'Personnel détaché ou prêté à l''entité', '6372', 'Ce compte enregistre les frais liés à l''emploi de personnel détaché ou prêté à l''entreprise par une autre entité, telle qu''une société mère, une filiale ou une entreprise partenaire, pour une période déterminée.'),


--308
6381 Frais de recrutement du personnel
6382 Frais de déménagement
6383 Réceptions
6384 Missions
6385 Charges de copropriété 
6388 Charges externes diverses
(308, 'Frais de recrutement du personnel', '6381', 'Ce compte enregistre les frais liés au recrutement de personnel par l''entreprise, tels que les honoraires d''agences de recrutement, les frais de publicité pour les offres d''emploi ou les frais de sélection des candidats.'),
(308, 'Frais de déménagement', '6382', 'Ce compte enregistre les frais liés au déménagement de personnel, notamment les frais de transport, d''emballage, de stockage ou de réinstallation associés à un changement de résidence pour les besoins professionnels.'),
(308, 'Réceptions', '6383', 'Ce compte enregistre les frais liés à l''organisation de réceptions ou d''événements professionnels par l''entreprise, tels que les frais de restauration, de location de salle, d''animation ou de matériel événementiel.'),
(308, 'Missions', '6384', 'Ce compte enregistre les frais liés aux missions professionnelles effectuées par le personnel de l''entreprise, tels que les frais de déplacement, d''hébergement, de restauration ou les frais professionnels engagés lors de déplacements professionnels.'),
(308, 'Charges de copropriété', '6385', 'Ce compte enregistre les charges liées à la copropriété des locaux occupés par l''entreprise, telles que les charges de gestion, d''entretien, d''assurance ou de travaux communs.'),
(308, 'Charges externes diverses', '6388', 'Ce compte enregistre les autres charges externes supportées par l''entreprise qui ne rentrent pas dans les catégories précédentes, telles que les honoraires de consultants, les frais de formation externe ou les frais de communication externes.'),


--309
6411 Impôts fonciers et taxes annexes
6412 Patentes, licences et taxes annexes
6413 Taxes sur appointements et salaires
6414 Taxes d''apprentissage
6415 Formation professionnelle continue
6418 Autres impôts et taxes directs
(309, 'Impôts fonciers et taxes annexes', '6411', 'Ce compte enregistre les impôts fonciers et les taxes associées payés par l''entreprise sur ses biens immobiliers ou ses terrains, ainsi que les taxes annexes liées à la propriété immobilière.'),
(309, 'Patentes, licences et taxes annexes', '6412', 'Ce compte enregistre les patentes, licences et autres taxes similaires payées par l''entreprise pour l''exercice de ses activités commerciales ou professionnelles, ainsi que les taxes annexes associées.'),
(309, 'Taxes sur appointements et salaires', '6413', 'Ce compte enregistre les taxes ou cotisations sociales prélevées sur les salaires et les rémunérations versés par l''entreprise à ses employés, notamment les cotisations sociales patronales et salariales.'),
(309, 'Taxes d''apprentissage', '6414', 'Ce compte enregistre les taxes d''apprentissage payées par l''entreprise pour financer la formation des apprentis, conformément à la réglementation en vigueur sur l''apprentissage.'),
(309, 'Formation professionnelle continue', '6415', 'Ce compte enregistre les dépenses liées à la formation professionnelle continue des employés de l''entreprise, telles que les frais de formation, les frais pédagogiques ou les frais de déplacement associés à la formation.'),
(309, 'Autres impôts et taxes directs', '6418', 'Ce compte enregistre les autres impôts et taxes directs payés par l''entreprise qui ne rentrent pas dans les catégories précédentes, tels que l''impôt sur les sociétés, l''impôt sur le revenu des entreprises ou d''autres taxes similaires.'),


--310

--311
6461 Droits de mutation
6462 Droits de timbre
6463 Taxes sur les véhicules de sociétés
6464 Vignettes
6468 Autres droits
(311, 'Droits de mutation', '6461', 'Ce compte enregistre les droits de mutation payés par l''entreprise lors de l''acquisition ou du transfert de biens immobiliers ou de droits immobiliers, tels que les droits de mutation à titre onéreux ou les droits de mutation à titre gratuit.'),
(311, 'Droits de timbre', '6462', 'Ce compte enregistre les droits de timbre payés par l''entreprise sur certains actes ou documents légaux, tels que les actes notariés, les contrats ou les titres de propriété, conformément à la législation en vigueur sur les droits de timbre.'),
(311, 'Taxes sur les véhicules de sociétés', '6463', 'Ce compte enregistre les taxes annuelles payées par l''entreprise sur les véhicules de sociétés utilisés dans le cadre de son activité professionnelle, conformément à la législation en vigueur sur la fiscalité des véhicules de société.'),
(311, 'Vignettes', '6464', 'Ce compte enregistre les frais liés à l''achat de vignettes ou de certificats d''immatriculation pour les véhicules utilisés par l''entreprise, permettant leur circulation sur les routes ou autoroutes soumises à péage.'),
(311, 'Autres droits', '6468', 'Ce compte enregistre les autres droits ou taxes spécifiques payés par l''entreprise qui ne rentrent pas dans les catégories précédentes, tels que les droits de succession, les droits de douane ou d''autres droits similaires.'),



--312
6471 Pénalités d''assiette, impôts directs
6472 Pénalités d''assiette, impôts indirects
6473 Pénalités de recouvrement, impôts directs
6474 Pénalités de recouvrement, impôts indirects
6478 Autres amendes pénales et fiscales
(312, 'Pénalités d''assiette, impôts directs', '6471', 'Ce compte enregistre les pénalités d''assiette appliquées par l''administration fiscale sur les impôts directs, telles que l''impôt sur les sociétés, l''impôt sur le revenu des entreprises ou d''autres impôts similaires.'),
(312, 'Pénalités d''assiette, impôts indirects', '6472', 'Ce compte enregistre les pénalités d''assiette appliquées par l''administration fiscale sur les impôts indirects, tels que la TVA, la taxe sur les produits pétroliers ou d''autres taxes indirectes.'),
(312, 'Pénalités de recouvrement, impôts directs', '6473', 'Ce compte enregistre les pénalités de recouvrement appliquées par l''administration fiscale sur les impôts directs en cas de retard ou de non-paiement, conformément à la législation fiscale en vigueur.'),
(312, 'Pénalités de recouvrement, impôts indirects', '6474', 'Ce compte enregistre les pénalités de recouvrement appliquées par l''administration fiscale sur les impôts indirects en cas de retard ou de non-paiement, conformément à la législation fiscale en vigueur.'),
(312, 'Autres amendes pénales et fiscales', '6478', 'Ce compte enregistre les autres amendes pénales et fiscales payées par l''entreprise qui ne rentrent pas dans les catégories précédentes, telles que les amendes pour non-respect des obligations légales ou réglementaires.'),



--313

--314
6511 Clients
6515 Autres débiteurs
(314, 'Clients', '6511', 'Ce compte enregistre les montants dus par les clients à l''entreprise pour des biens vendus ou des services rendus, mais pas encore payés. Il représente les créances commerciales de l''entreprise sur ses clients.'),
(314, 'Autres débiteurs', '6515', 'Ce compte enregistre les autres montants dus à l''entreprise par des tiers autres que les clients, tels que les avances versées, les créances diverses ou les autres débiteurs non classés dans les catégories précédentes.'),


--315
6521 Quote-part transférée de bénéfices (comptabilité du gérant)
6525 Pertes imputées par transfert (comptabilité des associés non-gérants)
(315, 'Quote-part transférée de bénéfices (comptabilité du gérant)', '6521', 'Ce compte enregistre la quote-part des bénéfices de l''entreprise transférée à la comptabilité du gérant, généralement dans le cadre d''une société de personnes où le gérant détient une part des bénéfices.'),
(315, 'Pertes imputées par transfert (comptabilité des associés non-gérants)', '6525', 'Ce compte enregistre les pertes imputées par transfert à la comptabilité des associés non-gérants, généralement dans le cadre d''une société de personnes où les associés non-gérants supportent une part des pertes de l''entreprise.'),


--316
6541 Immobilisations incorporelles 
6542 Immobilisations corporelles
(316, 'Immobilisations incorporelles', '6541', 'Ce compte enregistre les immobilisations incorporelles de l''entreprise, telles que les brevets, les marques, les logiciels informatiques ou les droits d''exploitation.'),
(316, 'Immobilisations corporelles', '6542', 'Ce compte enregistre les immobilisations corporelles de l''entreprise, telles que les terrains, les bâtiments, les machines, les équipements ou les véhicules utilisés dans le cadre de l''activité professionnelle.'),


--317

--318

--319
6581 Indemnités de fonction et autres rémunérations d''administrateurs
6582 Dons
6583 Mécénat
6588 Autres charges diverses
(319, 'Indemnités de fonction et autres rémunérations d''administrateurs', '6581', 'Ce compte enregistre les indemnités de fonction et autres rémunérations versées aux administrateurs de l''entreprise pour leurs services rendus. Il peut également inclure d''autres types de rémunérations spécifiques aux administrateurs.'),
(319, 'Dons', '6582', 'Ce compte enregistre les dons faits par l''entreprise à des organismes de charité ou à des causes sociales. Les dons peuvent être en nature ou en espèces et sont généralement destinés à soutenir des initiatives philanthropiques.'),
(319, 'Mécénat', '6583', 'Ce compte enregistre les dépenses liées au mécénat culturel ou artistique de l''entreprise. Le mécénat implique généralement le soutien financier ou en nature à des projets culturels, artistiques ou patrimoniaux, sans attente de contrepartie commerciale.'),
(319, 'Autres charges diverses', '6588', 'Ce compte enregistre les autres charges diverses qui ne rentrent pas dans les catégories précédentes. Il peut inclure divers frais et dépenses qui ne sont pas directement liés aux activités opérationnelles de l''entreprise.'),


--320
6591 sur risques à court terme 
6592 sur stocks
6594 sur créances
6598 Autres charges pour dépréciations et provisions pour risques à court terme
(320, 'sur risques à court terme', '6591', 'Ce compte enregistre les charges pour dépréciations et provisions liées aux risques à court terme encourus par l''entreprise. Ces provisions sont constituées pour couvrir les pertes potentielles résultant de risques spécifiques survenant à court terme.'),
(320, 'sur stocks', '6592', 'Ce compte enregistre les charges pour dépréciations et provisions liées aux stocks de l''entreprise. Ces provisions sont constituées pour couvrir les pertes potentielles résultant de la dépréciation ou de l''obsolescence des stocks.'),
(320, 'sur créances', '6594', 'Ce compte enregistre les charges pour dépréciations et provisions liées aux créances de l''entreprise. Ces provisions sont constituées pour couvrir les pertes potentielles résultant du non-paiement ou du paiement partiel des créances par les débiteurs.'),
(320, 'Autres charges pour dépréciations et provisions pour risques à court terme', '6598', 'Ce compte enregistre les autres charges pour dépréciations et provisions liées aux risques à court terme qui ne rentrent pas dans les catégories précédentes. Il peut inclure des provisions pour d''autres types de risques spécifiques à court terme.'),


--321
6611 Appointements salaires et commissions
6612 Primes et gratifications
6613 Congés payés
6614 Indemnités de préavis, de licenciement et de recherche d''embauche
6615 Indemnités de maladie versées aux travailleurs
6616 Supplément familial
6617 Avantages en nature
6618 Autres rémunérations directes
(321, 'Appointements salaires et commissions', '6611', 'Ce compte enregistre les appointements, salaires et commissions versés aux employés de l''entreprise pour leur travail. Il inclut les rémunérations de base, les commissions basées sur les ventes ou les performances, ainsi que d''autres paiements salariaux.'),
(321, 'Primes et gratifications', '6612', 'Ce compte enregistre les primes et gratifications versées aux employés de l''entreprise en récompense de leur performance exceptionnelle, de leur ancienneté ou pour d''autres raisons spécifiques.'),
(321, 'Congés payés', '6613', 'Ce compte enregistre les charges liées aux congés payés accordés aux employés de l''entreprise. Il inclut les salaires versés pendant les périodes de congé annuel ou de congé de maladie, ainsi que les cotisations sociales associées.'),
(321, 'Indemnités de préavis, de licenciement et de recherche d''embauche', '6614', 'Ce compte enregistre les indemnités versées aux employés de l''entreprise dans le cadre de préavis de licenciement, de licenciement ou de recherche d''emploi. Ces indemnités peuvent être dues à la fin d''un contrat de travail ou à d''autres circonstances.'),
(321, 'Indemnités de maladie versées aux travailleurs', '6615', 'Ce compte enregistre les indemnités de maladie versées aux travailleurs de l''entreprise en cas de congé de maladie. Ces indemnités sont destinées à compenser la perte de salaire due à l''incapacité de travailler en raison de la maladie.'),
(321, 'Supplément familial', '6616', 'Ce compte enregistre les suppléments familiaux versés aux employés de l''entreprise en fonction de leur situation familiale. Il peut s''agir de prestations sociales destinées à soutenir les familles des employés, telles que les allocations familiales ou les prestations pour enfants à charge.'),
(321, 'Avantages en nature', '6617', 'Ce compte enregistre la valeur des avantages en nature fournis aux employés de l''entreprise en plus de leur salaire en espèces. Les avantages en nature peuvent inclure le logement, la voiture de fonction, les repas ou d''autres avantages non monétaires.'),
(321, 'Autres rémunérations directes', '6618', 'Ce compte enregistre les autres rémunérations directes versées aux employés de l''entreprise qui ne rentrent pas dans les catégories précédentes. Il peut inclure des paiements spécifiques liés à des conditions de travail particulières ou à des avantages sociaux spécifiques.'),


--322
6621 Appointements salaires et commissions
6622 Primes et gratifications
6623 Congés payés
6624 Indemnités de préavis, de licenciement et de recherche d''embauche
6625 Indemnités de maladie versées aux travailleurs
6626 Supplément familial
6627 Avantages en nature
6628 Autres rémunérations directes
(322, 'Appointements salaires et commissions', '6621', 'Ce compte enregistre les appointements, salaires et commissions versés aux employés de l''entreprise pour leur travail. Il inclut les rémunérations de base, les commissions basées sur les ventes ou les performances, ainsi que d''autres paiements salariaux.'),
(322, 'Primes et gratifications', '6622', 'Ce compte enregistre les primes et gratifications versées aux employés de l''entreprise en récompense de leur performance exceptionnelle, de leur ancienneté ou pour d''autres raisons spécifiques.'),
(322, 'Congés payés', '6623', 'Ce compte enregistre les charges liées aux congés payés accordés aux employés de l''entreprise. Il inclut les salaires versés pendant les périodes de congé annuel ou de congé de maladie, ainsi que les cotisations sociales associées.'),
(322, 'Indemnités de préavis, de licenciement et de recherche d''embauche', '6624', 'Ce compte enregistre les indemnités versées aux employés de l''entreprise dans le cadre de préavis de licenciement, de licenciement ou de recherche d''emploi. Ces indemnités peuvent être dues à la fin d''un contrat de travail ou à d''autres circonstances.'),
(322, 'Indemnités de maladie versées aux travailleurs', '6625', 'Ce compte enregistre les indemnités de maladie versées aux travailleurs de l''entreprise en cas de congé de maladie. Ces indemnités sont destinées à compenser la perte de salaire due à l''incapacité de travailler en raison de la maladie.'),
(322, 'Supplément familial', '6626', 'Ce compte enregistre les suppléments familiaux versés aux employés de l''entreprise en fonction de leur situation familiale. Il peut s''agir de prestations sociales destinées à soutenir les familles des employés, telles que les allocations familiales ou les prestations pour enfants à charge.'),
(322, 'Avantages en nature', '6627', 'Ce compte enregistre la valeur des avantages en nature fournis aux employés de l''entreprise en plus de leur salaire en espèces. Les avantages en nature peuvent inclure le logement, la voiture de fonction, les repas ou d''autres avantages non monétaires.'),
(322, 'Autres rémunérations directes', '6628', 'Ce compte enregistre les autres rémunérations directes versées aux employés de l''entreprise qui ne rentrent pas dans les catégories précédentes. Il peut inclure des paiements spécifiques liés à des conditions de travail particulières ou à des avantages sociaux spécifiques.'),


--323
6631 Indemnités de logement
6632 Indemnités de représentation
6633 Indemnités d''expatriation
6634 Indemnités de transport 
6638 Autres indemnités et avantages divers
(323, 'Indemnités de logement', '6631', 'Ce compte enregistre les indemnités de logement versées aux employés de l''entreprise pour compenser les frais liés au logement, tels que le loyer ou les frais de logement temporaires.'),
(323, 'Indemnités de représentation', '6632', 'Ce compte enregistre les indemnités de représentation versées aux employés de l''entreprise pour couvrir les frais liés à la représentation de l''entreprise lors d''événements officiels, de réunions avec des clients ou d''autres occasions professionnelles.'),
(323, 'Indemnités d''expatriation', '6633', 'Ce compte enregistre les indemnités d''expatriation versées aux employés de l''entreprise qui travaillent à l''étranger. Ces indemnités sont destinées à compenser les coûts supplémentaires associés à la vie à l''étranger, tels que le logement, les déplacements ou les frais de subsistance.'),
(323, 'Indemnités de transport', '6634', 'Ce compte enregistre les indemnités de transport versées aux employés de l''entreprise pour couvrir les frais de déplacement entre leur domicile et leur lieu de travail, ainsi que pour d''autres déplacements professionnels liés à leur emploi.'),
(323, 'Autres indemnités et avantages divers', '6638', 'Ce compte enregistre les autres indemnités et avantages divers versés aux employés de l''entreprise qui ne rentrent pas dans les catégories précédentes. Il peut inclure des avantages tels que les remboursements de frais médicaux, les indemnités pour uniformes ou d''autres prestations spécifiques.'),


--324
6641 Charges sociales sur rémunération du personnel national
6642 Charges sociales sur rémunération du personnel non national
(324, 'Charges sociales sur rémunération du personnel national', '6641', 'Ce compte enregistre les charges sociales dues par l''entreprise sur la rémunération versée à son personnel national. Ces charges sociales peuvent inclure les cotisations de sécurité sociale, les contributions aux régimes de retraite et d''assurance chômage, ainsi que d''autres charges sociales obligatoires.'),
(324, 'Charges sociales sur rémunération du personnel non national', '6642', 'Ce compte enregistre les charges sociales dues par l''entreprise sur la rémunération versée à son personnel non national, tel que les expatriés ou les travailleurs détachés. Ces charges sociales peuvent inclure les cotisations de sécurité sociale, les contributions aux régimes de retraite et d''assurance chômage, ainsi que d''autres charges sociales obligatoires.'),


--325
6661 Rémunération du travail de l''exploitant
6662 Charges sociales
(325, 'Rémunération du travail de l''exploitant', '6661', 'Ce compte enregistre la rémunération versée à l''exploitant ou au dirigeant de l''entreprise pour son travail. Il peut s''agir de salaires, de dividendes ou d''autres formes de rémunération.'),
(325, 'Charges sociales', '6662', 'Ce compte enregistre les charges sociales dues par l''entreprise sur la rémunération versée à l''exploitant ou au dirigeant de l''entreprise. Ces charges sociales peuvent inclure les cotisations de sécurité sociale, les contributions aux régimes de retraite et d''assurance chômage, ainsi que d''autres charges sociales obligatoires.'),


--326
6671 Personnel intérimaire
6672 Personnel détaché ou prêté à l''entité
(326, 'Personnel intérimaire', '6671', 'Ce compte enregistre les coûts liés au personnel intérimaire employé par l''entreprise pour répondre à des besoins temporaires en main-d''œuvre. Ces coûts peuvent inclure les salaires, les charges sociales et les honoraires versés à l''agence d''intérim.'),
(326, 'Personnel détaché ou prêté à l''entité', '6672', 'Ce compte enregistre les coûts liés au personnel détaché ou prêté à l''entité par d''autres entreprises ou agences de travail temporaire. Ces coûts peuvent inclure les salaires, les charges sociales et les frais de mise à disposition.'),


--327
6681 Versements aux syndicats et comités d''entreprise, d''établissement
6682 Versements aux comités d''hygiène et de sécurité
6683 Versements et contributions aux autres œuvres sociales
6684 Médecine du travail et pharmacie
6685 Assurances et organismes de santé
6686 Assurances retraite et fonds de pension
6687 Majorations et pénalités sociales
6688 Charges sociales diverses
(327, 'Versements aux syndicats et comités d''entreprise, d''établissement', '6681', 'Ce compte enregistre les versements effectués par l''entreprise aux syndicats et aux comités d''entreprise ou d''établissement. Ces versements peuvent être destinés à financer les activités syndicales, les œuvres sociales ou les actions des comités.'),
(327, 'Versements aux comités d''hygiène et de sécurité', '6682', 'Ce compte enregistre les versements effectués par l''entreprise aux comités d''hygiène et de sécurité. Ces versements peuvent être destinés à financer les activités de prévention des risques professionnels et à assurer la santé et la sécurité des travailleurs.'),
(327, 'Versements et contributions aux autres œuvres sociales', '6683', 'Ce compte enregistre les versements et contributions effectués par l''entreprise à d''autres œuvres sociales ou associations caritatives. Ces versements peuvent être destinés à soutenir des initiatives locales ou des projets sociaux spécifiques.'),
(327, 'Médecine du travail et pharmacie', '6684', 'Ce compte enregistre les charges liées à la médecine du travail et à la pharmacie pour les employés de l''entreprise. Il inclut les frais médicaux, les examens de santé, les médicaments et les services de santé au travail.'),
(327, 'Assurances et organismes de santé', '6685', 'Ce compte enregistre les charges liées aux assurances et aux organismes de santé pour les employés de l''entreprise. Il inclut les primes d''assurance maladie, les cotisations aux régimes de prévoyance et les frais médicaux non remboursés par l''assurance.'),
(327, 'Assurances retraite et fonds de pension', '6686', 'Ce compte enregistre les charges liées aux assurances retraite et aux fonds de pension pour les employés de l''entreprise. Il inclut les cotisations aux régimes de retraite complémentaire, les contributions aux plans d''épargne retraite et les frais de gestion des fonds de pension.'),
(327, 'Majorations et pénalités sociales', '6687', 'Ce compte enregistre les majorations et pénalités sociales imposées à l''entreprise en cas de non-respect des obligations sociales. Ces majorations peuvent être dues à des retards de paiement, des erreurs de déclaration ou d''autres infractions.'),
(327, 'Charges sociales diverses', '6688', 'Ce compte enregistre les autres charges sociales de l''entreprise qui ne rentrent pas dans les catégories précédentes. Il peut inclure des charges telles que les cotisations de formation professionnelle, les contributions au financement de la sécurité sociale ou d''autres frais sociaux spécifiques.'),


--328
6711 Emprunts obligataires
6712 Emprunts auprès des établissements de crédit
6713 Dettes liées à des participations
6714 Primes de remboursements des obligations
(328, 'Emprunts obligataires', '6711', 'Ce compte enregistre les emprunts contractés par l''entreprise sous forme d''obligations. Les obligations sont des titres de créance émis par l''entreprise et vendus sur les marchés financiers. Les fonds ainsi obtenus sont généralement utilisés pour financer des investissements ou des projets spécifiques.'),
(328, 'Emprunts auprès des établissements de crédit', '6712', 'Ce compte enregistre les emprunts contractés par l''entreprise auprès des établissements de crédit tels que les banques et les institutions financières. Ces emprunts peuvent prendre la forme de prêts à court terme, de lignes de crédit renouvelables ou de facilités de crédit à long terme.'),
(328, 'Dettes liées à des participations', '6713', 'Ce compte enregistre les dettes contractées par l''entreprise en relation avec des participations dans d''autres entreprises ou entités. Ces dettes peuvent résulter de l''acquisition de participations minoritaires ou majoritaires dans d''autres entreprises, et sont généralement liées à des opérations de fusion-acquisition ou de développement stratégique.'),
(328, 'Primes de remboursements des obligations', '6714', 'Ce compte enregistre les primes de remboursement versées par l''entreprise lors du remboursement anticipé d''obligations. Les primes de remboursement sont des montants supplémentaires versés aux détenteurs d''obligations en cas de remboursement anticipé pour compenser la perte d''intérêts futurs.'),


--329
6722 Intérêts dans loyers de location acquisition/crédit-bail immobilier
6723 Intérêts dans loyers de location acquisition/crédit -bail mobilier 
6724 Intérêts dans loyers de location acquisition/location -vente 
6728 Intérêts dans loyers des autres locations acquisition
(329, 'Intérêts dans loyers de location acquisition/crédit-bail immobilier', '6722', 'Ce compte enregistre les intérêts perçus par l''entreprise sur les loyers de location acquisition ou crédit-bail immobilier qu''elle accorde à ses clients. Ces intérêts représentent la rémunération financière associée à la mise à disposition d''actifs immobiliers par l''entreprise.'),
(329, 'Intérêts dans loyers de location acquisition/crédit-bail mobilier', '6723', 'Ce compte enregistre les intérêts perçus par l''entreprise sur les loyers de location acquisition ou crédit-bail mobilier qu''elle accorde à ses clients. Ces intérêts représentent la rémunération financière associée à la mise à disposition d''actifs mobiliers par l''entreprise.'),
(329, 'Intérêts dans loyers de location acquisition/location-vente', '6724', 'Ce compte enregistre les intérêts perçus par l''entreprise sur les loyers de location acquisition ou location-vente qu''elle accorde à ses clients. Ces intérêts représentent la rémunération financière associée à la mise à disposition d''actifs par l''entreprise dans le cadre de contrats de location ou de location-vente.'),
(329, 'Intérêts dans loyers des autres locations acquisition', '6728', 'Ce compte enregistre les intérêts perçus par l''entreprise sur les loyers de locations acquisition autres que celles spécifiées dans les comptes précédents. Ces intérêts représentent la rémunération financière associée à la mise à disposition d''actifs par l''entreprise dans le cadre de contrats de location.'),


--330

--331
6741 Avances reçues et dépôts créditeurs
6742 Comptes courants bloques
6743 Intérêts sur obligations cautionnées
6744 Intérêts sur dettes commerciales
6745 Intérêts bancaires et sur opérations de financement (escompte)
6748 Intérêts sur dettes diverses
(331, 'Avances reçues et dépôts créditeurs', '6741', 'Ce compte enregistre les avances reçues par l''entreprise de la part de tiers ainsi que les dépôts créditeurs. Les avances reçues sont des paiements anticipés effectués par les clients ou d''autres parties prenantes, tandis que les dépôts créditeurs représentent des fonds déposés auprès de l''entreprise par des tiers.'),
(331, 'Comptes courants bloqués', '6742', 'Ce compte enregistre les fonds déposés dans des comptes courants bloqués, c''est-à-dire des comptes où les fonds sont temporairement inaccessibles ou soumis à des restrictions de retrait.'),
(331, 'Intérêts sur obligations cautionnées', '6743', 'Ce compte enregistre les intérêts perçus par l''entreprise sur les obligations cautionnées qu''elle a émises. Les obligations cautionnées sont des titres de créance assortis d''une garantie de remboursement fournie par un tiers, généralement une institution financière ou une compagnie d''assurance.'),
(331, 'Intérêts sur dettes commerciales', '6744', 'Ce compte enregistre les intérêts perçus par l''entreprise sur les dettes commerciales qu''elle a contractées. Les dettes commerciales comprennent généralement les dettes fournisseurs et les dettes résultant d''achats à crédit.'),
(331, 'Intérêts bancaires et sur opérations de financement (escompte)', '6745', 'Ce compte enregistre les intérêts perçus par l''entreprise sur les opérations de financement, y compris les intérêts bancaires et les intérêts résultant d''opérations d''escompte de créances commerciales.'),
(331, 'Intérêts sur dettes diverses', '6748', 'Ce compte enregistre les intérêts perçus par l''entreprise sur des dettes autres que celles spécifiées dans les comptes précédents. Il peut s''agir par exemple d''intérêts sur des prêts inter-entreprises ou des prêts à des tiers.'),


--332

--333

--334
6771 Pertes sur cessions de titre de placement 
6772 Malis provenant d''attribution gratuite d''actions au personnel salarié et aux dirigeants
(334, 'Pertes sur cessions de titre de placement', '6771', 'Ce compte enregistre les pertes subies par l''entreprise lors de la cession de titres de placement. Ces pertes résultent généralement de la différence entre le prix de vente des titres et leur coût d''acquisition ou leur valeur comptable.'),
(334, 'Malis provenant d''attribution gratuite d''actions au personnel salarié et aux dirigeants', '6772', 'Ce compte enregistre les malis résultant de l''attribution gratuite d''actions au personnel salarié et aux dirigeants de l''entreprise. Ces malis correspondent à la différence entre la valeur des actions attribuées gratuitement et leur valeur comptable.'),


--335
6781 sur rentes viagères
6782 sur opérations financières
6784 sur instruments de trésorerie
(335, 'sur rentes viagères', '6781', 'Ce compte enregistre les produits financiers perçus par l''entreprise sur les rentes viagères qu''elle a accordées. Les rentes viagères sont des paiements réguliers effectués par l''entreprise à un bénéficiaire pendant toute sa vie en échange d''un capital initial.'),
(335, 'sur opérations financières', '6782', 'Ce compte enregistre les produits financiers perçus par l''entreprise sur des opérations financières autres que celles spécifiées dans les comptes précédents. Il peut s''agir par exemple de produits sur des opérations de placement ou de produits sur des opérations de couverture de risques.'),
(335, 'sur instruments de trésorerie', '6784', 'Ce compte enregistre les produits financiers perçus par l''entreprise sur des instruments de trésorerie, tels que les comptes bancaires, les certificats de dépôt ou les billets de trésorerie.'),


--336
6791 sur risques financiers
6795 sur titres de placement
6798 Autres charges pour dépréciations et provisions pour risques à court terme financières
(336, 'sur risques financiers', '6791', 'Ce compte enregistre les charges liées aux dépréciations et provisions pour risques financiers à court terme encourus par l''entreprise. Ces charges sont constituées pour couvrir les pertes potentielles résultant de risques financiers tels que les fluctuations des taux de change, des taux d''intérêt ou des prix des matières premières.'),
(336, 'sur titres de placement', '6795', 'Ce compte enregistre les charges liées aux dépréciations et provisions pour risques à court terme sur les titres de placement détenus par l''entreprise. Ces charges sont constituées pour couvrir les pertes potentielles résultant de la dépréciation de la valeur des titres de placement.'),
(336, 'Autres charges pour dépréciations et provisions pour risques à court terme financières', '6798', 'Ce compte enregistre d''autres charges liées aux dépréciations et provisions pour risques financiers à court terme qui ne sont pas spécifiquement couvertes par les comptes précédents. Ces charges sont constituées pour couvrir les pertes potentielles résultant de divers risques financiers.'),


--337
6812 Dotations aux amortissements des immobilisations incorporelles
6813 Dotations aux amortissements des immobilisations corporelles
(337, 'Dotations aux amortissements des immobilisations incorporelles', '6812', 'Ce compte enregistre les dotations aux amortissements comptabilisées par l''entreprise pour les immobilisations incorporelles, telles que les brevets, les licences et les logiciels. Les dotations aux amortissements représentent la répartition du coût d''acquisition ou de production de ces immobilisations sur leur durée d''utilisation prévue.'),
(337, 'Dotations aux amortissements des immobilisations corporelles', '6813', 'Ce compte enregistre les dotations aux amortissements comptabilisées par l''entreprise pour les immobilisations corporelles, telles que les bâtiments, les machines et le matériel. Les dotations aux amortissements représentent la répartition du coût d''acquisition ou de production de ces immobilisations sur leur durée d''utilisation prévue.'),


--338
6911 Dotations aux provisions pour risques et charges
6913 Dotations aux dépréciations des immobilisations incorporelles
6914 Dotations aux dépréciations des immobilisations corporelles
(338, 'Dotations aux provisions pour risques et charges', '6911', 'Ce compte enregistre les dotations aux provisions comptabilisées par l''entreprise pour couvrir les risques et charges identifiés mais non encore réalisés à la date de clôture de l''exercice financier. Les dotations aux provisions sont constituées pour anticiper les pertes probables ou les charges futures incertaines.'),
(338, 'Dotations aux dépréciations des immobilisations incorporelles', '6913', 'Ce compte enregistre les dotations aux dépréciations comptabilisées par l''entreprise pour les immobilisations incorporelles, telles que les brevets, les licences et les logiciels. Les dotations aux dépréciations sont constituées lorsque la valeur recouvrable d''une immobilisation incorporelle est inférieure à sa valeur nette comptable.'),
(338, 'Dotations aux dépréciations des immobilisations corporelles', '6914', 'Ce compte enregistre les dotations aux dépréciations comptabilisées par l''entreprise pour les immobilisations corporelles, telles que les bâtiments, les machines et le matériel. Les dotations aux dépréciations sont constituées lorsque la valeur recouvrable d''une immobilisation corporelle est inférieure à sa valeur nette comptable.'),


--339
6971 Dotations aux provisions pour risques et charges
6972 Dotations aux dépréciations des immobilisations financières
(339, 'Dotations aux provisions pour risques et charges', '6971', 'Ce compte enregistre les dotations aux provisions comptabilisées par l''entreprise pour couvrir les risques et charges identifiés mais non encore réalisés à la date de clôture de l''exercice financier. Les dotations aux provisions sont constituées pour anticiper les pertes probables ou les charges futures incertaines.'),
(339, 'Dotations aux dépréciations des immobilisations financières', '6972', 'Ce compte enregistre les dotations aux dépréciations comptabilisées par l''entreprise pour les immobilisations financières, telles que les participations dans d''autres sociétés ou les prêts accordés à des tiers. Les dotations aux dépréciations sont constituées lorsque la valeur recouvrable d''une immobilisation financière est inférieure à sa valeur nette comptable.'),


--340
7011 dans la Région (7)
7012 hors Région (7)
7013 Aux entités du groupe dans la Région
7014 Aux entités du groupe hors région 
7015 Sur internet 
7019 Rabais, remises, ristournes accordés (non ventilés)
(340, 'dans la Région (7)', '7011', 'Ce compte enregistre les ventes effectuées dans la région spécifiée. Il est utilisé pour suivre les revenus générés par les ventes réalisées dans cette région.'),
(340, 'hors la Région (7)', '7012', 'Ce compte enregistre les ventes effectuées en dehors de la région spécifiée. Il est utilisé pour suivre les revenus générés par les ventes réalisées en dehors de cette région.'),
(340, 'Aux entités du groupe dans la Région', '7013', 'Ce compte enregistre les ventes réalisées dans la région spécifiée aux entités faisant partie du même groupe que l''entreprise. Il est utilisé pour suivre les revenus générés par les ventes internes au groupe dans cette région.'),
(340, 'Aux entités du groupe hors région', '7014', 'Ce compte enregistre les ventes réalisées en dehors de la région spécifiée aux entités faisant partie du même groupe que l''entreprise. Il est utilisé pour suivre les revenus générés par les ventes internes au groupe en dehors de cette région.'),
(340, 'Sur internet', '7015', 'Ce compte enregistre les ventes réalisées via des canaux de vente sur internet. Il est utilisé pour suivre les revenus générés par les ventes en ligne.'),
(340, 'Rabais, remises, ristournes accordés (non ventilés)', '7019', 'Ce compte enregistre les rabais, remises et ristournes accordés par l''entreprise sur ses ventes, qui ne sont pas ventilés par destination ou type. Il est utilisé pour suivre le montant total des réductions accordées sur les ventes.'),


--341
7021 dans la Région (7)
7022 hors Région (7)
7023 aux entités du groupe dans la Région
7024 Aux entités du groupe hors région 
7025 Sur internet 
7029 Rabais, remises, ristournes accordes (non ventilés)
(341, 'dans la Région (7)', '7021', 'Ce compte enregistre les achats effectués dans la région spécifiée. Il est utilisé pour suivre les dépenses réalisées dans cette région.'),
(341, 'hors la Région (7)', '7022', 'Ce compte enregistre les achats effectués en dehors de la région spécifiée. Il est utilisé pour suivre les dépenses réalisées en dehors de cette région.'),
(341, 'aux entités du groupe dans la Région', '7023', 'Ce compte enregistre les achats effectués dans la région spécifiée auprès des entités faisant partie du même groupe que l''entreprise. Il est utilisé pour suivre les achats internes au groupe dans cette région.'),
(341, 'Aux entités du groupe hors région', '7024', 'Ce compte enregistre les achats effectués en dehors de la région spécifiée auprès des entités faisant partie du même groupe que l''entreprise. Il est utilisé pour suivre les achats internes au groupe en dehors de cette région.'),
(341, 'Sur internet', '7025', 'Ce compte enregistre les achats réalisés via des canaux en ligne. Il est utilisé pour suivre les dépenses effectuées par le biais d''achats en ligne.'),
(341, 'Rabais, remises, ristournes accordes (non ventilés)', '7029', 'Ce compte enregistre les rabais, remises et ristournes accordés par l''entreprise sur ses achats, qui ne sont pas ventilés par destination ou type. Il est utilisé pour suivre le montant total des réductions accordées sur les achats.'),



--342
7031 dans la Région (7)
7032 hors Région (7)
7033 aux entités du groupe dans la Région
7034 aux entités du groupe hors région
7035 Sur internet 
7039 Rabais, remises, ristournes accordés (non ventilés)
(342, 'dans la Région (7)', '7031', 'Ce compte enregistre les autres charges liées aux opérations effectuées dans la région spécifiée. Il est utilisé pour suivre les autres dépenses réalisées dans cette région.'),
(342, 'hors la Région (7)', '7032', 'Ce compte enregistre les autres charges liées aux opérations effectuées en dehors de la région spécifiée. Il est utilisé pour suivre les autres dépenses réalisées en dehors de cette région.'),
(342, 'aux entités du groupe dans la Région', '7033', 'Ce compte enregistre les autres charges liées aux opérations effectuées dans la région spécifiée auprès des entités faisant partie du même groupe que l''entreprise. Il est utilisé pour suivre les autres dépenses internes au groupe dans cette région.'),
(342, 'aux entités du groupe hors région', '7034', 'Ce compte enregistre les autres charges liées aux opérations effectuées en dehors de la région spécifiée auprès des entités faisant partie du même groupe que l''entreprise. Il est utilisé pour suivre les autres dépenses internes au groupe en dehors de cette région.'),
(342, 'Sur internet', '7035', 'Ce compte enregistre les autres charges liées aux opérations réalisées via des canaux en ligne. Il est utilisé pour suivre les autres dépenses effectuées par le biais d''opérations en ligne.'),
(342, 'Rabais, remises, ristournes accordés (non ventilés)', '7039', 'Ce compte enregistre les rabais, remises et ristournes accordés par l''entreprise sur d''autres charges, qui ne sont pas ventilés par destination ou type. Il est utilisé pour suivre le montant total des réductions accordées sur d''autres charges.'),


--343
7041 dans la Région (7)
7042 hors Région (7)
7043 aux entités du groupe dans la Région
7044 Aux entités du groupe hors Région 
7045 Sur internet 
7049 Rabais, remises, ristournes accordes (non ventilés)
(343, 'dans la Région (7)', '7041', 'Ce compte enregistre les autres produits générés dans la région spécifiée. Il est utilisé pour suivre les autres revenus obtenus dans cette région.'),
(343, 'hors la Région (7)', '7042', 'Ce compte enregistre les autres produits générés en dehors de la région spécifiée. Il est utilisé pour suivre les autres revenus obtenus en dehors de cette région.'),
(343, 'aux entités du groupe dans la Région', '7043', 'Ce compte enregistre les autres produits générés dans la région spécifiée auprès des entités faisant partie du même groupe que l''entreprise. Il est utilisé pour suivre les autres revenus internes au groupe dans cette région.'),
(343, 'Aux entités du groupe hors Région', '7044', 'Ce compte enregistre les autres produits générés en dehors de la région spécifiée auprès des entités faisant partie du même groupe que l''entreprise. Il est utilisé pour suivre les autres revenus internes au groupe en dehors de cette région.'),
(343, 'Sur internet', '7045', 'Ce compte enregistre les autres produits générés par le biais d''opérations en ligne. Il est utilisé pour suivre les autres revenus obtenus via des canaux en ligne.'),
(343, 'Rabais, remises, ristournes accordes (non ventilés)', '7049', 'Ce compte enregistre les rabais, remises et ristournes accordés par l''entreprise sur d''autres produits, qui ne sont pas ventilés par destination ou type. Il est utilisé pour suivre le montant total des réductions accordées sur d''autres produits.'),


--344
7051 dans la Région (7)
7052 hors Région (7)
7053 aux entités du groupe dans la Région
7054 aux entités du groupe hors région
7055 Sur internet 
7059 Rabais, remises, ristournes accordés (non ventilés)
(344, 'dans la Région (7)', '7051', 'Ce compte enregistre les autres charges financières générées dans la région spécifiée. Il est utilisé pour suivre les autres frais financiers supportés dans cette région.'),
(344, 'hors la Région (7)', '7052', 'Ce compte enregistre les autres charges financières générées en dehors de la région spécifiée. Il est utilisé pour suivre les autres frais financiers supportés en dehors de cette région.'),
(344, 'aux entités du groupe dans la Région', '7053', 'Ce compte enregistre les autres charges financières générées dans la région spécifiée auprès des entités faisant partie du même groupe que l''entreprise. Il est utilisé pour suivre les autres frais financiers internes au groupe dans cette région.'),
(344, 'aux entités du groupe hors région', '7054', 'Ce compte enregistre les autres charges financières générées en dehors de la région spécifiée auprès des entités faisant partie du même groupe que l''entreprise. Il est utilisé pour suivre les autres frais financiers internes au groupe en dehors de cette région.'),
(344, 'Sur internet', '7055', 'Ce compte enregistre les autres charges financières générées par le biais d''opérations en ligne. Il est utilisé pour suivre les autres frais financiers supportés via des canaux en ligne.'),
(344, 'Rabais, remises, ristournes accordés (non ventilés)', '7059', 'Ce compte enregistre les rabais, remises et ristournes accordés par l''entreprise sur d''autres charges financières, qui ne sont pas ventilés par destination ou type. Il est utilisé pour suivre le montant total des réductions accordées sur d''autres charges financières.'),


--345
7061 dans la Région (7)
7062 hors Région (7)
7063 aux entités du groupe dans la Région
7064 aux entités du groupe hors Région 
7065 Sur internet 
7069 Rabais, remises, ristournes accordés
(345, 'dans la Région (7)', '7061', 'Ce compte enregistre les autres produits financiers générés dans la région spécifiée. Il est utilisé pour suivre les autres revenus financiers obtenus dans cette région.'),
(345, 'hors la Région (7)', '7062', 'Ce compte enregistre les autres produits financiers générés en dehors de la région spécifiée. Il est utilisé pour suivre les autres revenus financiers obtenus en dehors de cette région.'),
(345, 'aux entités du groupe dans la Région', '7063', 'Ce compte enregistre les autres produits financiers générés dans la région spécifiée auprès des entités faisant partie du même groupe que l''entreprise. Il est utilisé pour suivre les autres revenus financiers internes au groupe dans cette région.'),
(345, 'aux entités du groupe hors Région', '7064', 'Ce compte enregistre les autres produits financiers générés en dehors de la région spécifiée auprès des entités faisant partie du même groupe que l''entreprise. Il est utilisé pour suivre les autres revenus financiers internes au groupe en dehors de cette région.'),
(345, 'Sur internet', '7065', 'Ce compte enregistre les autres produits financiers générés par le biais d''opérations en ligne. Il est utilisé pour suivre les autres revenus financiers obtenus via des canaux en ligne.'),
(345, 'Rabais, remises, ristournes accordés', '7069', 'Ce compte enregistre les rabais, remises et ristournes accordés par l''entreprise sur d''autres produits financiers.'),


--346
7071 Ports, emballages perdus et autres frais facturés
7072 Commissions et courtages (8)
7073 Locations (8)
7074 Bonis sur reprises et cessions d''emballages
7075 Mise à disposition de personnel (8)
7076 Redevances pour brevets, logiciels, marques et droits similaires (8)
7077 Services exploites dans l''intérêt du personnel
7078 Autres produits accessoires
(346, 'Ports, emballages perdus et autres frais facturés', '7071', 'Ce compte enregistre les frais liés aux ports, aux emballages perdus et à d''autres frais facturés.'),
(346, 'Commissions et courtages (8)', '7072', 'Ce compte enregistre les commissions et courtages facturés. Il est utilisé pour suivre les frais liés aux services de courtage et de commissionnement.'),
(346, 'Locations (8)', '7073', 'Ce compte enregistre les frais de location facturés. Il est utilisé pour suivre les frais associés à la location de biens ou de services.'),
(346, 'Bonis sur reprises et cessions d''emballages', '7074', 'Ce compte enregistre les bonus obtenus sur les reprises et les cessions d''emballages.'),
(346, 'Mise à disposition de personnel (8)', '7075', 'Ce compte enregistre les frais liés à la mise à disposition de personnel. Il est utilisé pour suivre les coûts associés à la fourniture de personnel à des tiers.'),
(346, 'Redevances pour brevets, logiciels, marques et droits similaires (8)', '7076', 'Ce compte enregistre les redevances perçues pour l''utilisation de brevets, de logiciels, de marques et de droits similaires.'),
(346, 'Services exploites dans l''intérêt du personnel', '7077', 'Ce compte enregistre les frais liés aux services exploités dans l''intérêt du personnel.'),
(346, 'Autres produits accessoires', '7078', 'Ce compte enregistre les autres produits accessoires générés par l''entreprise.'),


--347

--348

--349

--350

--351
7181 Versées par l''Etat et les collectivités publiques
7182 Versées par les organismes internationaux
7183 Versées par des tiers
(351, 'Versées par l''Etat et les collectivités publiques', '7181', 'Ce compte enregistre les subventions versées par l''État et les collectivités publiques.'),
(351, 'Versées par les organismes internationaux', '7182', 'Ce compte enregistre les subventions versées par les organismes internationaux.'),
(351, 'Versées par des tiers', '7183', 'Ce compte enregistre les subventions versées par des tiers.'),


--352

--353
7221 Immobilisations corporelles (hors actif biologiques )
7222 Immobilisations corporelles (actifs biologiques) 
(353, 'Immobilisations corporelles (hors actif biologiques)', '7221', 'Ce compte enregistre les immobilisations corporelles, à l''exclusion des actifs biologiques.'),
(353, 'Immobilisations corporelles (actifs biologiques)', '7222', 'Ce compte enregistre les immobilisations corporelles qui sont des actifs biologiques.'),


--354

--355

--356
7341 Produits en cours 
7342 Travaux en cours
(356, 'Produits en cours', '7341', 'Ce compte enregistre les produits en cours, c''est-à-dire les produits qui sont en cours de fabrication ou de production et qui ne sont pas encore terminés.'),
(356, 'Travaux en cours', '7342', 'Ce compte enregistre les travaux en cours, c''est-à-dire les travaux qui sont en cours de réalisation et qui ne sont pas encore achevés.'),


--357
7351 Etudes en cours 
7352 Prestations de services en cours
(357, 'Etudes en cours', '7351', 'Ce compte enregistre les études en cours, c''est-à-dire les projets d''études qui sont en cours de réalisation et qui ne sont pas encore achevés.'),
(357, 'Prestations de services en cours', '7352', 'Ce compte enregistre les prestations de services en cours, c''est-à-dire les services qui sont en cours de réalisation et qui ne sont pas encore achevés.'),


--358

--359
7371 Produits intermédiaires 
7372 Produits résiduels
(359, 'Produits intermédiaires', '7371', 'Ce compte enregistre les produits intermédiaires, c''est-à-dire les produits qui sont générés au cours du processus de production mais qui ne sont pas encore des produits finis.'),
(359, 'Produits résiduels', '7372', 'Ce compte enregistre les produits résiduels, c''est-à-dire les produits qui restent après le processus de production et qui ne peuvent pas être vendus ou utilisés comme produits finis.'),


--360


--361
7521 Quote-part transférée de pertes (comptabilité du gérant) 
7525 Bénéfices attribués par transfert (comptabilité des associés non-gérants)
(361, 'Quote-part transférée de pertes (comptabilité du gérant)', '7521', 'Ce compte enregistre la quote-part transférée de pertes dans la comptabilité du gérant.'),
(361, 'Bénéfices attribués par transfert (comptabilité des associés non-gérants)', '7525', 'Ce compte enregistre les bénéfices attribués par transfert dans la comptabilité des associés non-gérants.'),


--362
7541 Immobilisations incorporelles 
7542 Immobilisations corporelles
(362, 'Immobilisations incorporelles', '7541', 'Ce compte enregistre les immobilisations incorporelles, c''est-à-dire les actifs non matériels comme les brevets, les marques, les logiciels, etc.'),
(362, 'Immobilisations corporelles', '7542', 'Ce compte enregistre les immobilisations corporelles, c''est-à-dire les actifs matériels comme les terrains, les bâtiments, les équipements, etc.'),


--363


--364
7581 Indemnités de fonction et autres rémunérations d''administrateurs
7582 Indemnités d''assurances reçues
7588 Autres produits divers
(364, 'Indemnités de fonction et autres rémunérations d''administrateurs', '7581', 'Ce compte enregistre les indemnités de fonction et autres rémunérations versées aux administrateurs de l''entreprise.'),
(364, 'Indemnités d''assurances reçues', '7582', 'Ce compte enregistre les indemnités reçues de compagnies d''assurance.'),
(364, 'Autres produits divers', '7588', 'Ce compte enregistre d''autres produits divers qui ne rentrent pas dans les catégories précédentes.'),


--365
7591 Sur risques à court terme
7593 sur stocks
7594 sur créances
7598 sur autres charges pour dépréciations et provisions pour risques à court terme d''exploitation
(365, 'Sur risques à court terme', '7591', 'Ce compte enregistre les provisions pour risques à court terme liés à l''exploitation de l''entreprise.'),
(365, 'Sur stocks', '7593', 'Ce compte enregistre les provisions pour risques liés aux stocks de l''entreprise.'),
(365, 'Sur créances', '7594', 'Ce compte enregistre les provisions pour risques liés aux créances de l''entreprise.'),
(365, 'Sur autres charges pour dépréciations et provisions pour risques à court terme d''exploitation', '7598', 'Ce compte enregistre les provisions pour risques à court terme d''exploitation qui ne rentrent pas dans les catégories précédentes.'),


--366
7712 Intérêts de prêts 
7713 Intérêts sur créances diverses
(366, 'Intérêts de prêts', '7712', 'Ce compte enregistre les intérêts perçus sur les prêts accordés par l''entreprise.'),
(366, 'Intérêts sur créances diverses', '7713', 'Ce compte enregistre les intérêts perçus sur les différentes créances de l''entreprise.'),



--367
7721 Revenus des titres de participation 
7722 Revenus autres titres immobilisés 
(367, 'Revenus des titres de participation', '7721', 'Ce compte enregistre les revenus provenant des titres de participation détenus par l''entreprise.'),
(367, 'Revenus autres titres immobilisés', '7722', 'Ce compte enregistre les revenus provenant d''autres titres immobilisés détenus par l''entreprise.'),



--368



--369
7745 Revenus des obligations 
7746 Revenus des titres de placement
(369, 'Revenus des obligations', '7745', 'Ce compte enregistre les revenus provenant des obligations détenues par l''entreprise.'),
(369, 'Revenus des titres de placement', '7746', 'Ce compte enregistre les revenus provenant des titres de placement détenus par l''entreprise.'),


--370

--371

--372

--373
7781 sur rentes viagères
7782 sur opérations financières
7784 sur instruments de trésorerie
(373, 'sur rentes viagères', '7781', 'Ce compte enregistre les charges liées aux rentes viagères payées par l''entreprise.'),
(373, 'sur opérations financières', '7782', 'Ce compte enregistre les charges liées aux opérations financières de l''entreprise.'),
(373, 'sur instruments de trésorerie', '7784', 'Ce compte enregistre les charges liées aux instruments de trésorerie de l''entreprise.'),


--374
7791 sur risques financiers
7795 sur titres de placement
7798 sur autres charges pour dépréciations et provisions pour risques à court terme financières
(374, 'sur risques financiers', '7791', 'Ce compte enregistre les charges liées aux risques financiers de l''entreprise.'),
(374, 'sur titres de placement', '7795', 'Ce compte enregistre les charges liées aux titres de placement de l''entreprise.'),
(374, 'sur autres charges pour dépréciations et provisions pour risques à court terme financières', '7798', 'Ce compte enregistre les charges liées à d''autres dépréciations et provisions pour risques à court terme financières de l''entreprise.'),


--375

--376

--377
7911 pour risques et charges
7913 des immobilisations incorporelles
7914 des immobilisations corporelles
(377, 'pour risques et charges', '7911', 'Ce compte enregistre les dotations aux provisions pour risques et charges de l''entreprise.'),
(377, 'des immobilisations incorporelles', '7913', 'Ce compte enregistre les dotations aux dépréciations des immobilisations incorporelles de l''entreprise.'),
(377, 'des immobilisations corporelles', '7914', 'Ce compte enregistre les dotations aux dépréciations des immobilisations corporelles de l''entreprise.'),


--378
7971 pour risques et charges
7972 des immobilisations financières
(378, 'pour risques et charges', '7971', 'Ce compte enregistre les dotations aux provisions pour risques et charges de l''entreprise.'),
(378, 'des immobilisations financières', '7972', 'Ce compte enregistre les dotations aux dépréciations des immobilisations financières de l''entreprise.'),

--379

--380

--381

--382

--383

--384

--385

--386

--387

--388

--389

--390

--391

--392

--393

--394

--395

--396

--397

--398

--399

--400

--401

--402

--403

--404

--405

--406

--407

--408

--409

--410

--411

--412

--413

--414

--415

--416

--417

--418

--419
8911 Activités exercées dans l''État
8912 Activités exercées dans les autres États de la Région
8913 Activités exercées hors Région
(419, 'Activités exercées dans l''État', '8911', 'Ce compte enregistre les activités exercées dans l''État.'),
(419, 'Activités exercées dans les autres États de la Région', '8912', 'Ce compte enregistre les activités exercées dans les autres États de la Région.'),
(419, 'Activités exercées hors Région', '8913', 'Ce compte enregistre les activités exercées hors Région.'),

--420

--421

--422
8991 Dégrèvements
8994 Annulations pour pertes rétroactives
(422, 'Dégrèvements', '8991', 'Ce compte enregistre les dégrèvements.'),
(422, 'Annulations pour pertes rétroactives', '8994', 'Ce compte enregistre les annulations pour pertes rétroactives.'),


--423

--424
9011 Crédits confirmés obtenus 
9012 Emprunts restant à encaisser 
9013 Facilités de financement renouvelables 
9014 Facilités d''émission 
9018 Autres engagements de financements obtenus 
(424, 'Crédits confirmés obtenus', '9011', 'Ce compte enregistre les crédits confirmés obtenus.'),
(424, 'Emprunts restant à encaisser', '9012', 'Ce compte enregistre les emprunts restant à encaisser.'),
(424, 'Facilités de financement renouvelables', '9013', 'Ce compte enregistre les facilités de financement renouvelables.'),
(424, 'Facilités d''émission', '9014', 'Ce compte enregistre les facilités d''émission.'),
(424, 'Autres engagements de financements obtenus', '9018', 'Ce compte enregistre les autres engagements de financements obtenus.'),



--425
9021 Avals obtenus 
9022 Cautions, garanties obtenues 
9023 Hypothèques obtenues 
9024 Effets endossés par des tiers 
9028 Autres garanties obtenues
(425, 'Avals obtenus', '9021', 'Ce compte enregistre les avals obtenus.'),
(425, 'Cautions, garanties obtenues', '9022', 'Ce compte enregistre les cautions, garanties obtenues.'),
(425, 'Hypothèques obtenues', '9023', 'Ce compte enregistre les hypothèques obtenues.'),
(425, 'Effets endossés par des tiers', '9024', 'Ce compte enregistre les effets endossés par des tiers.'),
(425, 'Autres garanties obtenues', '9028', 'Ce compte enregistre les autres garanties obtenues.'),


--426
9031 Achats de marchandises à terme 
9032 Achats à termes de devises 
9033 Commandes fermes des clients 
9038 Autres engagements réciproques 
(426, 'Achats de marchandises à terme', '9031', 'Ce compte enregistre les achats de marchandises à terme.'),
(426, 'Achats à termes de devises', '9032', 'Ce compte enregistre les achats à termes de devises.'),
(426, 'Commandes fermes des clients', '9033', 'Ce compte enregistre les commandes fermes des clients.'),
(426, 'Autres engagements réciproques', '9038', 'Ce compte enregistre les autres engagements réciproques.'),



--427
9041 Abandons de créances conditionnels 
9043 Ventes avec clause de réserve de propriété 
9048 Divers engagements obtenus 
9049 ENGAGEMENTS ACCORDÉS 905 à 908
(427, 'Abandons de créances conditionnels', '9041', 'Ce compte enregistre les abandons de créances conditionnels.'),
(427, 'Ventes avec clause de réserve de propriété', '9043', 'Ce compte enregistre les ventes avec clause de réserve de propriété.'),
(427, 'Divers engagements obtenus', '9048', 'Ce compte enregistre les divers engagements obtenus.'),
(427, 'ENGAGEMENTS ACCORDÉS 905 à 908', '9049', 'Ce compte enregistre les engagements accordés de 905 à 908.'),



--428
9051 Crédits accordés non décaissés 
9058 Autres engagements de financement accordés
(428, 'Crédits accordés non décaissés', '9051', 'Ce compte enregistre les crédits accordés mais non encore décaissés.'),
(428, 'Autres engagements de financement accordés', '9058', 'Ce compte enregistre les autres engagements de financement accordés.'),


--429
9061 Avals obtenus 
9062 Cautions, garanties accordées 
9063 Hypothèques accordées 
9064 Effets endossés par l''entité 
9068 Autres garanties accordées 
(429, 'Avals obtenus', '9061', 'Ce compte enregistre les avals obtenus par l''entité.'),
(429, 'Cautions, garanties accordées', '9062', 'Ce compte enregistre les cautions et garanties accordées par l''entité.'),
(429, 'Hypothèques accordées', '9063', 'Ce compte enregistre les hypothèques accordées par l''entité.'),
(429, 'Effets endossés par l''entité', '9064', 'Ce compte enregistre les effets endossés par l''entité.'),
(429, 'Autres garanties accordées', '9068', 'Ce compte enregistre les autres garanties accordées par l''entité.'),


--430
9071 Ventes de marchandises à terme 
9072 Ventes à terme de devises
9073 Commandes fermes aux fournisseurs 
9078 Autres engagements réciproques
(430, 'Ventes de marchandises à terme', '9071', 'Ce compte enregistre les ventes de marchandises à terme effectuées par l''entité.'),
(430, 'Ventes à terme de devises', '9072', 'Ce compte enregistre les ventes à terme de devises effectuées par l''entité.'),
(430, 'Commandes fermes aux fournisseurs', '9073', 'Ce compte enregistre les commandes fermes passées aux fournisseurs par l''entité.'),
(430, 'Autres engagements réciproques', '9078', 'Ce compte enregistre les autres engagements réciproques de l''entité.'),


--431
9081 Annulations conditionnelles de dettes 
9082 Engagements de retraite 
9083 Achats avec clause de réserve de propriété 
9088 Divers engagements accordés
(431, 'Annulations conditionnelles de dettes', '9081', 'Ce compte enregistre les annulations conditionnelles de dettes par l''entité.'),
(431, 'Engagements de retraite', '9082', 'Ce compte enregistre les engagements de retraite pris par l''entité.'),
(431, 'Achats avec clause de réserve de propriété', '9083', 'Ce compte enregistre les achats effectués avec une clause de réserve de propriété par l''entité.'),
(431, 'Divers engagements accordés', '9088', 'Ce compte enregistre les autres engagements accordés par l''entité.'),


--432

--433

--434

--435

--436

--437

--438

--439

--440

--441

--442

--443

--444
1011 en numéraire
1015 en nature
(444, 'en numéraire', '1011', 'Ce compte enregistre les apports en numéraire.'),
(444, 'en nature', '1015', 'Ce compte enregistre les apports en nature.'),


--445
1021 en numéraire
1025 en nature
(445, 'en numéraire', '1021', 'Ce compte enregistre les apports en numéraire.'),
(445, 'en nature', '1025', 'Ce compte enregistre les apports en nature.'),

--446

--447
1041 Dotation consomptible
1049 Dotation consomptible inscrite au compte de résultat
(447, 'Dotation consomptible', '1041', 'Cette catégorie de dotation est destinée à couvrir les charges consomptibles non prises en compte dans les autres catégories de dotations.'),
(447, 'Dotation consomptible inscrite au compte de résultat', '1049', 'Cette catégorie de dotation représente la part de la dotation consomptible qui est directement inscrite au compte de résultat, affectant ainsi le résultat net de l''entreprise.'),



--448
1061 Écarts de réévaluation sur des biens sans droit de reprise
10611 Écarts de réévaluation sur des biens sans droit de reprise immobilisations corporelle
10612 Écarts de réévaluation sur des biens sans droit de reprise immobilisations financières
1062 Écarts de réévaluation sur des biens avec droit de reprise
10621 Écarts de réévaluation sur des biens avec droit de reprise immobilisations corporelles
10622 Écarts de réévaluation sur des biens avec droit de reprise immobilisations-financière
(448, 'Écarts de réévaluation sur des biens sans droit de reprise', '1061', 'Ces écarts de réévaluation concernent les biens pour lesquels l''entreprise n''a pas le droit de les reprendre, tels que les immobilisations corporelles et financières.'),
(448, 'Écarts de réévaluation sur des biens sans droit de reprise immobilisations corporelle', '10611', 'Ces écarts de réévaluation portent spécifiquement sur les immobilisations corporelles pour lesquelles l''entreprise n''a pas le droit de les reprendre.'),
(448, 'Écarts de réévaluation sur des biens sans droit de reprise immobilisations financières', '10612', 'Ces écarts de réévaluation concernent les immobilisations financières pour lesquelles l''entreprise n''a pas le droit de les reprendre.'),
(448, 'Écarts de réévaluation sur des biens avec droit de reprise', '1062', 'Ces écarts de réévaluation concernent les biens pour lesquels l''entreprise a le droit de les reprendre.'),
(448, 'Écarts de réévaluation sur des biens avec droit de reprise immobilisations corporelles', '10621', 'Ces écarts de réévaluation portent spécifiquement sur les immobilisations corporelles pour lesquelles l''entreprise a le droit de les reprendre.'),
(448, 'Écarts de réévaluation sur des biens avec droit de reprise immobilisations-financière', '10622', 'Ces écarts de réévaluation concernent les immobilisations financières pour lesquelles l''entreprise a le droit de les reprendre.'),


--449

--450

--451

--452

--453

--454

--455

--456
1411 État
1412 Régions
1413 Départements 
1414 Communes et collectivités publiques décentralisées 
1415 Entités publiques ou mixtes
1416 Entités et organismes privés
1417 organismes internationaux
1418 Autres
(1411, 'État', '1411', 'Ce compte représente les transactions financières liées à l''État central. Il est utilisé pour enregistrer les opérations financières telles que les recettes et les dépenses de l''administration centrale de l''État.'),
(1412, 'Régions', '1412', 'Ce compte est dédié aux transactions financières des gouvernements régionaux. Il est utilisé pour suivre les recettes et les dépenses spécifiques aux régions administratives d''un pays.'),
(1413, 'Départements', '1413', 'Ce compte comptable enregistre les transactions financières des gouvernements départementaux. Il est utilisé pour suivre les recettes et les dépenses spécifiques aux départements ou aux subdivisions administratives similaires.'),
(1414, 'Communes et collectivités publiques décentralisées', '1414', 'Ce compte comptable est utilisé pour enregistrer les transactions financières des municipalités et des autres collectivités publiques décentralisées. Il comprend les recettes et les dépenses associées à ces entités locales.'),
(1415, 'Entités publiques ou mixtes', '1415', 'Ce compte est utilisé pour les transactions financières impliquant des entités publiques ou mixtes, telles que les entreprises publiques ou les partenariats public-privé.'),
(1416, 'Entités et organismes privés', '1416', 'Ce compte comptable est destiné à enregistrer les transactions financières impliquant des entités et des organismes privés, tels que les entreprises privées, les associations et les fondations.'),
(1417, 'Organismes internationaux', '1417', 'Ce compte est utilisé pour suivre les transactions financières avec des organismes internationaux tels que les Nations Unies, la Banque mondiale, le Fonds monétaire international, etc.'),
(1418, 'Autres', '1418', 'Ce compte est utilisé pour enregistrer toutes les transactions financières qui ne sont pas couvertes par les autres comptes spécifiés. Il peut inclure des transactions inhabituelles ou exceptionnelles, ainsi que d''autres types de transactions non spécifiées ailleurs.')


--457

--458

--459

--460

--461

--462

--463

--464
1671 affectés 
1672 non affectés
1679 Engagements au près donateur
(464, 'Affectés', '1671', 'Ce compte enregistre les fonds reçus ou affectés à des projets ou à des activités spécifiques, avec des restrictions sur leur utilisation.'),
(464, 'Non affectés', '1672', 'Ce compte enregistre les fonds reçus ou non affectés à des projets ou à des activités spécifiques, avec une liberté d''utilisation plus large.'),
(464, 'Engagements au près donateur', '1679', 'Ce compte représente les engagements ou les promesses de dons faits par des donateurs ou des bailleurs de fonds.'),


--465

--466

--467

--468

--469

--470

--471

--472
1851 Dépôts
1852 Cautionnements 
(472, 'Dépôts', '1851', 'Ce compte enregistre les montants déposés auprès de tiers, généralement des banques, en garantie ou en prévision de transactions futures.'),
(472, 'Cautionnements', '1852', 'Ce compte enregistre les montants déposés comme caution ou garantie pour garantir l''exécution d''obligations contractuelles.'),


--473
1861 sur emprunts obligataires
1862 sur emprunts et dettes auprès des établissements de crédits
1863 sur avances reçues de l''Etat
1865 sur dépôts et cautionnements reçus 
1868 sur autres emprunts et dettes
(473, 'sur emprunts obligataires', '1861', 'Ce compte enregistre les produits financiers liés aux emprunts obligataires émis par l''entreprise.'),
(473, 'sur emprunts et dettes auprès des établissements de crédits', '1862', 'Ce compte enregistre les produits financiers liés aux emprunts et dettes contractés auprès des établissements de crédit.'),
(473, 'sur avances reçues de l''Etat', '1863', 'Ce compte enregistre les produits financiers liés aux avances reçues de l''État.'),
(473, 'sur dépôts et cautionnements reçus', '1865', 'Ce compte enregistre les produits financiers liés aux dépôts et cautionnements reçus par l''entreprise.'),
(473, 'sur autres emprunts et dettes', '1868', 'Ce compte enregistre les produits financiers liés à d''autres emprunts et dettes contractés par l''entreprise.'),


--474
1871 Dettes de location-acquisition/ crédit-bail immobilier
1872 Dettes de location - acquisition/ crédit -bail mobilier
1873 Dettes de location - acquisition/location-vente
1876 Intérêts courus
(474, 'Dettes de location-acquisition/ crédit-bail immobilier', '1871', 'Ce compte enregistre les dettes liées aux opérations de location-acquisition ou de crédit-bail immobilier.'),
(474, 'Dettes de location - acquisition/ crédit -bail mobilier', '1872', 'Ce compte enregistre les dettes liées aux opérations de location-acquisition ou de crédit-bail mobilier.'),
(474, 'Dettes de location - acquisition/location-vente', '1873', 'Ce compte enregistre les dettes liées aux opérations de location-acquisition ou de location-vente.'),
(474, 'Intérêts courus', '1876', 'Ce compte enregistre les intérêts courus sur les dettes de l''entreprise.'),


--475

--476

--477

--478

--479
1981 Provisions pour amendes et pénalités
1984 Provisions pour démantèlement et remise en état
1988 Provisions pour divers risques et charges
(479, 'Provisions pour amendes et pénalités', '1981', 'Ce compte enregistre les provisions constituées pour couvrir les amendes et pénalités potentielles encourues par l''entreprise.'),
(479, 'Provisions pour démantèlement et remise en état', '1984', 'Ce compte enregistre les provisions constituées pour couvrir les coûts de démantèlement et de remise en état des biens de l''entreprise à la fin de leur vie utile.'),
(479, 'Provisions pour divers risques et charges', '1988', 'Ce compte enregistre les provisions constituées pour couvrir divers risques et charges non spécifiquement couverts par d''autres comptes de provisions.'),


--480
2011 Usufruit temporaire 
2012 Brevets, licences, concessions et droits similaires 
2013 Logiciels et sites internet 
2014 Marques 
2017 Autres
(480, 'Usufruit temporaire', '2011', 'Ce compte enregistre les droits temporaires accordés à une partie pour utiliser et profiter des biens de l''entreprise sans en devenir propriétaire.'),
(480, 'Brevets, licences, concessions et droits similaires', '2012', 'Ce compte enregistre les actifs incorporels acquis par l''entreprise tels que les brevets, les licences, les concessions et les droits similaires.'),
(480, 'Logiciels et sites internet', '2013', 'Ce compte enregistre les actifs incorporels acquis par l''entreprise tels que les logiciels et les sites internet.'),
(480, 'Marques', '2014', 'Ce compte enregistre les actifs incorporels acquis par l''entreprise sous forme de marques commerciales ou de marques déposées.'),
(480, 'Autres', '2017', 'Ce compte enregistre d''autres actifs incorporels acquis par l''entreprise qui ne sont pas spécifiquement couverts par d''autres comptes.'),


--481

--482

--483

--484

--485
2121 Brevets 
2122 Licences
2123 Concessions de service public
2128 Autres concessions et droits similaires
(485, 'Brevets', '2121', 'Ce compte enregistre les actifs incorporels acquis par l''entreprise sous forme de brevets.'),
(485, 'Licences', '2122', 'Ce compte enregistre les actifs incorporels acquis par l''entreprise sous forme de licences.'),
(485, 'Concessions de service public', '2123', 'Ce compte enregistre les concessions accordées par les autorités publiques à l''entreprise pour fournir des services publics.'),
(485, 'Autres concessions et droits similaires', '2128', 'Ce compte enregistre d''autres concessions et droits similaires acquis par l''entreprise qui ne sont pas spécifiquement couverts par d''autres comptes.'),


--486
2131 Logiciels 
2132 Sites internet
(486, 'Logiciels', '2131', 'Ce compte enregistre les actifs incorporels acquis par l''entreprise sous forme de logiciels.'),
(486, 'Sites internet', '2132', 'Ce compte enregistre les actifs incorporels acquis par l''entreprise sous forme de sites internet.'),



--487

--488
2181 Indemnités de transfert aux joueurs
(488, 'Indemnités de transfert aux joueurs', '2181', 'Ce compte enregistre les montants payés par l''entreprise en indemnités de transfert aux joueurs.'),


--489
2193 Logiciels et sites internet 
2198 Autres droits et valeurs incorporels
(489, 'Logiciels et sites internet', '2193', 'Ce compte enregistre les dépenses liées à l''acquisition ou au développement de logiciels et de sites internet.'),
(489, 'Autres droits et valeurs incorporels', '2198', 'Ce compte regroupe les autres droits et valeurs incorporels de l''entreprise qui ne sont pas spécifiquement mentionnés dans d''autres comptes.'),


--490
2211 Terrains d''exploitation agricole
2212 Terrains d''exploitation forestière
2218 Autres terrains
(490, 'Terrains d''exploitation agricole', '2211', 'Ce compte enregistre la valeur des terrains utilisés pour des activités agricoles.'),
(490, 'Terrains d''exploitation forestière', '2212', 'Ce compte enregistre la valeur des terrains utilisés pour des activités forestières.'),
(490, 'Autres terrains', '2218', 'Ce compte regroupe la valeur des terrains qui ne sont pas spécifiquement liés aux activités agricoles ou forestières de l''entreprise.'),


--491
2221 Terrains à bâtir
2228 Autres terrains nus
(491, 'Terrains à bâtir', '2221', 'Ce compte enregistre la valeur des terrains destinés à la construction de bâtiments.'),
(491, 'Autres terrains nus', '2228', 'Ce compte regroupe la valeur des terrains nus qui ne sont pas destinés à la construction et qui ne sont pas spécifiquement liés aux activités agricoles ou forestières de l''entreprise.'),


--492
2231 pour bâtiments industriels et agricoles 
2232 pour bâtiments administratifs et commerciaux
2234 pour bâtiments affectés aux autres opérations professionnelles 
2235 pour bâtiments affectés aux autres opérations non professionnelles 
2238 Autres terrains bâtis
(492, 'pour bâtiments industriels et agricoles', '2231', 'Ce compte enregistre la valeur des terrains bâtis destinés à des activités industrielles ou agricoles.'),
(492, 'pour bâtiments administratifs et commerciaux', '2232', 'Ce compte regroupe la valeur des terrains bâtis utilisés à des fins administratives ou commerciales.'),
(492, 'pour bâtiments affectés aux autres opérations professionnelles', '2234', 'Ce compte enregistre la valeur des terrains bâtis utilisés pour d''autres opérations professionnelles non spécifiquement liées à l''industrie, à l''agriculture, à l''administration ou au commerce.'),
(492, 'pour bâtiments affectés aux autres opérations non professionnelles', '2235', 'Ce compte regroupe la valeur des terrains bâtis utilisés pour d''autres opérations non professionnelles.'),
(492, 'Autres terrains bâtis', '2238', 'Ce compte enregistre la valeur des terrains bâtis qui ne rentrent pas dans les catégories précédentes.'),


--493
2241 Plantation d''arbres et d''arbustes 
2245 Améliorations du fonds
2248 Autres travaux
(493, 'Plantation d''arbres et d''arbustes', '2241', 'Ce compte enregistre les dépenses liées à la plantation et à l''entretien d''arbres et d''arbustes sur les terrains de l''entreprise.'),
(493, 'Améliorations du fonds', '2245', 'Ce compte regroupe les dépenses visant à améliorer la qualité ou la valeur des terrains de l''entreprise.'),
(493, 'Autres travaux', '2248', 'Ce compte regroupe les dépenses liées à d''autres travaux réalisés sur les terrains de l''entreprise et qui ne rentrent pas dans les catégories précédentes.'),


--494
2261 Parkings
(494, 'Parkings', '2261', 'Ce compte enregistre les dépenses liées à la construction ou à l''aménagement de parkings pour véhicules sur les terrains de l''entreprise.'),


--495
2281 Terrains-immeubles de placement
2285 Terrains des logements affectés au personnel
2286 Terrains de location-acquisition
2288 Divers terrains
(495, 'Terrains-immeubles de placement', '2281', 'Ce compte enregistre la valeur des terrains destinés à être conservés ou utilisés pour générer des revenus, tels que les terrains destinés à la location ou à la revente.'),
(495, 'Terrains des logements affectés au personnel', '2285', 'Ce compte enregistre la valeur des terrains utilisés pour la construction de logements destinés au personnel de l''entreprise.'),
(495, 'Terrains de location-acquisition', '2286', 'Ce compte enregistre la valeur des terrains acquis dans le cadre de contrats de location-acquisition.'),
(495, 'Divers terrains', '2288', 'Ce compte regroupe la valeur des terrains qui ne sont pas spécifiquement catégorisés dans d''autres comptes.'),


--496
2291 Terrains agricoles et forestiers
2292 Terrains nus
2298 Autres terrains
(496, 'Terrains agricoles et forestiers', '2291', 'Ce compte enregistre la valeur des terrains utilisés pour des activités agricoles ou forestières.'),
(496, 'Terrains nus', '2292', 'Ce compte enregistre la valeur des terrains qui ne sont pas encore développés ou aménagés.'),
(496, 'Autres terrains', '2298', 'Ce compte regroupe la valeur des terrains qui ne sont pas spécifiquement catégorisés dans d''autres comptes.'),


--497
2311 Bâtiments industriels
2312 Bâtiments agricoles
2313 Bâtiments administratifs et commerciaux
2314 Bâtiments affectés au logement du personnel
2315 Bâtiments-immeubles de placement
2316 Bâtiments de location-acquisition
2317 Edifices religieux et assimilés 
2318 Autres bâtiments sur sol propre
(497, 'Bâtiments industriels', '2311', 'Ce compte enregistre la valeur des bâtiments utilisés à des fins industrielles.'),
(497, 'Bâtiments agricoles', '2312', 'Ce compte enregistre la valeur des bâtiments utilisés pour des activités agricoles.'),
(497, 'Bâtiments administratifs et commerciaux', '2313', 'Ce compte enregistre la valeur des bâtiments utilisés à des fins administratives ou commerciales.'),
(497, 'Bâtiments affectés au logement du personnel', '2314', 'Ce compte enregistre la valeur des bâtiments utilisés pour loger le personnel de l''entreprise.'),
(497, 'Bâtiments-immeubles de placement', '2315', 'Ce compte enregistre la valeur des bâtiments détenus à des fins de placement immobilier.'),
(497, 'Bâtiments de location-acquisition', '2316', 'Ce compte enregistre la valeur des bâtiments acquis dans le cadre de contrats de location-acquisition.'),
(497, 'Edifices religieux et assimilés', '2317', 'Ce compte enregistre la valeur des édifices religieux et autres structures similaires.'),
(497, 'Autres bâtiments sur sol propre', '2318', 'Ce compte regroupe la valeur des bâtiments qui ne sont pas spécifiquement catégorisés dans d''autres comptes.'),


--498
2321 Bâtiments industriels
2322 Bâtiments agricoles
2323 Bâtiments administratifs et commerciaux
2324 Bâtiments affectés au logement du personnel
2325 Bâtiments -immeubles de placement
2326 Bâtiments de location-acquisition
2327 Edifices religieux et assimilés 
2328 Autres bâtiments sur sol d''autrui
(498, 'Bâtiments industriels', '2321', 'Ce compte enregistre la valeur des bâtiments utilisés à des fins industrielles.'),
(498, 'Bâtiments agricoles', '2322', 'Ce compte enregistre la valeur des bâtiments utilisés pour des activités agricoles.'),
(498, 'Bâtiments administratifs et commerciaux', '2323', 'Ce compte enregistre la valeur des bâtiments utilisés à des fins administratives ou commerciales.'),
(498, 'Bâtiments affectés au logement du personnel', '2324', 'Ce compte enregistre la valeur des bâtiments utilisés pour loger le personnel de l''entreprise.'),
(498, 'Bâtiments-immeubles de placement', '2325', 'Ce compte enregistre la valeur des bâtiments détenus à des fins de placement immobilier.'),
(498, 'Bâtiments de location-acquisition', '2326', 'Ce compte enregistre la valeur des bâtiments acquis dans le cadre de contrats de location-acquisition.'),
(498, 'Edifices religieux et assimilés', '2327', 'Ce compte enregistre la valeur des édifices religieux et autres structures similaires.'),
(498, 'Autres bâtiments sur sol d''autrui', '2328', 'Ce compte regroupe la valeur des bâtiments construits sur un sol qui n''appartient pas à l''entreprise.'),


--499
2331 Voies de terre
2332 Voies de fer
2333 Voies d''eau
2334 Barrages, digues 
2335 Pistes d''aérodrome
2338 Autres ouvrages d''infrastructures
(499, 'Voies de terre', '2331', 'Ce compte enregistre la valeur des routes, chemins et autres voies terrestres.'),
(499, 'Voies de fer', '2332', 'Ce compte enregistre la valeur des voies ferrées.'),
(499, 'Voies d''eau', '2333', 'Ce compte enregistre la valeur des voies navigables telles que les canaux, les rivières et les fleuves.'),
(499, 'Barrages, digues', '2334', 'Ce compte enregistre la valeur des ouvrages construits pour retenir ou contrôler l''écoulement de l''eau.'),
(499, 'Pistes d''aérodrome', '2335', 'Ce compte enregistre la valeur des pistes utilisées pour les décollages et les atterrissages des aéronefs.'),
(499, 'Autres ouvrages d''infrastructures', '2338', 'Ce compte regroupe la valeur des autres ouvrages d''infrastructures qui ne sont pas spécifiquement inclus dans les comptes précédents.'),


--500
2341 Installations complexes spécialisés sur sol propre
2342 Installations complexes spécialisées sur sol d''autrui 
2343 Installations à caractère spécifique sur sol propre 
2344 Installations à caractère spécifique sur sol d''autrui
2345 Aménagements et agencements des bâtiments
(500, 'Installations complexes spécialisées sur sol propre', '2341', 'Ce compte enregistre la valeur des installations complexes et spécialisées construites sur un terrain appartenant à l''entreprise.'),
(500, 'Installations complexes spécialisées sur sol d''autrui', '2342', 'Ce compte enregistre la valeur des installations complexes et spécialisées construites sur un terrain appartenant à un tiers.'),
(500, 'Installations à caractère spécifique sur sol propre', '2343', 'Ce compte enregistre la valeur des installations à caractère spécifique construites sur un terrain appartenant à l''entreprise.'),
(500, 'Installations à caractère spécifique sur sol d''autrui', '2344', 'Ce compte enregistre la valeur des installations à caractère spécifique construites sur un terrain appartenant à un tiers.'),
(500, 'Aménagements et agencements des bâtiments', '2345', 'Ce compte enregistre la valeur des aménagements et agencements réalisés dans les bâtiments de l''entreprise pour les adapter à ses besoins spécifiques.'),


--501
2351 Installations générales 
2358 Autres aménagements de bureaux
(501, 'Installations générales', '2351', 'Ce compte enregistre la valeur des installations générales réalisées dans les locaux de l''entreprise.'),
(501, 'Autres aménagements de bureaux', '2358', 'Ce compte enregistre la valeur des aménagements spécifiques réalisés dans les bureaux de l''entreprise.'),


--502
2381 Autres installations et agencements des édifices religieux et assimilés
2382 Autres installations et agencements des stades et autres infrastructures sportives
(502, 'Autres installations et agencements des édifices religieux et assimilés', '2381', 'Ce compte enregistre la valeur des installations et agencements autres que les bâtiments religieux et assimilés.'),
(502, 'Autres installations et agencements des stades et autres infrastructures sportives', '2382', 'Ce compte enregistre la valeur des installations et agencements autres que les stades et autres infrastructures sportives.'),


--503
2391 Bâtiments sur sol propre en cours
2392 Bâtiments sur sol d''autrui en cours
2394 Aménagements, agencements et installations techniques en cours
2395 Aménagements de bureaux en cours
2396 Bâtiments en cours-immeubles de placement
2398 Autres installations et agencements en cours
(503, 'Bâtiments sur sol propre en cours', '2391', 'Ce compte enregistre la valeur des bâtiments en cours de construction sur sol propre.'),
(503, 'Bâtiments sur sol d''autrui en cours', '2392', 'Ce compte enregistre la valeur des bâtiments en cours de construction sur sol d''autrui.'),
(503, 'Aménagements, agencements et installations techniques en cours', '2394', 'Ce compte enregistre la valeur des aménagements, agencements et installations techniques en cours de réalisation.'),
(503, 'Aménagements de bureaux en cours', '2395', 'Ce compte enregistre la valeur des aménagements de bureaux en cours de réalisation.'),
(503, 'Bâtiments en cours-immeubles de placement', '2396', 'Ce compte enregistre la valeur des bâtiments en cours de construction affectés comme immeubles de placement.'),
(503, 'Autres installations et agencements en cours', '2398', 'Ce compte enregistre la valeur des autres installations et agencements en cours de réalisation.'),


--504
2411 Matériel industriel
2412 Outillage industriel 
2413 Matériel commercial
2414 Outillage commercial
2416 Matériel et outillage industriel et commercial de location-acquisition
(504, 'Matériel industriel', '2411', 'Ce compte enregistre la valeur du matériel industriel possédé par l''entreprise.'),
(504, 'Outillage industriel', '2412', 'Ce compte enregistre la valeur de l''outillage industriel possédé par l''entreprise.'),
(504, 'Matériel commercial', '2413', 'Ce compte enregistre la valeur du matériel commercial possédé par l''entreprise.'),
(504, 'Outillage commercial', '2414', 'Ce compte enregistre la valeur de l''outillage commercial possédé par l''entreprise.'),
(504, 'Matériel et outillage industriel et commercial de location-acquisition', '2416', 'Ce compte enregistre la valeur du matériel et de l''outillage industriel et commercial acquis en location-acquisition.'),


--505
2421 Matériel agricole
2422 Outillage agricole
2426 Matériel et outillage agricole de location-acquisition
(505, 'Matériel agricole', '2421', 'Ce compte enregistre la valeur du matériel agricole possédé par l''entreprise.'),
(505, 'Outillage agricole', '2422', 'Ce compte enregistre la valeur de l''outillage agricole possédé par l''entreprise.'),
(505, 'Matériel et outillage agricole de location-acquisition', '2426', 'Ce compte enregistre la valeur du matériel et de l''outillage agricole acquis en location-acquisition.'),


--506

--507
2411 Matériel et mobilier de bureau
2442 Matériel informatique et bureautique
2443 Matériel et mobilier religieux
2444 Matériel et mobilier sportifs
2445 Matériel et mobilier - immeubles de placement
2446 Matériel et mobilier de location-acquisition
2447 Matériel et mobilier des logements du personnel
(507, 'Matériel et mobilier de bureau', '2411', 'Ce compte enregistre la valeur du matériel et du mobilier de bureau possédés par l''entreprise.'),
(507, 'Matériel informatique et bureautique', '2442', 'Ce compte enregistre la valeur du matériel informatique et bureautique possédé par l''entreprise.'),
(507, 'Matériel et mobilier religieux', '2443', 'Ce compte enregistre la valeur du matériel et du mobilier religieux possédés par l''entreprise.'),
(507, 'Matériel et mobilier sportifs', '2444', 'Ce compte enregistre la valeur du matériel et du mobilier sportifs possédés par l''entreprise.'),
(507, 'Matériel et mobilier - immeubles de placement', '2445', 'Ce compte enregistre la valeur du matériel et du mobilier liés aux immeubles de placement possédés par l''entreprise.'),
(507, 'Matériel et mobilier de location-acquisition', '2446', 'Ce compte enregistre la valeur du matériel et du mobilier acquis en location-acquisition.'),
(507, 'Matériel et mobilier des logements du personnel', '2447', 'Ce compte enregistre la valeur du matériel et du mobilier des logements du personnel possédés par l''entreprise.'),


--508
2451 Matériel automobile
2452 Matériel ferroviaire 
2453 Matériel fluvial, lagunaire
2454 Matériel naval
2455 Matériel aérien
2456 Matériel de transport de location - acquisition
2457 Matériel hippomobile
2458 Autres matériels de transports
(508, 'Matériel automobile', '2451', 'Ce compte enregistre la valeur du matériel automobile possédé par l''entreprise.'),
(508, 'Matériel ferroviaire', '2452', 'Ce compte enregistre la valeur du matériel ferroviaire possédé par l''entreprise.'),
(508, 'Matériel fluvial, lagunaire', '2453', 'Ce compte enregistre la valeur du matériel fluvial et lagunaire possédé par l''entreprise.'),
(508, 'Matériel naval', '2454', 'Ce compte enregistre la valeur du matériel naval possédé par l''entreprise.'),
(508, 'Matériel aérien', '2455', 'Ce compte enregistre la valeur du matériel aérien possédé par l''entreprise.'),
(508, 'Matériel de transport de location - acquisition', '2456', 'Ce compte enregistre la valeur du matériel de transport acquis en location-acquisition.'),
(508, 'Matériel hippomobile', '2457', 'Ce compte enregistre la valeur du matériel hippomobile possédé par l''entreprise.'),
(508, 'Autres matériels de transports', '2458', 'Ce compte enregistre la valeur des autres matériels de transport possédés par l''entreprise.'),


--509
2461 Cheptel, animaux de trait
2462 Cheptel, animaux reproducteurs
2463 Animaux de garde
2465 Plantations agricoles
2468 Autres actifs biologiques
(509, 'Cheptel, animaux de trait', '2461', 'Ce compte enregistre la valeur du cheptel et des animaux de trait possédés par l''entreprise.'),
(509, 'Cheptel, animaux reproducteurs', '2462', 'Ce compte enregistre la valeur du cheptel et des animaux reproducteurs possédés par l''entreprise.'),
(509, 'Animaux de garde', '2463', 'Ce compte enregistre la valeur des animaux de garde possédés par l''entreprise.'),
(509, 'Plantations agricoles', '2465', 'Ce compte enregistre la valeur des plantations agricoles possédées par l''entreprise.'),
(509, 'Autres actifs biologiques', '2468', 'Ce compte enregistre la valeur des autres actifs biologiques possédés par l''entreprise.'),


--510
2471 Agencements et aménagements du matériel
2472 Agencements et aménagements des actifs biologiques 
2478 Autres agencements, aménagements du matériel et des actifs biologiques
(510, 'Agencements et aménagements du matériel', '2471', 'Ce compte enregistre les coûts d''agencement et d''aménagement du matériel possédé par l''entreprise.')
(510, 'Agencements et aménagements des actifs biologiques', '2472', 'Ce compte enregistre les coûts d''agencement et d''aménagement des actifs biologiques possédés par l''entreprise.')
(510, 'Autres agencements, aménagements du matériel et des actifs biologiques', '2478', 'Ce compte enregistre les autres coûts d''agencement et d''aménagement du matériel et des actifs biologiques possédés par l''entreprise.')


--511
2481 Collections et œuvres d''art
2488 Divers matériels et mobilier
(511, 'Collections et œuvres d''art', '2481', 'Ce compte enregistre la valeur des collections et des œuvres d''art possédées par l''entreprise.')
(511, 'Divers matériels et mobilier', '2488', 'Ce compte enregistre la valeur des divers matériels et mobilier possédés par l''entreprise.')

--512
2491 Matériel et outillage industriel et commercial
2492 Matériel et outillage agricole
2493 Matériel d''emballage récupérable et identifiable 
2494 Matériel et mobilier de bureau
2495 Matériel de transport
2496 Actifs biologiques
2497 Agencements et aménagements du matériel et des actifs biologiques 
2498 Autres matériels et actifs biologiques
(512, 'Matériel et outillage industriel et commercial', '2491', 'Ce compte enregistre la valeur du matériel et de l''outillage industriel et commercial possédés par l''entreprise.')
(512, 'Matériel et outillage agricole', '2492', 'Ce compte enregistre la valeur du matériel et de l''outillage agricole possédés par l''entreprise.')
(512, 'Matériel d''emballage récupérable et identifiable', '2493', 'Ce compte enregistre la valeur du matériel d''emballage récupérable et identifiable possédé par l''entreprise.')
(512, 'Matériel et mobilier de bureau', '2494', 'Ce compte enregistre la valeur du matériel et du mobilier de bureau possédés par l''entreprise.')
(512, 'Matériel de transport', '2495', 'Ce compte enregistre la valeur du matériel de transport possédé par l''entreprise.')
(512, 'Actifs biologiques', '2496', 'Ce compte enregistre la valeur des actifs biologiques possédés par l''entreprise.')
(512, 'Agencements et aménagements du matériel et des actifs biologiques', '2497', 'Ce compte enregistre la valeur des agencements et aménagements du matériel et des actifs biologiques possédés par l''entreprise.')
(512, 'Autres matériels et actifs biologiques', '2498', 'Ce compte enregistre la valeur des autres matériels et actifs biologiques possédés par l''entreprise.')


--513

--514

--515

--516

--517

--518

--519
2711 Prêts participatifs
2713 Billets de fonds
2715 Titres prêtés 
2718 Autres prêts et créances
(519, 'Prêts participatifs', '2711', 'Ce compte enregistre les prêts participatifs accordés par l''entreprise.'),
(519, 'Billets de fonds', '2713', 'Ce compte enregistre les billets de fonds détenus par l''entreprise.'),
(519, 'Titres prêtés', '2715', 'Ce compte enregistre les titres prêtés par l''entreprise.'),
(519, 'Autres prêts et créances', '2718', 'Ce compte enregistre les autres prêts et créances détenus par l''entreprise.'),


--520
2721 Prêts immobiliers
2722 Prêts mobiliers et d''installation
2728 Autres prêts au personnel
(520, 'Prêts immobiliers', '2721', 'Ce compte enregistre les prêts immobiliers accordés par l''entreprise.'),
(520, 'Prêts mobiliers et d''installation', '2722', 'Ce compte enregistre les prêts mobiliers et d''installation accordés par l''entreprise.'),
(520, 'Autres prêts au personnel', '2728', 'Ce compte enregistre les autres prêts accordés au personnel de l''entreprise.'),


--521
2731 Retenues de garantie
2733 Fonds règlementé
2738 Autres créances sur l''Etat
(521, 'Retenues de garantie', '2731', 'Ce compte enregistre les sommes retenues par l''entreprise à titre de garantie.'),
(521, 'Fonds règlementé', '2733', 'Ce compte enregistre les fonds règlementés détenus par l''entreprise.'),
(521, 'Autres créances sur l''Etat', '2738', 'Ce compte enregistre les autres créances de l''entreprise sur l''État.'),


--522
2741 Titres immobilisés de l''activité de portefeuille (T.I.A.P.)
2742 Titres participatifs
2743 Certificats d''investissement
2744 Parts de fonds commun de placement (F.C.P.)
2745 Obligations
2748 Autres titres immobilisés
(522, 'Titres immobilisés de l''activité de portefeuille (T.I.A.P.)', '2741', 'Ce compte enregistre les titres immobilisés de l''activité de portefeuille (T.I.A.P.) de l''entreprise.')
(522, 'Titres participatifs', '2742', 'Ce compte enregistre les titres participatifs détenus par l''entreprise.')
(522, 'Certificats d''investissement', '2743', 'Ce compte enregistre les certificats d''investissement détenus par l''entreprise.')
(522, 'Parts de fonds commun de placement (F.C.P.)', '2744', 'Ce compte enregistre les parts de fonds commun de placement (F.C.P.) détenues par l''entreprise.')
(522, 'Obligations', '2745', 'Ce compte enregistre les obligations détenues par l''entreprise.')
(522, 'Autres titres immobilisés', '2748', 'Ce compte enregistre les autres titres immobilisés détenus par l''entreprise.')


--523
2751 Dépôts pour loyers d''avance
2752 Dépôts pour l''électricité
2753 Dépôts pour l''eau
2754 Dépôts pour le gaz
2755 Dépôts pour le téléphone, la télécopie
2758 Autres dépôts et cautionnement
(523, 'Dépôts pour loyers d''avance', '2751', 'Ce compte enregistre les dépôts effectués pour les loyers d''avance.')
(523, 'Dépôts pour l''électricité', '2752', 'Ce compte enregistre les dépôts effectués pour l''électricité.')
(523, 'Dépôts pour l''eau', '2753', 'Ce compte enregistre les dépôts effectués pour l''eau.')
(523, 'Dépôts pour le gaz', '2754', 'Ce compte enregistre les dépôts effectués pour le gaz.')
(523, 'Dépôts pour le téléphone, la télécopie', '2755', 'Ce compte enregistre les dépôts effectués pour le téléphone et la télécopie.')
(523, 'Autres dépôts et cautionnement', '2758', 'Ce compte enregistre les autres dépôts et cautionnements effectués.')


--524
2761 Prêts et créances
2762 Prêts au personnel
2763 Créances sur l''Etat
2764 Titres immobilisés
2765 Dépôts et cautionnements versés
2768 Immobilisations financières diverses
(524, 'Prêts et créances', '2761', 'Ce compte enregistre les prêts et créances accordés par l''entreprise.')
(524, 'Prêts au personnel', '2762', 'Ce compte enregistre les prêts accordés au personnel.')
(524, 'Créances sur l''Etat', '2763', 'Ce compte enregistre les créances sur l''État.')
(524, 'Titres immobilisés', '2764', 'Ce compte enregistre les titres immobilisés.')
(524, 'Dépôts et cautionnements versés', '2765', 'Ce compte enregistre les dépôts et cautionnements versés.')
(524, 'Immobilisations financières diverses', '2768', 'Ce compte enregistre les immobilisations financières diverses.')


--525
2781 Créances diverses 
2784 Banques dépôts à terme et opérations assimilées
2785 Or et métaux précieux(1)
2788 Autres immobilisations financières
(525, 'Créances diverses', '2781', 'Ce compte enregistre les créances diverses de l''entreprise.')
(525, 'Banques dépôts à terme et opérations assimilées', '2784', 'Ce compte enregistre les dépôts à terme et opérations assimilées effectués auprès des banques.')
(525, 'Or et métaux précieux', '2785', 'Ce compte enregistre les avoirs en or et métaux précieux de l''entreprise.')
(525, 'Autres immobilisations financières', '2788', 'Ce compte enregistre les autres immobilisations financières de l''entreprise.')


--526

--527
2812 Amortissements des brevets, licences, concessions et droits similaires
2813 Amortissements des logiciels et sites internet 
2814 Amortissements des marques
2817 Amortissements des Indemnités de transfert aux joueurs
2818 Amortissements des autres droits et valeurs incorporels
(527, 'Amortissements des brevets, licences, concessions et droits similaires', '2812', 'Ce compte enregistre les amortissements des brevets, licences, concessions et droits similaires de l''entreprise.')
(527, 'Amortissements des logiciels et sites internet', '2813', 'Ce compte enregistre les amortissements des logiciels et sites internet de l''entreprise.')
(527, 'Amortissements des marques', '2814', 'Ce compte enregistre les amortissements des marques de l''entreprise.')
(527, 'Amortissements des Indemnités de transfert aux joueurs', '2817', 'Ce compte enregistre les amortissements des indemnités de transfert aux joueurs de l''entreprise.')
(527, 'Amortissements des autres droits et valeurs incorporels', '2818', 'Ce compte enregistre les amortissements des autres droits et valeurs incorporels de l''entreprise.')


--528
2824 Amortissements des travaux de mise en valeur des terrains 
(528, 'Amortissements des travaux de mise en valeur des terrains', '2824', 'Ce compte enregistre les amortissements des travaux de mise en valeur des terrains de l''entreprise.'),


--529
2831 Amortissements des bâtiments industriels, agricoles, administratifs ; commerciaux, religieux et autres sur sol propre
2832 Amortissements des bâtiments industriels agricoles, administratifs, commerciaux, religieux sur sol d''autrui
2833 Amortissements des ouvrages d''infrastructure 
2834 Amortissements des aménagements, agencements et installations techniques
2835 Amortissements des aménagements de bureaux
2838 Amortissements des autres installations et agencements
(529, 'Amortissements des bâtiments industriels, agricoles, administratifs, commerciaux, religieux et autres sur sol propre', '2831', 'Ce compte enregistre les amortissements des bâtiments industriels, agricoles, administratifs, commerciaux, religieux et autres sur sol propre de l''entreprise.'),
(529, 'Amortissements des bâtiments industriels agricoles, administratifs, commerciaux, religieux sur sol d''autrui', '2832', 'Ce compte enregistre les amortissements des bâtiments industriels, agricoles, administratifs, commerciaux, religieux sur sol d''autrui de l''entreprise.'),
(529, 'Amortissements des ouvrages d''infrastructure', '2833', 'Ce compte enregistre les amortissements des ouvrages d''infrastructure de l''entreprise.'),
(529, 'Amortissements des aménagements, agencements et installations techniques', '2834', 'Ce compte enregistre les amortissements des aménagements, agencements et installations techniques de l''entreprise.'),
(529, 'Amortissements des aménagements de bureaux', '2835', 'Ce compte enregistre les amortissements des aménagements de bureaux de l''entreprise.'),
(529, 'Amortissements des autres installations et agencements', '2838', 'Ce compte enregistre les amortissements des autres installations et agencements de l''entreprise.'),


--530
2841 Amortissements du matériel et de l''outillage industriel et commercial 
2842 Amortissements du matériel et de l''outillage industriel agricole
2843 Amortissements du matériel d''emballage récupérable et identifiable
2844 Amortissements du matériel et du mobilier
2845 Amortissements du matériel de transport
2846 Amortissements des actifs biologiques
2847 Amortissements des agencements et aménagements du matériel et des actifs biologiques
2848 Amortissements des autres matériels
(530, 'Amortissements du matériel et de l''outillage industriel et commercial', '2841', 'Ce compte enregistre les amortissements du matériel et de l''outillage industriel et commercial de l''entreprise.'),
(530, 'Amortissements du matériel et de l''outillage industriel agricole', '2842', 'Ce compte enregistre les amortissements du matériel et de l''outillage industriel agricole de l''entreprise.'),
(530, 'Amortissements du matériel d''emballage récupérable et identifiable', '2843', 'Ce compte enregistre les amortissements du matériel d''emballage récupérable et identifiable de l''entreprise.'),
(530, 'Amortissements du matériel et du mobilier', '2844', 'Ce compte enregistre les amortissements du matériel et du mobilier de l''entreprise.'),
(530, 'Amortissements du matériel de transport', '2845', 'Ce compte enregistre les amortissements du matériel de transport de l''entreprise.'),
(530, 'Amortissements des actifs biologiques', '2846', 'Ce compte enregistre les amortissements des actifs biologiques de l''entreprise.'),
(530, 'Amortissements des agencements et aménagements du matériel et des actifs biologiques', '2847', 'Ce compte enregistre les amortissements des agencements et aménagements du matériel et des actifs biologiques de l''entreprise.'),
(530, 'Amortissements des autres matériels', '2848', 'Ce compte enregistre les amortissements des autres matériels de l''entreprise.'),


--531
2901 Dépréciations d''usufruit temporaire
2902 Dépréciations de l''immobilisation, destinée à la vente provenant de dons et legs non encore reçus
(531, 'Dépréciations d''usufruit temporaire', '2901', 'Ce compte enregistre les dépréciations d''usufruit temporaire de l''entreprise.'),
(531, 'Dépréciations de l''immobilisation, destinée à la vente provenant de dons et legs non encore reçus', '2902', 'Ce compte enregistre les dépréciations de l''immobilisation, destinée à la vente provenant de dons et legs non encore reçus de l''entreprise.'),


--532
2912 Dépréciations des brevets, licences, concessions et 
droits similaires
2913 Dépréciations des logiciels et sites internet 
2914 Dépréciations des marques 
2918 Dépréciations des autres droits et valeurs incorporels 
2919 Dépréciations des immobilisations incorporelles en cours
(532, 'Dépréciations des brevets, licences, concessions et droits similaires', '2912', 'Ce compte enregistre les dépréciations des brevets, licences, concessions et droits similaires de l''entreprise.'),
(532, 'Dépréciations des logiciels et sites internet', '2913', 'Ce compte enregistre les dépréciations des logiciels et sites internet de l''entreprise.'),
(532, 'Dépréciations des marques', '2914', 'Ce compte enregistre les dépréciations des marques de l''entreprise.'),
(532, 'Dépréciations des autres droits et valeurs incorporels', '2918', 'Ce compte enregistre les dépréciations des autres droits et valeurs incorporels de l''entreprise.'),
(532, 'Dépréciations des immobilisations incorporelles en cours', '2919', 'Ce compte enregistre les dépréciations des immobilisations incorporelles en cours de l''entreprise.'),


--533
2921 Dépréciations des terrains agricoles et forestiers 
2922 Dépréciations des terrains nus
2923 Dépréciations des terrains bâtis
2924 Dépréciations des travaux de mise en valeur des terrains
2926 Dépréciations des terrains aménagés 
2928 Dépréciations des autres terrains
2929 Dépréciations des aménagements de terrains en cours
(533, 'Dépréciations des terrains agricoles et forestiers', '2921', 'Ce compte enregistre les dépréciations des terrains agricoles et forestiers de l''entreprise.'),
(533, 'Dépréciations des terrains nus', '2922', 'Ce compte enregistre les dépréciations des terrains nus de l''entreprise.'),
(533, 'Dépréciations des terrains bâtis', '2923', 'Ce compte enregistre les dépréciations des terrains bâtis de l''entreprise.'),
(533, 'Dépréciations des travaux de mise en valeur des terrains', '2924', 'Ce compte enregistre les dépréciations des travaux de mise en valeur des terrains de l''entreprise.'),
(533, 'Dépréciations des terrains aménagés', '2926', 'Ce compte enregistre les dépréciations des terrains aménagés de l''entreprise.'),
(533, 'Dépréciations des autres terrains', '2928', 'Ce compte enregistre les dépréciations des autres terrains de l''entreprise.'),
(533, 'Dépréciations des aménagements de terrains en cours', '2929', 'Ce compte enregistre les dépréciations des aménagements de terrains en cours de l''entreprise.'),


--534
2931 Dépréciations des bâtiments industriels, agricoles, administratifs, commerciaux, religieux et autres sol propre
2932 Dépréciations des bâtiments industriels, agricoles, administratifs, commerciaux, religieux et autres sur sol d''autrui
2933 Dépréciations des ouvrages d''infrastructures
2934 Dépréciations des aménagements, agencements et installations techniques
2935 Dépréciations des aménagements de bureaux
2938 Dépréciations des autres installations et agencements 
2939 Dépréciations des bâtiments et installations en cours
(534, 'Dépréciations des bâtiments industriels, agricoles, administratifs, commerciaux, religieux et autres sol propre', '2931', 'Ce compte enregistre les dépréciations des bâtiments industriels, agricoles, administratifs, commerciaux, religieux et autres sur sol propre de l''entreprise.'),
(534, 'Dépréciations des bâtiments industriels, agricoles, administratifs, commerciaux, religieux et autres sur sol d''autrui', '2932', 'Ce compte enregistre les dépréciations des bâtiments industriels, agricoles, administratifs, commerciaux, religieux et autres sur sol d''autrui de l''entreprise.'),
(534, 'Dépréciations des ouvrages d''infrastructures', '2933', 'Ce compte enregistre les dépréciations des ouvrages d''infrastructures de l''entreprise.'),
(534, 'Dépréciations des aménagements, agencements et installations techniques', '2934', 'Ce compte enregistre les dépréciations des aménagements, agencements et installations techniques de l''entreprise.'),
(534, 'Dépréciations des aménagements de bureaux', '2935', 'Ce compte enregistre les dépréciations des aménagements de bureaux de l''entreprise.'),
(534, 'Dépréciations des autres installations et agencements ', '2938', 'Ce compte enregistre les dépréciations des autres installations et agencements de l''entreprise.'),
(534, 'Dépréciations des bâtiments et installations en cours', '2939', 'Ce compte enregistre les dépréciations des bâtiments et installations en cours de l''entreprise.'),


--535
2941 Dépréciations du matériel et de l''outillage industriel et commercial
2942 Dépréciations du matériel et de l''outillage agricole
2943 Dépréciations du matériel d''emballage récupérable et identifiable
2944 Dépréciations du matériel et du mobilier
2945 Dépréciations du matériel de transport
2946 Dépréciations des actifs biologiques
2947 Dépréciations des aménagements et agencements du matériel et des actifs biologiques 
2948 Dépréciations des autres matériels
2949 Dépréciations de matériel en cours
(535, 'Dépréciations du matériel et de l''outillage industriel et commercial', '2941', 'Ce compte enregistre les dépréciations du matériel et de l''outillage industriel et commercial de l''entreprise.'),
(535, 'Dépréciations du matériel et de l''outillage agricole', '2942', 'Ce compte enregistre les dépréciations du matériel et de l''outillage agricole de l''entreprise.'),
(535, 'Dépréciations du matériel d''emballage récupérable et identifiable', '2943', 'Ce compte enregistre les dépréciations du matériel d''emballage récupérable et identifiable de l''entreprise.'),
(535, 'Dépréciations du matériel et du mobilier', '2944', 'Ce compte enregistre les dépréciations du matériel et du mobilier de l''entreprise.'),
(535, 'Dépréciations du matériel de transport', '2945', 'Ce compte enregistre les dépréciations du matériel de transport de l''entreprise.'),
(535, 'Dépréciations des actifs biologiques', '2946', 'Ce compte enregistre les dépréciations des actifs biologiques de l''entreprise.'),
(535, 'Dépréciations des aménagements et agencements du matériel et des actifs biologiques ', '2947', 'Ce compte enregistre les dépréciations des aménagements et agencements du matériel et des actifs biologiques de l''entreprise.'),
(535, 'Dépréciations des autres matériels', '2948', 'Ce compte enregistre les dépréciations des autres matériels de l''entreprise.'),
(535, 'Dépréciations de matériel en cours', '2949', 'Ce compte enregistre les dépréciations de matériel en cours de l''entreprise.'),


--536
2951 Dépréciations des avances et acomptes versés sur immobilisations incorporelles
2952 Dépréciations des avances et acomptes versés sur immobilisations corporelles
(536, 'Dépréciations des avances et acomptes versés sur immobilisations incorporelles', '2951', 'Ce compte enregistre les dépréciations des avances et acomptes versés sur les immobilisations incorporelles de l''entreprise.'),
(536, 'Dépréciations des avances et acomptes versés sur immobilisations corporelles', '2952', 'Ce compte enregistre les dépréciations des avances et acomptes versés sur les immobilisations corporelles de l''entreprise.'),


--537
2961 Dépréciations des titres de participations 
2965 Dépréciations des participations dans les organismes professionnels 
2966 Dépréciations des parts des GIE
2968 Dépréciations des autres titres de participation
(537, 'Dépréciations des titres de participations', '2961', 'Ce compte enregistre les dépréciations des titres de participations de l''entreprise.'),
(537, 'Dépréciations des participations dans les organismes professionnels', '2965', 'Ce compte enregistre les dépréciations des participations dans les organismes professionnels de l''entreprise.'),
(537, 'Dépréciations des parts des GIE', '2966', 'Ce compte enregistre les dépréciations des parts des groupements d''intérêt économique (GIE), de l''entreprise.'),
(537, 'Dépréciations des autres titres de participation', '2968', 'Ce compte enregistre les dépréciations des autres titres de participation de l''entreprise.'),


--538
2971 Dépréciations des prêts et créances
2972 Dépréciations des prêts au personnel
2973 Dépréciations des créances sur l''Etat
2974 Dépréciations des titres immobilisés
2975 Dépréciations des dépôts et cautionnements versés
2977 Dépréciations des créances rattachées à des participations et avances à des GIE
2978 Dépréciations des créances financières diverses
(538, 'Dépréciations des prêts et créances', '2971', 'Ce compte enregistre les dépréciations des prêts et créances de l''entreprise.'),
(538, 'Dépréciations des prêts au personnel', '2972', 'Ce compte enregistre les dépréciations des prêts accordés au personnel de l''entreprise.'),
(538, 'Dépréciations des créances sur l''Etat', '2973', 'Ce compte enregistre les dépréciations des créances de l''entreprise sur l''Etat.'),
(538, 'Dépréciations des titres immobilisés', '2974', 'Ce compte enregistre les dépréciations des titres immobilisés de l''entreprise.'),
(538, 'Dépréciations des dépôts et cautionnements versés', '2975', 'Ce compte enregistre les dépréciations des dépôts et cautionnements versés par l''entreprise.'),
(538, 'Dépréciations des créances rattachées à des participations et avances à des GIE', '2977', 'Ce compte enregistre les dépréciations des créances rattachées à des participations et avances à des groupements d''intérêt économique (GIE), de l''entreprise.'),
(538, 'Dépréciations des créances financières diverses', '2978', 'Ce compte enregistre les dépréciations des autres créances financières de l''entreprise.'),


--539

--540

--541

--542

--543

--544

--545

--546

--547

--548

--549
3351 Emballages perdus
3352 Emballages récupérables non identifiables 
3353 Emballages à usage mixte 
3358 Autres emballages 
(549, 'Emballages perdus', '3351', 'Ce compte enregistre la valeur des emballages perdus par l''entreprise.')
(549, 'Emballages récupérables non identifiables', '3352', 'Ce compte enregistre la valeur des emballages récupérables mais non identifiables par l''entreprise.')
(549, 'Emballages à usage mixte', '3353', 'Ce compte enregistre la valeur des emballages utilisés à la fois pour des produits vendus et des produits de l''entreprise.')
(549, 'Autres emballages', '3358', 'Ce compte enregistre la valeur des autres types d''emballages utilisés par l''entreprise.')

--550

--551

--552

--553
3631 Animaux
3632 Végétaux
3638 Autres stocks (activités annexes),
(553, 'Animaux', '3631', 'Ce compte enregistre la valeur des animaux détenus en stock par l''entreprise.')
(553, 'Végétaux', '3632', 'Ce compte enregistre la valeur des végétaux détenus en stock par l''entreprise.')
(553, 'Autres stocks (activités annexes)', '3638', 'Ce compte enregistre la valeur des autres types de stocks liés à des activités annexes de l''entreprise.')

--554

--555

--556

--557

--558
3771 Stock en consignation
3772 Stock en dépôt 
(558, 'Stock en consignation', '3771', 'Ce compte enregistre la valeur des stocks placés en consignation, c''est-à-dire des biens détenus par l''entreprise mais appartenant à des tiers et destinés à être vendus ou utilisés ultérieurement.'),
(558, 'Stock en dépôt', '3772', 'Ce compte enregistre la valeur des stocks détenus en dépôt par l''entreprise, c''est-à-dire des biens qui sont entreposés chez l''entreprise pour le compte de tiers.'),

--559

--560

--561

--562

--563

--564


--565
--566

--567
4011 Fournisseurs 
4013 Fournisseurs sous-traitant 
4016 Fournisseurs, réserves de propriété
4017 Fournisseurs, retenues de garantie
(567, 'Fournisseurs', '4011', 'Ce compte enregistre les dettes de l''entreprise envers ses fournisseurs pour des biens ou des services achetés.'),
(567, 'Fournisseurs sous-traitant', '4013', 'Ce compte enregistre les dettes de l''entreprise envers ses fournisseurs sous-traitants pour des biens ou des services achetés.'),
(567, 'Fournisseurs, réserves de propriété', '4016', 'Ce compte enregistre les dettes de l''entreprise envers ses fournisseurs pour des biens ou des services achetés, avec réserve de propriété.'),
(567, 'Fournisseurs, retenues de garantie', '4017', 'Ce compte enregistre les dettes de l''entreprise envers ses fournisseurs pour des biens ou des services achetés, avec retenue de garantie.');


--568
4021 Fournisseurs, effets à payer 
4023 Fournisseurs sous-traitant, effets à payer
(568, 'Fournisseurs, effets à payer', '4021', 'Ce compte enregistre les effets à payer par l''entreprise à ses fournisseurs pour des biens ou des services achetés.'),
(568, 'Fournisseurs sous-traitant, effets à payer', '4023', 'Ce compte enregistre les effets à payer par l''entreprise à ses fournisseurs sous-traitants pour des biens ou des services achetés.');


--569
4081 Fournisseurs
4083 Fournisseurs sous-traitants
4086 Fournisseurs, intérêts courus
(569, 'Fournisseurs', '4081', 'Ce compte enregistre les dettes de l''entreprise envers ses fournisseurs pour des biens ou des services achetés.'),
(569, 'Fournisseurs sous-traitants', '4083', 'Ce compte enregistre les dettes de l''entreprise envers ses fournisseurs sous-traitants pour des biens ou des services achetés.'),
(569, 'Fournisseurs, intérêts courus', '4086', 'Ce compte enregistre les intérêts courus sur les dettes de l''entreprise envers ses fournisseurs.');


--570
4091 Fournisseurs avances et acomptes versés 
4093 Fournisseurs sous-traitants avances et acomptes versés
4094 Fournisseurs créances pour emballages et matériels à rendre
4098 Fournisseurs, rabais, remises, ristournes et autres avoirs à obtenir
(570, 'Fournisseurs avances et acomptes versés', '4091', 'Ce compte enregistre les avances et acomptes versés par l''entreprise à ses fournisseurs pour des biens ou des services à recevoir.'),
(570, 'Fournisseurs sous-traitants avances et acomptes versés', '4093', 'Ce compte enregistre les avances et acomptes versés par l''entreprise à ses fournisseurs sous-traitants pour des biens ou des services à recevoir.'),
(570, 'Fournisseurs créances pour emballages et matériels à rendre', '4094', 'Ce compte enregistre les créances de l''entreprise sur ses fournisseurs pour des emballages et matériels à rendre.'),
(570, 'Fournisseurs, rabais, remises, ristournes et autres avoirs à obtenir', '4098', 'Ce compte enregistre les rabais, remises, ristournes et autres avoirs à obtenir de la part des fournisseurs.');


--571

--572

--573
4131 Adhérents, chèques impayés 
4132 Clients-usagers, chèques impayés 
4133 Adhérents, Autres valeurs impayés 
4138 Clients-usagers, autres valeurs impayés
(573, 'Adhérents, chèques impayés', '4131', 'Ce compte enregistre les chèques impayés émis par les adhérents.'),
(573, 'Clients-usagers, chèques impayés', '4132', 'Ce compte enregistre les chèques impayés émis par les clients-usagers.'),
(573, 'Adhérents, Autres valeurs impayés', '4133', 'Ce compte enregistre les autres valeurs impayées émises par les adhérents.'),
(573, 'Clients-usagers, autres valeurs impayés', '4138', 'Ce compte enregistre les autres valeurs impayées émises par les clients-usagers.');


--574
4161 Adhérents cotisations litigieuses ou douteuses
4162 Créances-usagers, factures à établir
4186 Adhérents, clients-usagers, intérêts courus
(574, 'Adhérents cotisations litigieuses ou douteuses', '4161', 'Ce compte enregistre les cotisations litigieuses ou douteuses émises par les adhérents.'),
(574, 'Créances-usagers, factures à établir', '4162', 'Ce compte enregistre les factures à établir dues par les clients-usagers.'),
(574, 'Adhérents, clients-usagers, intérêts courus', '4186', 'Ce compte enregistre les intérêts courus dus par les adhérents et les clients-usagers.');


--575
4191 Adhérents, Clients-usagers créditeurs
4192 Clients-usagers, avances et acomptes reçus 
4194 Clients-usagers, dettes pour emballages et matériels consignés
4198 Clients-usagers, rabais, remises, ristournes et autres avoirs à accorder
(575, 'Adhérents, Clients-usagers créditeurs', '4191', 'Ce compte enregistre les montants dus par les adhérents et les clients-usagers qui ont un solde créditeur.'),
(575, 'Clients-usagers, avances et acomptes reçus', '4192', 'Ce compte enregistre les avances et acomptes reçus des clients-usagers.'),
(575, 'Clients-usagers, dettes pour emballages et matériels consignés', '4194', 'Ce compte enregistre les dettes pour emballages et matériels consignés des clients-usagers.'),
(575, 'Clients-usagers, rabais, remises, ristournes et autres avoirs à accorder', '4198', 'Ce compte enregistre les rabais, remises, ristournes et autres avoirs à accorder aux clients-usagers.'),


--576
4211 Personnel, avances 
4212 Personnel, acomptes
4213 Frais avancés et fournitures au personnel
(576, 'Personnel, avances', '4211', 'Ce compte enregistre les avances faites au personnel.'),
(576, 'Personnel, acomptes', '4212', 'Ce compte enregistre les acomptes versés au personnel.'),
(576, 'Frais avancés et fournitures au personnel', '4213', 'Ce compte enregistre les frais avancés et les fournitures fournies au personnel.'),


--577

--578

--579
4241 Assistance médicale
4242 Allocations familiales
4245 Organismes sociaux rattachés à l''entité
4248 Autres œuvres sociales internes
(579, 'Assistance médicale', '4241', 'Ce compte enregistre les dépenses liées à l''assistance médicale fournie au personnel.'),
(579, 'Allocations familiales', '4242', 'Ce compte enregistre les allocations familiales versées au personnel.'),
(579, 'Organismes sociaux rattachés à l''entité', '4245', 'Ce compte enregistre les contributions versées aux organismes sociaux rattachés à l''entité.'),
(579, 'Autres œuvres sociales internes', '4248', 'Ce compte enregistre les dépenses liées à d''autres œuvres sociales internes à l''entité.'),


--580
4251 Délégués du personnel
4252 Syndicats et assimilés
4258 Autres représentants du personnel
(580, 'Délégués du personnel', '4251', 'Ce compte enregistre les frais relatifs aux délégués du personnel.'),
(580, 'Syndicats et assimilés', '4252', 'Ce compte enregistre les frais relatifs aux syndicats et aux représentants du personnel assimilés.'),
(580, 'Autres représentants du personnel', '4258', 'Ce compte enregistre les frais relatifs à d''autres représentants du personnel.'),


--581


--582
4281 Personnel congés à payer
4286 Autres charges à payer
4287 Produits à recevoir
(582, 'Personnel congés à payer', '4281', 'Ce compte enregistre les charges liées aux congés à payer pour le personnel.'),
(582, 'Autres charges à payer', '4286', 'Ce compte enregistre d''autres charges à payer.'),
(582, 'Produits à recevoir', '4287', 'Ce compte enregistre les produits à recevoir.'),


--583
4311 Prestations familiales 
4312 Accidents de travail
4318 Autres cotisations sociales
(583, 'Prestations familiales', '4311', 'Ce compte enregistre les cotisations sociales liées aux prestations familiales.'),
(583, 'Accidents de travail', '4312', 'Ce compte enregistre les cotisations sociales liées aux accidents de travail.'),
(583, 'Autres cotisations sociales', '4318', 'Ce compte enregistre les autres cotisations sociales.'),


--584
4321 Caisse de retraite obligatoire
4322 Caisse de retraite complémentaire
4328 Autres caisses de retraites
(584, 'Caisse de retraite obligatoire', '4321', 'Ce compte enregistre les cotisations sociales versées à la caisse de retraite obligatoire.'),
(584, 'Caisse de retraite complémentaire', '4322', 'Ce compte enregistre les cotisations sociales versées à la caisse de retraite complémentaire.'),
(584, 'Autres caisses de retraites', '4328', 'Ce compte enregistre les cotisations sociales versées à d''autres caisses de retraites.'),


--585
4331 Mutuelle de santé 
4332 Assurances retraite
4333 Assurances et organismes de santé
(585, 'Mutuelle de santé', '4331', 'Ce compte enregistre les cotisations sociales versées à la mutuelle de santé.'),
(585, 'Assurances retraite', '4332', 'Ce compte enregistre les cotisations sociales versées aux assurances retraite.'),
(585, 'Assurances et organismes de santé', '4333', 'Ce compte enregistre les cotisations sociales versées aux assurances et organismes de santé.'),


--586
4381 Charges sociales sur gratifications à payer 
4382 Charges sociales sur congés à payer
4386 Autres charges à payer
4387 Produits à recevoir
(586, 'Charges sociales sur gratifications à payer', '4381', 'Ce compte enregistre les charges sociales à payer sur les gratifications du personnel.'),
(586, 'Charges sociales sur congés à payer', '4382', 'Ce compte enregistre les charges sociales à payer sur les congés du personnel.'),
(586, 'Autres charges à payer', '4386', 'Ce compte enregistre d''autres charges à payer.'),
(586, 'Produits à recevoir', '4387', 'Ce compte enregistre les produits à recevoir.'),


--587
4421 Impôts et taxes d''Etat
4422 Impôts et taxes pour les collectivités publiques
4423 Impôts et taxes recouvrables sur des obligataires
4424 Impôts et taxes recouvrables sur des adhérents et autres
4426 Droits de douane
4428 Autres impôts et taxes
(587, 'Impôts et taxes d''Etat', '4421', 'Ce compte enregistre les impôts et taxes dus à l''État.'),
(587, 'Impôts et taxes pour les collectivités publiques', '4422', 'Ce compte enregistre les impôts et taxes dus aux collectivités publiques.'),
(587, 'Impôts et taxes recouvrables sur des obligataires', '4423', 'Ce compte enregistre les impôts et taxes recouvrables sur des obligataires.'),
(587, 'Impôts et taxes recouvrables sur des adhérents et autres', '4424', 'Ce compte enregistre les impôts et taxes recouvrables sur des adhérents et autres.'),
(587, 'Droits de douane', '4426', 'Ce compte enregistre les droits de douane.'),
(587, 'Autres impôts et taxes', '4428', 'Ce compte enregistre d''autres impôts et taxes.'),

--588

--589

--590

--591

--592
4471 Impôts général sur le revenu
4472 Impôts sur salaires
4473 Contribution nationale
4474 Contribution nationale de solidarité
4478 Autres impôts et contributions
(592, 'Impôts général sur le revenu', '4471', 'Ce compte enregistre l''impôt général sur le revenu.'),
(592, 'Impôts sur salaires', '4472', 'Ce compte enregistre les impôts sur les salaires.'),
(592, 'Contribution nationale', '4473', 'Ce compte enregistre la contribution nationale.'),
(592, 'Contribution nationale de solidarité', '4474', 'Ce compte enregistre la contribution nationale de solidarité.'),
(592, 'Autres impôts et contributions', '4478', 'Ce compte enregistre d''autres impôts et contributions.'),


--593
4486 Charges à payer 
4487 Produits à recevoir
(593, 'Charges à payer', '4486', 'Ce compte enregistre les charges à payer.'),
(593, 'Produits à recevoir', '4487', 'Ce compte enregistre les produits à recevoir.'),


--594
4491 État, Subvention à recevoir
(594, 'État, Subvention à recevoir', '4491', 'Ce compte enregistre les subventions à recevoir de l''État.'),

--595
4511 Apporteurs en nature
4512 Apporteurs en numéraire
4515 Adhérents, dirigeants, comptes courants
(595, 'Apporteurs en nature', '4511', 'Ce compte enregistre les apports en nature effectués par les associés ou actionnaires à la société.'),
(595, 'Apporteurs en numéraire', '4512', 'Ce compte enregistre les apports en numéraire effectués par les associés ou actionnaires à la société.'),
(595, 'Adhérents, dirigeants, comptes courants', '4515', 'Ce compte enregistre les sommes déposées par les adhérents, dirigeants ou autres personnes physiques ou morales, sous forme de comptes courants.'),


--596
4521 Apporteurs en nature
4522 Apporteurs en numéraire
4525 Fondateurs, dirigeants, comptes courants
(596, 'Apporteurs en nature', '4521', 'Ce compte enregistre les apports en nature effectués par les associés ou actionnaires lors de la création de la société.'),
(596, 'Apporteurs en numéraire', '4522', 'Ce compte enregistre les apports en numéraire effectués par les associés ou actionnaires lors de la création de la société.'),
(596, 'Fondateurs, dirigeants, comptes courants', '4525', 'Ce compte enregistre les sommes déposées par les fondateurs, dirigeants ou autres personnes physiques ou morales, sous forme de comptes courants lors de la création de la société.'),


--597
4531 Apporteurs en nature
4532 Apporteurs en numéraire
4535 Membres, dirigeants, comptes courants
(597, 'Apporteurs en nature', '4531', 'Ce compte enregistre les apports en nature effectués par les associés ou actionnaires lors de la création de la société ou ultérieurement.'),
(597, 'Apporteurs en numéraire', '4532', 'Ce compte enregistre les apports en numéraire effectués par les associés ou actionnaires lors de la création de la société ou ultérieurement.'),
(597, 'Membres, dirigeants, comptes courants', '4535', 'Ce compte enregistre les sommes déposées par les membres, dirigeants ou autres personnes physiques ou morales, sous forme de comptes courants.'),


--598
4541 Apporteurs en nature 
4542 Apporteurs en numéraire
4545 Adhérents, dirigeants, comptes courants
(598, 'Apporteurs en nature', '4541', 'Ce compte enregistre les apports en nature effectués par les associés ou actionnaires lors de la création de la société ou ultérieurement.'),
(598, 'Apporteurs en numéraire', '4542', 'Ce compte enregistre les apports en numéraire effectués par les associés ou actionnaires lors de la création de la société ou ultérieurement.'),
(598, 'Adhérents, dirigeants, comptes courants', '4545', 'Ce compte enregistre les sommes déposées par les adhérents ou dirigeants sous forme de comptes courants.'),


--599
4561 Congrégations religieuses et assimilées 
4562 Waqf et assimilés
(599, 'Congrégations religieuses et assimilées', '4561', 'Ce compte enregistre les contributions, dons ou autres formes de financement provenant des congrégations religieuses ou entités similaires.'),
(599, 'Waqf et assimilés', '4562', 'Ce compte enregistre les contributions, dons ou autres formes de financement provenant des Waqf ou entités similaires.'),


--600
4571 Mécènes et assimilés 
4572 Bénévoles et assimilés
(600, 'Mécènes et assimilés', '4571', 'Ce compte enregistre les contributions, dons ou autres formes de financement provenant des mécènes ou entités similaires.'),
(600, 'Bénévoles et assimilés', '4572', 'Ce compte enregistre les contributions, dons ou autres formes de financement provenant des bénévoles ou entités similaires.'),













































































--601

--602

--603

--604

--605
4692 Bailleurs-fonds d''administration à recevoir
4693 Etat-Fonds d''administration à recevoir 
4694 Autres tiers ou organismes de financement assimilés Fonds d''administration à recevoir
(605, 'Bailleurs-fonds d''administration à recevoir', '4692', 'Ce compte enregistre les montants dus aux bailleurs de fonds pour les frais administratifs à recevoir.'),
(605, 'Etat-Fonds d''administration à recevoir', '4693', 'Ce compte enregistre les montants dus à l''État pour les frais administratifs à recevoir.'),
(605, 'Autres tiers ou organismes de financement assimilés Fonds d''administration à recevoir', '4694', 'Ce compte enregistre les montants dus à d''autres tiers ou organismes de financement pour les frais administratifs à recevoir.'),


--606
4711 Débiteurs divers 
4712 Créditeurs divers 
4713 Créditeurs, dons en nature courant non consommés 
4717 Débiteurs divers-retenues de garantie
4719 Bons de souscription d''actions et d''obligations 
(606, 'Débiteurs divers', '4711', 'Ce compte enregistre les montants dus à l''entreprise par des débiteurs divers qui ne sont pas spécifiquement classés ailleurs dans le système comptable.'),
(606, 'Créditeurs divers', '4712', 'Ce compte enregistre les montants dus par l''entreprise à des créditeurs divers qui ne sont pas spécifiquement classés ailleurs dans le système comptable.'),
(606, 'Créditeurs, dons en nature courant non consommés', '4713', 'Ce compte enregistre les dons en nature reçus par l''entreprise qui n''ont pas encore été consommés ou utilisés dans ses opérations courantes.'),
(606, 'Débiteurs divers-retenues de garantie', '4717', 'Ce compte enregistre les montants dus à l''entreprise par des débiteurs divers, avec des retenues de garantie ou des provisions pour des réclamations potentielles.'),
(606, 'Bons de souscription d''actions et d''obligations', '4719', 'Ce compte enregistre les bons de souscription d''actions et d''obligations émis par l''entreprise, qui donnent le droit à leur détenteur de souscrire à de nouvelles actions ou obligations à des conditions spécifiées.'),


--607
4721 Créances sur cessions de titres de placement
4726 Versements restant à effectuer sur titres de placement non libérés
(607, 'Créances sur cessions de titres de placement', '4721', 'Ce compte enregistre les créances découlant de la cession de titres de placement, c''est-à-dire les montants dus à l''entreprise résultant de la vente de titres de placement.'),
(607, 'Versements restant à effectuer sur titres de placement non libérés', '4726', 'Ce compte enregistre les montants restant à verser sur des titres de placement qui n''ont pas encore été entièrement libérés ou payés.'),


--608
4731 Subventions d''investissement à recevoir 
4732 Subventions d''exploitation à recevoir 
4733 Subventions d''équilibre à recevoir
4738 Autres subventions à recevoir 
4739 Subventions à reverser 
(608, "Subventions d'investissement à recevoir", '4731', "Ce compte enregistre les subventions accordées à l'entreprise pour financer des investissements spécifiques qui n'ont pas encore été reçues."),
(608, "Subventions d'exploitation à recevoir", '4732', "Ce compte enregistre les subventions accordées à l'entreprise pour soutenir ses activités opérationnelles courantes qui n'ont pas encore été reçues."),
(608, "Subventions d'équilibre à recevoir", '4733', "Ce compte enregistre les subventions accordées à l'entreprise pour maintenir son équilibre financier qui n'ont pas encore été reçues."),
(608, 'Autres subventions à recevoir', '4738', 'Ce compte enregistre d''autres types de subventions à recevoir qui ne sont pas spécifiquement couverts par les comptes précédents.'),
(608, 'Subventions à reverser', '4739', 'Ce compte enregistre les subventions que l''entreprise doit reverser à d''autres entités ou organismes conformément à des accords ou des réglementations spécifiques.'),


--609
4746 Compte de répartition périodique des charges 
4747 Compte de répartition périodique des produits
(609, 'Compte de répartition périodique des charges', '4746', 'Ce compte est utilisé pour répartir périodiquement les charges sur plusieurs périodes comptables, généralement pour des charges qui ne peuvent pas être directement imputées à une seule période.'),
(609, 'Compte de répartition périodique des produits', '4747', 'Ce compte est utilisé pour répartir périodiquement les produits sur plusieurs périodes comptables, généralement pour des produits qui ne peuvent pas être directement attribués à une seule période.')


--610


--611

--612

--613
4781 Diminution des créances d''exploitation et HAO 
47811 Diminution des créances d''exploitation
47818 Diminution des créances HAO
4782 Diminution des créances financières 
4783 Augmentation des dettes d''exploitation et HAO
47831 Augmentation des dettes d''exploitation
47838 Augmentation des dettes HAO 
4784 Augmentation des dettes financières 
4786 Différences d''évaluation sur instruments de trésorerie 
4788 Différences compensés par couverture de change
(613, 'Diminution des créances d''exploitation et HAO', '4781', 'Ce compte enregistre les diminutions des créances d''exploitation et des créances hors activités ordinaires (HAO) de l''entreprise.'),
(613, 'Diminution des créances d''exploitation', '47811', 'Ce sous-compte enregistre spécifiquement les diminutions des créances résultant des opérations d''exploitation de l''entreprise.'),
(613, 'Diminution des créances HAO', '47818', 'Ce sous-compte enregistre spécifiquement les diminutions des créances hors activités ordinaires (HAO) de l''entreprise.'),
(613, 'Diminution des créances financières', '4782', 'Ce compte enregistre les diminutions des créances financières de l''entreprise.'),
(613, 'Augmentation des dettes d''exploitation et HAO', '4783', 'Ce compte enregistre les augmentations des dettes d''exploitation et des dettes hors activités ordinaires (HAO) de l''entreprise.'),
(613, 'Augmentation des dettes d''exploitation', '47831', 'Ce sous-compte enregistre spécifiquement les augmentations des dettes résultant des opérations d''exploitation de l''entreprise.'),
(613, 'Augmentation des dettes HAO', '47838', 'Ce sous-compte enregistre spécifiquement les augmentations des dettes hors activités ordinaires (HAO) de l''entreprise.'),
(613, 'Augmentation des dettes financières', '4784', 'Ce compte enregistre les augmentations des dettes financières de l''entreprise.'),
(613, "Différences d'évaluation sur instruments de trésorerie", '4786', "Ce compte enregistre les différences entre la valeur comptable et la valeur de marché des instruments de trésorerie."),
(613, "Différences compensées par couverture de change", '4788', "Ce compte enregistre les différences compensées par des opérations de couverture de change pour minimiser les risques de change de l'entreprise."),


--614
4791 Augmentation des créances d''exploitation et HAO
47911 Augmentation des créances d''exploitation
47918 Augmentation des créances HAO
4792 Augmentation des créances financières
4793 Diminution des dettes d''exploitation et HAO
47931 Diminution des dettes d''exploitation
47938 Diminution des dettes HAO 
4794 Diminution des dettes financières 
4797 Différences d''évaluation sur instruments de trésorerie 
4798 Différences compensés par couverture de change
(614, 'Augmentation des créances d''exploitation et HAO', '4791', 'Ce compte enregistre les augmentations des créances d''exploitation et des créances hors activités ordinaires (HAO) de l''entreprise.'),
(614, 'Augmentation des créances d''exploitation', '47911', 'Ce sous-compte enregistre spécifiquement les augmentations des créances résultant des opérations d''exploitation de l''entreprise.'),
(614, 'Augmentation des créances HAO', '47918', 'Ce sous-compte enregistre spécifiquement les augmentations des créances hors activités ordinaires (HAO) de l''entreprise.'),
(614, 'Augmentation des créances financières', '4792', 'Ce compte enregistre les augmentations des créances financières de l''entreprise.'),
(614, 'Diminution des dettes d''exploitation et HAO', '4793', 'Ce compte enregistre les diminutions des dettes d''exploitation et des dettes hors activités ordinaires (HAO) de l''entreprise.'),
(614, 'Diminution des dettes d''exploitation', '47931', 'Ce sous-compte enregistre spécifiquement les diminutions des dettes résultant des opérations d''exploitation de l''entreprise.'),
(614, 'Diminution des dettes HAO', '47938', 'Ce sous-compte enregistre spécifiquement les diminutions des dettes hors activités ordinaires (HAO) de l''entreprise.'),
(614, 'Diminution des dettes financières', '4794', 'Ce compte enregistre les diminutions des dettes financières de l''entreprise.'),
(614, 'Différences d''évaluation sur instruments de trésorerie', '4797', 'Ce compte enregistre les différences entre la valeur comptable et la valeur de marché des instruments de trésorerie.'),
(614, 'Différences compensées par couverture de change', '4798', 'Ce compte enregistre les différences compensées par des opérations de couverture de change pour minimiser les risques de change de l''entreprise.'),


--615
4811 Fournisseurs, immobilisations incorporelles
4812 Fournisseurs, immobilisations corporelles
4813 Versements restant à effectuer sur titres de placement non libérés 
4816 Fournisseurs, réserves de propriété-immobilisations
48161 Fournisseurs, réserve de propriété-immobilisations incorporelles
48162 Fournisseurs, réserves de propriété-immobilisations corporelles
4817 Fournisseurs, retenues de garantie-immobilisations 
48171 Fournisseurs, retenues de garantie-immobilisations incorporelles
48172 Fournisseurs, retenues de garantie-immobilisations corporelles
4818 Fournisseurs, factures non parvenues-immobilisations
48181 Fournisseurs, factures non parvenues-immobilisations incorporelles
48182 Fournisseurs, factures non parvenues-immobilisations corporelles
(615, 'Fournisseurs, immobilisations incorporelles', '4811', 'Ce compte enregistre les dettes de l''entreprise envers les fournisseurs pour l''acquisition d''immobilisations incorporelles, telles que les brevets, les licences ou les logiciels.'),
(615, 'Fournisseurs, immobilisations corporelles', '4812', 'Ce compte enregistre les dettes de l''entreprise envers les fournisseurs pour l''acquisition d''immobilisations corporelles, telles que les équipements, les machines ou les bâtiments.'),
(615, 'Versements restant à effectuer sur titres de placement non libérés', '4813', 'Ce compte enregistre les montants restant à verser sur des titres de placement qui n''ont pas encore été entièrement libérés ou payés.'),
(615, 'Fournisseurs, réserves de propriété-immobilisations', '4816', 'Ce compte enregistre les dettes de l''entreprise envers les fournisseurs qui ont accordé une réserve de propriété sur des immobilisations, c''est-à-dire une clause stipulant que la propriété de l''immobilisation n''est transférée à l''acheteur qu''après le paiement complet.'),
(615, 'Fournisseurs, réserve de propriété-immobilisations incorporelles', '48161', 'Ce sous-compte enregistre spécifiquement les dettes de l''entreprise envers les fournisseurs avec une réserve de propriété sur des immobilisations incorporelles.'),
(615, 'Fournisseurs, réserves de propriété-immobilisations corporelles', '48162', 'Ce sous-compte enregistre spécifiquement les dettes de l''entreprise envers les fournisseurs avec une réserve de propriété sur des immobilisations corporelles.'),
(615, 'Fournisseurs, retenues de garantie-immobilisations', '4817', 'Ce compte enregistre les dettes de l''entreprise envers les fournisseurs qui ont retenu une garantie sur des immobilisations, généralement pour assurer la qualité ou la conformité des biens livrés.'),
(615, 'Fournisseurs, retenues de garantie-immobilisations incorporelles', '48171', 'Ce sous-compte enregistre spécifiquement les dettes de l''entreprise envers les fournisseurs avec une retenue de garantie sur des immobilisations incorporelles.'),
(615, 'Fournisseurs, retenues de garantie-immobilisations corporelles', '48172', 'Ce sous-compte enregistre spécifiquement les dettes de l''entreprise envers les fournisseurs avec une retenue de garantie sur des immobilisations corporelles.'),
(615, 'Fournisseurs, factures non parvenues-immobilisations', '4818', 'Ce compte enregistre les dettes de l''entreprise envers les fournisseurs pour lesquelles les factures n''ont pas encore été reçues ou enregistrées dans les comptes de l''entreprise.'),
(615, 'Fournisseurs, factures non parvenues-immobilisations incorporelles', '48181', 'Ce sous-compte enregistre spécifiquement les dettes de l''entreprise envers les fournisseurs pour lesquelles les factures n''ont pas encore été reçues ou enregistrées dans les comptes de l''entreprise, concernant des immobilisations incorporelles.'),
(615, 'Fournisseurs, factures non parvenues-immobilisations corporelles', '48182', 'Ce sous-compte enregistre spécifiquement les dettes de l''entreprise envers les fournisseurs pour lesquelles les factures n''ont pas encore été reçues ou enregistrées dans les comptes de l''entreprise, concernant des immobilisations corporelles.'),


--616

--617
4851 Créances, en compte, immobilisation incorporelles
4852 Créances, en compte, immobilisation corporelles
4856 Créances, immobilisation financières 
4857 Créances, retenues de garantie sur cession d''immobilisation 
4858 Créances sur cession d''immobilisations, facture à établir
(617, 'Créances, en compte, immobilisation incorporelles', '4851', 'Ce compte enregistre les créances sur des tiers pour des immobilisations incorporelles qui sont comptabilisées en compte.'),
(617, 'Créances, en compte, immobilisation corporelles', '4852', 'Ce compte enregistre les créances sur des tiers pour des immobilisations corporelles qui sont comptabilisées en compte.'),
(617, 'Créances, immobilisation financières', '4856', 'Ce compte enregistre les créances sur des tiers pour des immobilisations financières.'),
(617, 'Créances, retenues de garantie sur cession d''immobilisation', '4857', 'Ce compte enregistre les créances sur des tiers pour des retenues de garantie sur la cession d''immobilisation.'),
(617, 'Créances sur cession d''immobilisations, facture à établir', '4858', 'Ce compte enregistre les créances sur des tiers pour des cessions d''immobilisations pour lesquelles une facture doit encore être établie.'),


--618
4861 Dettes des dons et legs d''immobilisations
4865 Créances reçues sur dons et legs d''immobilisation
(618, 'Dettes des dons et legs d''immobilisations', '4861', 'Ce compte enregistre les dettes de l''entreprise liées aux dons et legs d''immobilisations qu''elle a reçus.'),
(618, 'Créances reçues sur dons et legs d''immobilisation', '4865', 'Ce compte enregistre les créances de l''entreprise découlant des dons et legs d''immobilisations qu''elle a reçus.'),

--619
4881 Créditeurs, dons en nature HAO non consommés
(619, 'Créditeurs, dons en nature HAO non consommés', '4881', 'Ce compte enregistre les montants dus par l''entreprise pour des dons en nature hors activités ordinaires (HAO) qui n''ont pas encore été consommés ou utilisés dans ses opérations courantes.'),

--620

--621
4911 Dépréciations des créances litigieuses 
4912 Dépréciations des créances douteuses
(621, 'Dépréciations des créances litigieuses', '4911', 'Ce compte enregistre les dépréciations comptables appliquées aux créances litigieuses, c''est-à-dire les montants estimés comme irrécouvrables en raison de litiges ou de contestations.'),
(621, 'Dépréciations des créances douteuses', '4912', 'Ce compte enregistre les dépréciations comptables appliquées aux créances douteuses, c''est-à-dire les montants estimés comme présentant un risque de non-paiement en raison de l''incertitude quant à la solvabilité du débiteur.'),

--622

--623

--624
--625

--626
4985 Dépréciations des créances sur cessions d''immobilisations
4988 Dépréciations des autres créances H.A.O.
(626, 'Dépréciations des créances sur cessions d''immobilisations', '4985', 'Ce compte enregistre les dépréciations comptables appliquées aux créances résultant de cessions d''immobilisations, c''est-à-dire les montants estimés comme irrécouvrables ou présentant un risque de non-paiement.'),
(626, 'Dépréciations des autres créances H.A.O.', '4988', 'Ce compte enregistre les dépréciations comptables appliquées aux autres créances hors activités ordinaires (H.A.O.), c''est-à-dire les montants estimés comme irrécouvrables ou présentant un risque de non-paiement, mais qui ne sont pas spécifiquement liés à des cessions d''immobilisations.'),


--627
4991 Provisions pour risques sur opérations d''exploitation
4998 Provisions pour risques sur opérations H.A.O.
(627, 'Provisions pour risques sur opérations d''exploitation', '4991', 'Ce compte enregistre les provisions comptables constituées pour couvrir les risques potentiels liés aux opérations d''exploitation de l''entreprise, tels que les litiges, les garanties ou les pertes sur créances.'),
(627, 'Provisions pour risques sur opérations H.A.O.', '4998', 'Ce compte enregistre les provisions comptables constituées pour couvrir les risques potentiels liés aux autres opérations hors activités ordinaires (H.A.O.) de l''entreprise, qui ne sont pas spécifiquement liés aux opérations d''exploitation.'),


--628
5011 Titres du Trésor à court terme
5012 Titres d''organismes financiers
5013 Bons de caisse à court terme
5016 Frais d''acquisition des titres de trésor et bons de caisse
(628, 'Titres du Trésor à court terme', '5011', 'Ce compte enregistre les investissements de l''entreprise dans des titres du Trésor à court terme, qui sont des titres de dette émis par le gouvernement et ayant une échéance de moins d''un an.'),
(628, 'Titres d''organismes financiers', '5012', 'Ce compte enregistre les investissements de l''entreprise dans des titres émis par des organismes financiers, tels que des obligations ou des actions, et ayant une échéance de moins d''un an.'),
(628, 'Bons de caisse à court terme', '5013', 'Ce compte enregistre les investissements de l''entreprise dans des bons de caisse à court terme, qui sont des titres de créance émis par des institutions financières et ayant une échéance de moins d''un an.'),
(628, 'Frais d''acquisition des titres de trésor et bons de caisse', '5016', 'Ce compte enregistre les frais d''acquisition supportés par l''entreprise lors de l''achat de titres du Trésor et de bons de caisse, tels que les commissions ou les frais de courtage.'),


--629
5022 Actions cotées
5023 Actions non cotées
5025 Autres actions
5026 Frais d''acquisition des obligations 
(629, 'Actions cotées', '5022', 'Ce compte enregistre les investissements de l''entreprise dans des actions cotées en bourse, c''est-à-dire des actions dont le cours est publié sur un marché financier.'),
(629, 'Actions non cotées', '5023', 'Ce compte enregistre les investissements de l''entreprise dans des actions non cotées en bourse, c''est-à-dire des actions qui ne sont pas négociées sur un marché financier public.'),
(629, 'Autres actions', '5025', 'Ce compte enregistre les investissements de l''entreprise dans d''autres types d''actions qui ne sont pas spécifiquement couverts par les comptes précédents.'),
(629, 'Frais d''acquisition des obligations', '5026', 'Ce compte enregistre les frais d''acquisition supportés par l''entreprise lors de l''achat d''obligations, tels que les commissions ou les frais de courtage.'),


--630
5032 Obligations cotées 
5033 Obligations non cotées
5035 Autres obligations 
5036 Frais d''acquisition d''obligations 
(630, 'Obligations cotées', '5032', 'Ce compte enregistre les investissements de l''entreprise dans des obligations cotées en bourse, c''est-à-dire des obligations dont le cours est publié sur un marché financier.'),
(630, 'Obligations non cotées', '5033', 'Ce compte enregistre les investissements de l''entreprise dans des obligations non cotées en bourse, c''est-à-dire des obligations qui ne sont pas négociées sur un marché financier public.'),
(630, 'Autres obligations', '5035', 'Ce compte enregistre les investissements de l''entreprise dans d''autres types d''obligations qui ne sont pas spécifiquement couverts par les comptes précédents.'),
(630, 'Frais d''acquisition d''obligations', '5036', 'Ce compte enregistre les frais d''acquisition supportés par l''entreprise lors de l''achat d''obligations, tels que les commissions ou les frais de courtage.'),


--631
5042 Bons de souscription d''actions
5043 Bons de souscription d''obligations
(631, 'Bons de souscription d''actions', '5042', 'Ce compte enregistre les bons de souscription d''actions émis par l''entreprise, qui donnent le droit à leur détenteur de souscrire à de nouvelles actions de l''entreprise à un prix prédéterminé.'),
(631, 'Bons de souscription d''obligations', '5043', 'Ce compte enregistre les bons de souscription d''obligations émis par l''entreprise, qui donnent le droit à leur détenteur de souscrire à de nouvelles obligations de l''entreprise à un prix prédéterminé.'),


--632

--633
5061 Titres du trésor et bons de caisse à court terme
5062 Actions
5063 Obligations
(633, 'Titres du trésor et bons de caisse à court terme', '5061', 'Ce compte regroupe les investissements de l''entreprise dans des titres du Trésor et des bons de caisse à court terme, représentant des instruments de placement à court terme émis par le gouvernement ou des institutions financières.'),
(633, 'Actions', '5062', 'Ce compte regroupe les investissements de l''entreprise dans des actions, représentant des parts de propriété dans des sociétés.'),
(633, 'Obligations', '5063', 'Ce compte regroupe les investissements de l''entreprise dans des obligations, représentant des titres de créance émis par des gouvernements, des sociétés ou d''autres entités.'),



--634
--635

--636



--637
--638
5185 Chèque de voyage 
5186 Coupons échus
5187 Intérêts échus des obligations
(638, 'Chèque de voyage', '5185', 'Ce compte enregistre les chèques de voyage détenus par l''entreprise, qui sont des instruments de paiement prépayés utilisés comme alternative aux espèces lors de voyages internationaux.'),
(638, 'Coupons échus', '5186', 'Ce compte enregistre les coupons échus, c''est-à-dire les intérêts qui n''ont pas été encaissés par les détenteurs d''obligations à leur date d''échéance.'),
(638, 'Intérêts échus des obligations', '5187', 'Ce compte enregistre les intérêts échus mais non encore payés sur les obligations détenues par l''entreprise, qui doivent être comptabilisés comme une charge à payer.'),


--639
5211 Banques en monnaie nationale
5215 Banques en devises 
(639, 'Banques en monnaie nationale', '5211', 'Ce compte enregistre les soldes détenus par l''entreprise dans des comptes bancaires libellés dans la monnaie nationale du pays.'),
(639, 'Banques en devises', '5215', 'Ce compte enregistre les soldes détenus par l''entreprise dans des comptes bancaires libellés dans des devises étrangères autres que la monnaie nationale.'),

--640

--641

--642

--643


--644
5261 Banque, intérêts courus charges à payer
5267 Banque, intérêts courus produits à recevoir
(644, 'Banque, intérêts courus charges à payer', '5261', 'Ce compte enregistre les intérêts sur des charges qui ont été accumulés mais qui n''ont pas encore été payés par l''entreprise.'),
(644, 'Banque, intérêts courus produits à recevoir', '5267', 'Ce compte enregistre les intérêts sur des produits qui ont été accumulés mais qui n''ont pas encore été reçus par l''entreprise.'),


--645

--646

--647

--648
5361 Etablissements financiers, intérêts courus charges à payer
5367 Etablissements financiers, intérêts courus produits à recevoir
(648, 'Etablissements financiers, intérêts courus charges à payer', '5361', 'Ce compte enregistre les intérêts sur des charges qui ont été accumulés mais qui n''ont pas encore été payés par l''entreprise auprès d''établissements financiers.'),
(648, 'Etablissements financiers, intérêts courus produits à recevoir', '5367', 'Ce compte enregistre les intérêts sur des produits qui ont été accumulés mais qui n''ont pas encore été reçus par l''entreprise de la part d''établissements financiers.'),

--649

--650

--651

--652

--653
--654

--655

--656

--657

--658

--659

--660

--661

--662

--663

--664

--665

--666

--667

--668
6011 Achats de biens et services liés à l''activité dans l''Etat partie
6012 Achats de biens et services liés à l''activité dans la Région
6013 Achats de biens et services liés à l''activité hors Région
6015 frais sur achats de biens et services liés à l''activité 
6019 Rabais, Remises et Ristournes obtenus (non ventilés),
(668, 'Achats de biens et services liés à l''activité dans l''Etat partie', '6011', 'Ce compte enregistre les dépenses d''achat de biens et services nécessaires à l''activité de l''entreprise réalisées dans l''État partie.'),
(668, 'Achats de biens et services liés à l''activité dans la Région', '6012', 'Ce compte enregistre les dépenses d''achat de biens et services nécessaires à l''activité de l''entreprise réalisées dans la région spécifiée.'),
(668, 'Achats de biens et services liés à l''activité hors Région', '6013', 'Ce compte enregistre les dépenses d''achat de biens et services nécessaires à l''activité de l''entreprise réalisées en dehors de la région spécifiée.'),
(668, 'Frais sur achats de biens et services liés à l''activité', '6015', 'Ce compte enregistre les frais associés aux achats de biens et services nécessaires à l''activité de l''entreprise, tels que les frais de transport, de manutention, etc.'),
(668, 'Rabais, Remises et Ristournes obtenus (non ventilés)', '6019', 'Ce compte enregistre les rabais, remises et ristournes obtenus par l''entreprise sur ses achats de biens et services, qui n''ont pas été ventilés dans des comptes spécifiques.'),


--669
6021 Achats de marchandises et matières premières dans l''Etat partie
6022 Achats de marchandises et matières premières dans la Région
6023 Achats de marchandises et matières premières hors Région
6025 frais sur achats (2) de marchandises et matière
6029 Rabais, Remises et Ristournes obtenus (non ventilés)
(669, 'Achats de marchandises et matières premières dans l''Etat partie', '6021', 'Ce compte enregistre les dépenses d''achat de marchandises et de matières premières réalisées dans l''État partie.'),
(669, 'Achats de marchandises et matières premières dans la Région', '6022', 'Ce compte enregistre les dépenses d''achat de marchandises et de matières premières réalisées dans la région spécifiée.'),
(669, 'Achats de marchandises et matières premières hors Région', '6023', 'Ce compte enregistre les dépenses d''achat de marchandises et de matières premières réalisées en dehors de la région spécifiée.'),
(669, 'Frais sur achats de marchandises et matières', '6025', 'Ce compte enregistre les frais associés aux achats de marchandises et de matières premières, tels que les frais de transport, de manutention, etc.'),
(669, 'Rabais, Remises et Ristournes obtenus (non ventilés)', '6029', 'Ce compte enregistre les rabais, remises et ristournes obtenus par l''entreprise sur ses achats de marchandises et matières premières, qui n''ont pas été ventilés dans des comptes spécifiques.'),


--670
6031 Variations des stocks de biens et services liés à l''activité
6032 Variations des stocks de marchandises
6033 Variations des stocks de matières premières et fournitures liées
6034 Variations des stocks d''autres approvisionnements 
6035 Variations de stocks de dons en nature à distribuer
(670, 'Variations des stocks de biens et services liés à l''activité', '6031', 'Ce compte enregistre les variations des stocks de biens et services nécessaires à l''activité de l''entreprise.'),
(670, 'Variations des stocks de marchandises', '6032', 'Ce compte enregistre les variations des stocks de marchandises détenues par l''entreprise.'),
(670, 'Variations des stocks de matières premières et fournitures liées', '6033', 'Ce compte enregistre les variations des stocks de matières premières et de fournitures liées utilisées par l''entreprise.'),
(670, 'Variations des stocks d''autres approvisionnements', '6034', 'Ce compte enregistre les variations des stocks d''autres types d''approvisionnements détenus par l''entreprise.'),
(670, 'Variations de stocks de dons en nature à distribuer', '6035', 'Ce compte enregistre les variations des stocks de dons en nature à distribuer, c''est-à-dire les biens donnés à l''entreprise mais pas encore distribués.'),



--671
6041 Matières consommables
6042 Matières combustibles
6043 Produits d''entretien
6045 Frais sur achats matières et fournitures consommables
6046 Fournitures de magasin
6049 Rabais, Remises et Ristournes obtenus (non ventilés)
(671, 'Matières consommables', '6041', 'Ce compte enregistre les achats de matières consommables utilisées dans le processus de production ou dans d''autres activités de l''entreprise.'),
(671, 'Matières combustibles', '6042', 'Ce compte enregistre les achats de matières combustibles utilisées dans le processus de production ou dans d''autres activités de l''entreprise.'),
(671, 'Produits d''entretien', '6043', 'Ce compte enregistre les achats de produits d''entretien utilisés pour maintenir les installations et l''équipement de l''entreprise en bon état de fonctionnement.'),
(671, 'Frais sur achats matières et fournitures consommables', '6045', 'Ce compte enregistre les frais associés aux achats de matières et de fournitures consommables, tels que les frais de transport, de manutention, etc.'),
(671, 'Fournitures de magasin', '6046', 'Ce compte enregistre les achats de fournitures de magasin utilisées pour soutenir les opérations quotidiennes de l''entreprise, telles que les fournitures de bureau, les fournitures de nettoyage, etc.'),
(671, 'Rabais, Remises et Ristournes obtenus (non ventilés)', '6049', 'Ce compte enregistre les rabais, remises et ristournes obtenus par l''entreprise sur ses achats de matières et fournitures, qui n''ont pas été ventilés dans des comptes spécifiques.'),


--672
6051 Fournitures non stockables-Eau
6052 Fournitures non stockables-Electricité
6053 Fournitures non stockables-Autres énergies
6054 Fournitures d''entretien non stockables
6055 Fournitures de bureau non stockables
6056 Achat de petit matériel et outillage
6057 Achats d''études et prestations de services
6058 Achats de travaux, matériels et équipements
6059 Rabais, Remises et Ristournes obtenus (non ventilés)
(672, 'Fournitures non stockables-Eau', '6051', 'Ce compte enregistre les achats de fournitures non stockables liées à l''eau, telles que les frais d''approvisionnement en eau.'),
(672, 'Fournitures non stockables-Electricité', '6052', 'Ce compte enregistre les achats de fournitures non stockables liées à l''électricité, telles que les frais d''approvisionnement en électricité.'),
(672, 'Fournitures non stockables-Autres énergies', '6053', 'Ce compte enregistre les achats de fournitures non stockables liées à d''autres formes d''énergie, telles que le gaz, le fioul, etc.'),
(672, 'Fournitures d''entretien non stockables', '6054', 'Ce compte enregistre les achats de fournitures d''entretien non stockables utilisées pour maintenir les installations et l''équipement de l''entreprise en bon état de fonctionnement.'),
(672, 'Fournitures de bureau non stockables', '6055', 'Ce compte enregistre les achats de fournitures de bureau non stockables utilisées pour soutenir les opérations quotidiennes de l''entreprise.'),
(672, 'Achat de petit matériel et outillage', '6056', 'Ce compte enregistre les achats de petit matériel et d''outillage utilisés dans le processus de production ou dans d''autres activités de l''entreprise.'),
(672, 'Achats d''études et prestations de services', '6057', 'Ce compte enregistre les achats de services d''études et de prestations de services externes réalisés par l''entreprise.'),
(672, 'Achats de travaux, matériels et équipements', '6058', 'Ce compte enregistre les achats de travaux, de matériels et d''équipements réalisés par l''entreprise pour ses activités.'),
(672, 'Rabais, Remises et Ristournes obtenus (non ventilés)', '6059', 'Ce compte enregistre les rabais, remises et ristournes obtenus par l''entreprise sur ses achats de fournitures et prestations de services, qui n''ont pas été ventilés dans des comptes spécifiques.'),


--673
6061 Billetteries
6062 Tombola et autres jeux
6063 Bons d''achats
6064 Voyages et sorties
6068 Autres activités
(673, 'Billetteries', '6061', 'Ce compte enregistre les achats de billets pour des événements ou des transports.'),
(673, 'Tombola et autres jeux', '6062', 'Ce compte enregistre les achats de billets ou de fournitures pour des jeux de hasard ou des loteries.'),
(673, 'Bons d''achats', '6063', 'Ce compte enregistre les achats de bons d''achats utilisés pour des récompenses, des cadeaux ou des promotions.'),
(673, 'Voyages et sorties', '6064', 'Ce compte enregistre les achats liés aux voyages et sorties d''entreprise.'),
(673, 'Autres activités', '6068', 'Ce compte regroupe les achats liés à d''autres activités non spécifiquement couvertes par les comptes précédents.'),


--674
6081 Emballages perdus
6082 Emballages récupérables non identifiables
6083 Emballages à usage mixte
6085 Frais sur achats(2) d''emballages
6089 Rabais, Remises et Ristournes obtenus (non ventilés)
(674, 'Emballages perdus', '6081', 'Ce compte enregistre les achats d''emballages qui sont perdus ou endommagés pendant le processus de production ou de transport.'),
(674, 'Emballages récupérables non identifiables', '6082', 'Ce compte enregistre les achats d''emballages qui peuvent être récupérés mais dont l''identification précise n''est pas possible.'),
(674, 'Emballages à usage mixte', '6083', 'Ce compte enregistre les achats d''emballages qui peuvent être utilisés à des fins multiples.'),
(674, 'Frais sur achats d''emballages', '6085', 'Ce compte enregistre les frais associés aux achats d''emballages, tels que les frais de transport, de manutention, etc.'),
(674, 'Rabais, Remises et Ristournes obtenus (non ventilés)', '6089', 'Ce compte enregistre les rabais, remises et ristournes obtenus par l''entreprise sur ses achats d''emballages, qui n''ont pas été ventilés dans des comptes spécifiques.'),


--675

--676

--677

--678
6181 Voyages et déplacements 
6183 Transports administratifs
(678, 'Voyages et déplacements', '6181', 'Ce compte enregistre les dépenses liées aux voyages et déplacements des employés de l''entreprise pour des missions professionnelles.'),
(678, 'Transports administratifs', '6183', 'Ce compte enregistre les dépenses liées aux transports administratifs effectués par l''entreprise, tels que les déplacements pour des réunions ou des visites de clients.'),


--679

--680

--681
6221 Locations de terrains
6222 Locations de bâtiments
6223 Locations de matériels et outillage
6224 Malis sur emballages
6225 Locations d''emballages
6226 Fermages et loyers du foncier
6228 Locations et charges locatives diverses
(681, 'Locations de terrains', '6221', 'Ce compte enregistre les dépenses liées à la location de terrains pour une période déterminée.'),
(681, 'Locations de bâtiments', '6222', 'Ce compte enregistre les dépenses liées à la location de bâtiments pour une période déterminée.'),
(681, 'Locations de matériels et outillage', '6223', 'Ce compte enregistre les dépenses liées à la location de matériels et d''outillage pour une période déterminée.'),
(681, 'Malis sur emballages', '6224', 'Ce compte enregistre les pertes sur les emballages loués.'),
(681, 'Locations d''emballages', '6225', 'Ce compte enregistre les dépenses liées à la location d''emballages pour une période déterminée.'),
(681, 'Fermages et loyers du foncier', '6226', 'Ce compte enregistre les dépenses liées à la location de terrains agricoles (fermages) ou de biens fonciers (loyers).'),
(681, 'Locations et charges locatives diverses', '6228', 'Ce compte enregistre les dépenses liées à d''autres types de locations et de charges locatives qui ne sont pas spécifiquement couvertes par les comptes précédents.'),


--682
6232 Crédit-bail immobilier
6233 Crédit-bail mobilier
6234 Location-vente
6238 Autres contrats de location-acquisition
(682, 'Crédit-bail immobilier', '6232', 'Ce compte enregistre les dépenses liées aux contrats de crédit-bail immobilier, où une entreprise loue un bien immobilier avec une option d''achat à la fin du contrat.'),
(682, 'Crédit-bail mobilier', '6233', 'Ce compte enregistre les dépenses liées aux contrats de crédit-bail mobilier, où une entreprise loue des biens mobiliers avec une option d''achat à la fin du contrat.'),
(682, 'Location-vente', '6234', 'Ce compte enregistre les dépenses liées aux contrats de location-vente, où une entreprise loue un bien avec l''intention de l''acheter à la fin du contrat.'),
(682, 'Autres contrats de location-acquisition', '6238', 'Ce compte enregistre les dépenses liées à d''autres types de contrats de location-acquisition qui ne sont pas spécifiquement couverts par les comptes précédents.'),


--683
6241 Entretien et répartition des biens immobiliers
6242 Entretien et répartition des biens mobiliers
6243 Maintenance
6244 Charges de démantèlement et remise en état
6248 Autres entretiens et répartitions
(683, 'Entretien et répartition des biens immobiliers', '6241', 'Ce compte enregistre les dépenses liées à l''entretien et à la réparation des biens immobiliers de l''entreprise, tels que les bâtiments et les terrains.'),
(683, 'Entretien et répartition des biens mobiliers', '6242', 'Ce compte enregistre les dépenses liées à l''entretien et à la réparation des biens mobiliers de l''entreprise, tels que le matériel et les équipements.'),
(683, 'Maintenance', '6243', 'Ce compte enregistre les dépenses liées à la maintenance préventive et corrective des équipements et des installations de l''entreprise.'),
(683, 'Charges de démantèlement et remise en état', '6244', 'Ce compte enregistre les charges liées au démantèlement et à la remise en état des biens de l''entreprise à la fin de leur cycle de vie.'),
(683, 'Autres entretiens et répartitions', '6248', 'Ce compte enregistre les dépenses liées à d''autres types d''entretiens et de réparations qui ne sont pas spécifiquement couverts par les comptes précédents.'),


--684
6251 Assurances multirisques
6252 Assurances matériel de transport
6253 Assurances risques d''exploitation
6258 Autres primes d''assurances
(684, 'Assurances multirisques', '6251', 'Ce compte enregistre les primes d''assurance pour une police d''assurance multirisque, qui couvre plusieurs types de risques.'),
(684, 'Assurances matériel de transport', '6252', 'Ce compte enregistre les primes d''assurance pour le matériel de transport de l''entreprise, tels que les véhicules et les machines.'),
(684, 'Assurances risques d''exploitation', '6253', 'Ce compte enregistre les primes d''assurance pour les risques liés à l''exploitation de l''entreprise, tels que les pertes d''exploitation et les responsabilités civiles.'),
(684, 'Autres primes d''assurances', '6258', 'Ce compte enregistre les primes d''assurance pour d''autres types de risques qui ne sont pas spécifiquement couverts par les comptes précédents.');


--685
6261 Etudes et recherches
6265 Documentation générale
6266 Documentation technique
(685, 'Etudes et recherches', '6261', 'Ce compte enregistre les dépenses liées aux études et aux recherches menées par l''entreprise pour développer de nouveaux produits ou améliorer ses processus.'),
(685, 'Documentation générale', '6265', 'Ce compte enregistre les dépenses liées à la documentation générale de l''entreprise, telle que la création et la gestion de documents administratifs.'),
(685, 'Documentation technique', '6266', 'Ce compte enregistre les dépenses liées à la documentation technique de l''entreprise, telle que la création de manuels d''utilisation et de guides techniques.');


--686
6271 Annonces, insertions
6272 Catalogues, imprimés publicitaires
6273 Congrès, universités et assimilés 
6274 Manifestations 
6275 Publications 
6277 Frais de colloques, séminaires, conférences
6278 Autres charges de publicité et relations publiques 
(686, 'Annonces, insertions', '6271', 'Ce compte enregistre les dépenses liées aux annonces et aux insertions publicitaires dans les médias.'),
(686, 'Catalogues, imprimés publicitaires', '6272', 'Ce compte enregistre les dépenses liées à la création et à la diffusion de catalogues et d''imprimés publicitaires.'),
(686, 'Congrès, universités et assimilés', '6273', 'Ce compte enregistre les dépenses liées à la participation à des congrès, des universités et des événements similaires.'),
(686, 'Manifestations', '6274', 'Ce compte enregistre les dépenses liées à l''organisation de manifestations, telles que des salons professionnels et des expositions.'),
(686, 'Publications', '6275', 'Ce compte enregistre les dépenses liées à la publication de documents promotionnels, tels que des brochures et des dépliants.'),
(686, 'Frais de colloques, séminaires, conférences', '6277', 'Ce compte enregistre les frais liés à la participation à des colloques, des séminaires et des conférences.'),
(686, 'Autres charges de publicité et relations publiques', '6278', 'Ce compte enregistre d''autres charges liées à la publicité et aux relations publiques qui ne sont pas spécifiquement couvertes par les comptes précédents.'),


--687
6281 Frais de téléphone 
6283 Frais de télécopie
6284 Frais d''internet
6288 Autres frais de télécommunication 
(687, 'Frais de téléphone', '6281', 'Ce compte enregistre les frais liés aux communications téléphoniques de l''entreprise, y compris les abonnements et les frais d''utilisation.'),
(687, 'Frais de télécopie', '6283', 'Ce compte enregistre les frais liés à l''envoi et à la réception de télécopies par l''entreprise.'),
(687, 'Frais d''internet', '6284', 'Ce compte enregistre les frais liés à l''accès à Internet et aux services en ligne utilisés par l''entreprise.'),
(687, 'Autres frais de télécommunication', '6288', 'Ce compte enregistre d''autres frais liés aux communications et aux télécommunications qui ne sont pas spécifiquement couverts par les comptes précédents.'),


--688
6311 Frais sur titres (vente, garde)
6312 Frais sur effets
6313 Locations de coffres
6315 Commissions sur cartes de crédit
6316 Frais d''émission d''emprunts
6317 Frais sur instruments de monnaie électronique
6318 Autres frais bancaires
(688, 'Frais sur titres (vente, garde)', '6311', 'Ce compte enregistre les frais liés à la vente et à la garde de titres, tels que les frais de courtage et les frais de garde.'),
(688, 'Frais sur effets', '6312', 'Ce compte enregistre les frais liés aux effets financiers, tels que les frais de traitement des chèques et des virements.'),
(688, 'Locations de coffres', '6313', 'Ce compte enregistre les frais liés à la location de coffres-forts pour le stockage de biens de valeur.'),
(688, 'Commissions sur cartes de crédit', '6315', 'Ce compte enregistre les commissions payées par l''entreprise pour l''utilisation de cartes de crédit dans ses transactions.'),
(688, 'Frais d''émission d''emprunts', '6316', 'Ce compte enregistre les frais liés à l''émission d''emprunts, tels que les frais de dossier et les frais de placement.'),
(688, 'Frais sur instruments de monnaie électronique', '6317', 'Ce compte enregistre les frais liés à l''utilisation d''instruments de monnaie électronique, tels que les frais de traitement des paiements électroniques.'),
(688, 'Autres frais bancaires', '6318', 'Ce compte enregistre d''autres frais bancaires qui ne sont pas spécifiquement couverts par les comptes précédents.'),


--689
6322 Commissions 
6324 Honoraires des professions règlementées
6325 Frais d''actes et de contentieux
6327 Rémunérations des autres prestataires de services
6328 Divers frais
(689, 'Commissions', '6322', 'Ce compte enregistre les commissions payées par l''entreprise pour divers services, tels que les commissions sur les ventes ou les commissions de courtage.'),
(689, 'Honoraires des professions règlementées', '6324', 'Ce compte enregistre les honoraires versés aux professions réglementées, telles que les honoraires des avocats, des experts-comptables, etc.'),
(689, 'Frais d''actes et de contentieux', '6325', 'Ce compte enregistre les frais liés aux actes juridiques et aux procédures contentieuses, tels que les frais de notaire et les frais de justice.'),
(689, 'Rémunérations des autres prestataires de services', '6327', 'Ce compte enregistre les rémunérations versées à d''autres prestataires de services qui ne sont pas spécifiquement couverts par les comptes précédents.'),
(689, 'Divers frais', '6328', 'Ce compte enregistre les frais divers qui ne sont pas spécifiquement couverts par les comptes précédents.'),


--690

--691
6342 Redevances pour brevets, licences
6343 Redevances pour logiciels
6345 Redevances pour sites internet
6346 Redevances pour concessions, droits et valeurs similaires
6248 Autres redevances
(691, 'Redevances pour brevets, licences', '6342', 'Ce compte enregistre les redevances payées pour l''utilisation de brevets et de licences.'),
(691, 'Redevances pour logiciels', '6343', 'Ce compte enregistre les redevances payées pour l''utilisation de logiciels.'),
(691, 'Redevances pour sites internet', '6345', 'Ce compte enregistre les redevances payées pour l''utilisation de sites internet.'),
(691, 'Redevances pour concessions, droits et valeurs similaires', '6346', 'Ce compte enregistre les redevances payées pour l''utilisation de concessions, de droits et de valeurs similaires.'),
(691, 'Autres redevances', '6248', 'Ce compte enregistre d''autres types de redevances qui ne sont pas spécifiquement couverts par les comptes précédents.'),


--692
6351 Cotisations
6358 Concours divers
(692, 'Cotisations', '6351', 'Ce compte enregistre les cotisations versées, telles que les cotisations sociales ou les cotisations syndicales.'),
(692, 'Concours divers', '6358', 'Ce compte enregistre les frais de participation à des concours et compétitions divers.'),


--693

--694
6371 Personnel intérimaire
6372 Personnel détaché ou prêté à l''entité
(694, 'Personnel intérimaire', '6371', 'Ce compte enregistre les dépenses liées au personnel intérimaire, c''est-à-dire les travailleurs temporaires embauchés pour une période déterminée.'),
(694, 'Personnel détaché ou prêté à l''entité', '6372', 'Ce compte enregistre les dépenses liées au personnel détaché ou prêté à l''entité, c''est-à-dire les employés mis à disposition par une autre entité ou entreprise.'),


--695
6381 Frais de recrutement du personnel
6382 Frais de déménagement
6383 Réceptions
6384 Missions
6385 Charges de copropriété
6388 Charges externes diverses
(695, 'Frais de recrutement du personnel', '6381', 'Ce compte enregistre les frais liés au recrutement du personnel, tels que les honoraires des agences de recrutement ou les frais de publicité pour les postes vacants.'),
(695, 'Frais de déménagement', '6382', 'Ce compte enregistre les frais liés au déménagement du personnel, tels que les frais de transport ou les frais de logement temporaires.'),
(695, 'Réceptions', '6383', 'Ce compte enregistre les frais liés à l''organisation de réceptions, tels que les frais de restauration ou les frais de location de salles.'),
(695, 'Missions', '6384', 'Ce compte enregistre les frais liés aux missions professionnelles effectuées par le personnel, tels que les frais de déplacement ou les frais de subsistance.'),
(695, 'Charges de copropriété', '6385', 'Ce compte enregistre les charges liées à la copropriété des locaux utilisés par l''entreprise, telles que les frais d''entretien des parties communes ou les frais de gestion de la copropriété.'),
(695, 'Charges externes diverses', '6388', 'Ce compte enregistre les autres charges externes qui ne sont pas spécifiquement couvertes par les comptes précédents.'),


--696
6411 Impôts fonciers et taxes annexes
6412 Licences et taxes annexes
6413 Taxes sur appointements et salaires 
6414 Taxes d''apprentissage
6415 Formation professionnelle continue
6416 Patente ou contribution économique locale
6418 Autres impôts et taxes directs
(696, 'Impôts fonciers et taxes annexes', '6411', 'Ce compte enregistre les impôts fonciers et les taxes annexes payés sur les biens immobiliers de l''entreprise, tels que la taxe foncière.'),
(696, 'Licences et taxes annexes', '6412', 'Ce compte enregistre les frais de licences et les taxes annexes payés pour exercer certaines activités, telles que les licences commerciales ou les taxes professionnelles.'),
(696, 'Taxes sur appointements et salaires', '6413', 'Ce compte enregistre les taxes prélevées sur les appointements et les salaires versés aux employés, telles que les cotisations sociales ou les contributions à la sécurité sociale.'),
(696, 'Taxes d''apprentissage', '6414', 'Ce compte enregistre les taxes versées pour financer l''apprentissage, telles que la taxe d''apprentissage.'),
(696, 'Formation professionnelle continue', '6415', 'Ce compte enregistre les dépenses liées à la formation professionnelle continue des employés, telles que les frais de formation ou les frais de certification.'),
(696, 'Patente ou contribution économique locale', '6416', 'Ce compte enregistre les taxes locales payées pour exercer une activité économique, telles que la patente ou la contribution économique locale.'),
(696, 'Autres impôts et taxes directs', '6418', 'Ce compte enregistre les autres impôts et taxes directs qui ne sont pas spécifiquement couverts par les comptes précédents.'),


--697

--698
6461 Droits de mutation
6462 Droits de timbre
6464 Vignettes
6468 Autres droits d''enregistrement


--699
6471 Pénalités d''assiette, impôts directs
6472 Pénalités d''assiette, impôts indirects
6473 Pénalités de recouvrement, impôts directs 
6474 Pénalités de recouvrement, impôts indirects 
6478 Autres pénalités et amendes fiscales 
(699, 'Pénalités d''assiette, impôts directs', '6471', 'Ce compte enregistre les pénalités perçues sur les impôts directs en raison d''erreurs ou d''irrégularités dans l''assiette fiscale.'),
(699, 'Pénalités d''assiette, impôts indirects', '6472', 'Ce compte enregistre les pénalités perçues sur les impôts indirects en raison d''erreurs ou d''irrégularités dans l''assiette fiscale.'),
(699, 'Pénalités de recouvrement, impôts directs', '6473', 'Ce compte enregistre les pénalités perçues sur les impôts directs en raison de retards ou de défauts de paiement.'),
(699, 'Pénalités de recouvrement, impôts indirects', '6474', 'Ce compte enregistre les pénalités perçues sur les impôts indirects en raison de retards ou de défauts de paiement.'),
(699, 'Autres pénalités et amendes fiscales', '6478', 'Ce compte enregistre les autres pénalités et amendes fiscales qui ne sont pas spécifiquement couvertes par les comptes précédents.'),


--700


--701

--702
6511 Clients-usagers
6512 Adhérents
6515 Autres débiteurs
(702, 'Clients-usagers', '6511', 'Ce compte enregistre les montants dus par les clients ou usagers pour des biens ou services fournis par l''entreprise.'),
(702, 'Adhérents', '6512', 'Ce compte enregistre les montants dus par les adhérents ou membres pour des cotisations ou des frais associés à leur adhésion ou leur affiliation à l''entreprise.'),
(702, 'Autres débiteurs', '6515', 'Ce compte enregistre les montants dus par des tiers autres que les clients ou adhérents, tels que des avances ou des prêts accordés par l''entreprise.'),

--703

--704
6541 Dons en nature courant à distribuer non affectés
6545 Dons en nature courants à distribuer affectés
(704, 'Dons en nature courant à distribuer non affectés', '6541', 'Ce compte enregistre les dons en nature courants à distribuer qui ne sont pas spécifiquement affectés à une fin particulière.'),
(704, 'Dons en nature courants à distribuer affectés', '6545', 'Ce compte enregistre les dons en nature courants à distribuer qui sont spécifiquement affectés à une fin particulière.'),

--705

--706

--707
6591 Provisions sur risques à court terme
6593 Charges pour dépréciations sur stocks
6594 Charges pour dépréciations sur créances
6598 Autres charges pour dépréciations et provisions pour risques à court terme
(707, 'Provisions sur risques à court terme', '6591', 'Ce compte enregistre les provisions constituées par l''entreprise pour faire face à des risques identifiés à court terme.'),
(707, 'Charges pour dépréciations sur stocks', '6593', 'Ce compte enregistre les charges liées à la dépréciation des stocks de l''entreprise.'),
(707, 'Charges pour dépréciations sur créances', '6594', 'Ce compte enregistre les charges liées à la dépréciation des créances de l''entreprise.'),
(707, 'Autres charges pour dépréciations et provisions pour risques à court terme', '6598', 'Ce compte enregistre d''autres charges liées aux dépréciations et aux provisions pour risques à court terme qui ne sont pas spécifiquement couvertes par les comptes précédents.'),


--708
6611 Appointements salaires et commissions 
6612 Primes et gratifications
6613 Congés payés 
6614 Indemnités de préavis et de licenciement
6615 Indemnités de maladie versées aux travailleurs
6616 Supplément familial
6617 Avantages en nature
6618 Autres rémunérations directes
(708, 'Appointements salaires et commissions', '6611', 'Ce compte enregistre les dépenses liées aux salaires, appointements et commissions versés aux employés de l''entreprise.'),
(708, 'Primes et gratifications', '6612', 'Ce compte enregistre les dépenses liées aux primes et gratifications accordées aux employés de l''entreprise.'),
(708, 'Congés payés', '6613', 'Ce compte enregistre les dépenses liées aux congés payés accordés aux employés de l''entreprise.'),
(708, 'Indemnités de préavis et de licenciement', '6614', 'Ce compte enregistre les dépenses liées aux indemnités de préavis et de licenciement versées aux employés de l''entreprise.'),
(708, 'Indemnités de maladie versées aux travailleurs', '6615', 'Ce compte enregistre les dépenses liées aux indemnités de maladie versées aux travailleurs de l''entreprise.'),
(708, 'Supplément familial', '6616', 'Ce compte enregistre les dépenses liées au supplément familial versé aux employés de l''entreprise.'),
(708, 'Avantages en nature', '6617', 'Ce compte enregistre les dépenses liées aux avantages en nature fournis aux employés de l''entreprise.'),
(708, 'Autres rémunérations directes', '6618', 'Ce compte enregistre d''autres types de rémunérations directes versées aux employés de l''entreprise qui ne sont pas spécifiquement couverts par les comptes précédents.'),


--709
6621 Appointements salaires et commissions 
6622 Primes et gratifications
6623 Congés payés 
6624 Indemnités de préavis et de licenciement
6625 Indemnités de maladie versées aux travailleurs
6626 Supplément familial
6627 Avantages en nature
6628 Autres rémunérations directes
(709, 'Appointements salaires et commissions', '6621', 'Ce compte enregistre les dépenses liées aux salaires, appointements et commissions versés aux employés de l''entreprise.'),
(709, 'Primes et gratifications', '6622', 'Ce compte enregistre les dépenses liées aux primes et gratifications accordées aux employés de l''entreprise.'),
(709, 'Congés payés', '6623', 'Ce compte enregistre les dépenses liées aux congés payés accordés aux employés de l''entreprise.'),
(709, 'Indemnités de préavis et de licenciement', '6624', 'Ce compte enregistre les dépenses liées aux indemnités de préavis et de licenciement versées aux employés de l''entreprise.'),
(709, 'Indemnités de maladie versées aux travailleurs', '6625', 'Ce compte enregistre les dépenses liées aux indemnités de maladie versées aux travailleurs de l''entreprise.'),
(709, 'Supplément familial', '6626', 'Ce compte enregistre les dépenses liées au supplément familial versé aux employés de l''entreprise.'),
(709, 'Avantages en nature', '6627', 'Ce compte enregistre les dépenses liées aux avantages en nature fournis aux employés de l''entreprise.'),
(709, 'Autres rémunérations directes', '6628', 'Ce compte enregistre d''autres types de rémunérations directes versées aux employés de l''entreprise qui ne sont pas spécifiquement couverts par les comptes précédents.'),


--710
6631 Indemnités de logement
6632 Indemnités de représentation
6633 Indemnités d''expatriation
6634 Indemnités de transport
6638 Autres indemnités et avantages divers
(710, 'Indemnités de logement', '6631', 'Ce compte enregistre les dépenses liées aux indemnités de logement accordées aux employés de l''entreprise.'),
(710, 'Indemnités de représentation', '6632', 'Ce compte enregistre les dépenses liées aux indemnités de représentation accordées aux employés de l''entreprise.'),
(710, 'Indemnités d''expatriation', '6633', 'Ce compte enregistre les dépenses liées aux indemnités d''expatriation accordées aux employés de l''entreprise lorsqu''ils travaillent à l''étranger.'),
(710, 'Indemnités de transport', '6634', 'Ce compte enregistre les dépenses liées aux indemnités de transport accordées aux employés de l''entreprise.'),
(710, 'Autres indemnités et avantages divers', '6638', 'Ce compte enregistre d''autres types d''indemnités et d''avantages divers accordés aux employés de l''entreprise qui ne sont pas spécifiquement couverts par les comptes précédents.'),


--711
6641 Charges sociales sur rémunération du personnel national
6642 Charges sociales sur rémunération du personnel non national 
(711, 'Charges sociales sur rémunération du personnel national', '6641', 'Ce compte enregistre les charges sociales liées à la rémunération du personnel national de l''entreprise.'),
(711, 'Charges sociales sur rémunération du personnel non national', '6642', 'Ce compte enregistre les charges sociales liées à la rémunération du personnel non national de l''entreprise.'),


--712

--713
6671 Personnel intérimaire
6672 Personnel détaché ou prêté à l''entité
(713, 'Personnel intérimaire', '6671', 'Ce compte enregistre les dépenses liées au personnel intérimaire employé par l''entreprise.'),
(713, 'Personnel détaché ou prêté à l''entité', '6672', 'Ce compte enregistre les dépenses liées au personnel détaché ou prêté à l''entreprise par d''autres entités.'),


--714
6681 Versements aux syndicats et assimilés 
6682 Versements aux comités d''hygiène et de sécurité
6683 Versements et contributions aux autres œuvres sociales 
6684 Médecine du travail et pharmacie
6685 Assurances et organismes de santé
6686 Assurances retraite et fonds de pensions
6687 Majorations et pénalités sociales
6688 Charges sociales diverses
(714, 'Versements aux syndicats et assimilés', '6681', 'Ce compte enregistre les versements aux syndicats et autres organisations similaires.'),
(714, 'Versements aux comités d''hygiène et de sécurité', '6682', 'Ce compte enregistre les versements aux comités d''hygiène et de sécurité au travail.'),
(714, 'Versements et contributions aux autres œuvres sociales', '6683', 'Ce compte enregistre les versements et contributions aux autres œuvres sociales et activités connexes.'),
(714, 'Médecine du travail et pharmacie', '6684', 'Ce compte enregistre les dépenses liées aux services de médecine du travail et d''achat de médicaments.'),
(714, 'Assurances et organismes de santé', '6685', 'Ce compte enregistre les paiements relatifs aux assurances santé et aux organismes de santé.'),
(714, 'Assurances retraite et fonds de pensions', '6686', 'Ce compte enregistre les dépenses liées aux assurances retraite et aux fonds de pensions.'),
(714, 'Majorations et pénalités sociales', '6687', 'Ce compte enregistre les majorations et pénalités liées aux charges sociales.'),
(714, 'Charges sociales diverses', '6688', 'Ce compte enregistre les autres charges sociales qui ne sont pas spécifiquement couvertes par les comptes précédents.'),

--715

--716
6711 Emprunts obligataires
6712 Emprunts auprès des établissements de crédit
6713 Primes de remboursement des obligations
(716, 'Emprunts obligataires', '6711', 'Ce compte enregistre les emprunts contractés sous forme d''obligations.'),
(716, 'Emprunts auprès des établissements de crédit', '6712', 'Ce compte enregistre les emprunts contractés auprès des établissements de crédit.'),
(716, 'Primes de remboursement des obligations', '6713', 'Ce compte enregistre les primes de remboursement versées lors du remboursement anticipé des obligations.'),


--717
6721 Intérêts dans loyers de location-acquisition/crédit-bail immobilier
6722 Intérêts dans loyers de location-acquisition/crédit-bail mobilier
6723 Intérêts dans loyers de location-acquisition/location-vente
6724 Intérêts dans loyers des autres locations-acquisition
(717, 'Intérêts dans loyers de location-acquisition/crédit-bail immobilier', '6721', 'Ce compte enregistre les intérêts perçus sur les loyers de location-acquisition ou de crédit-bail immobilier.'),
(717, 'Intérêts dans loyers de location-acquisition/crédit-bail mobilier', '6722', 'Ce compte enregistre les intérêts perçus sur les loyers de location-acquisition ou de crédit-bail mobilier.'),
(717, 'Intérêts dans loyers de location-acquisition/location-vente', '6723', 'Ce compte enregistre les intérêts perçus sur les loyers de location-acquisition ou de location-vente.'),
(717, 'Intérêts dans loyers des autres locations-acquisition', '6724', 'Ce compte enregistre les intérêts perçus sur les loyers des autres contrats de location-acquisition.'),


--718

--719
6741 Avances reçues et dépôts créditeurs
6742 Comptes courants bloqués
6744 Intérêts sur dettes commerciales
6745 Intérêts bancaires et sur opérations de financement (escompte…)
6748 Intérêts sur dettes diverses
(719, 'Avances reçues et dépôts créditeurs', '6741', 'Ce compte enregistre les avances reçues et les dépôts créditeurs effectués par des tiers.'),
(719, 'Comptes courants bloqués', '6742', 'Ce compte enregistre les fonds détenus dans des comptes courants bloqués.'),
(719, 'Intérêts sur dettes commerciales', '6744', 'Ce compte enregistre les intérêts perçus sur les dettes commerciales.'),
(719, 'Intérêts bancaires et sur opérations de financement (escompte…)', '6745', 'Ce compte enregistre les intérêts perçus sur les opérations bancaires et de financement, y compris l''escompte.'),
(719, 'Intérêts sur dettes diverses', '6748', 'Ce compte enregistre les intérêts perçus sur d''autres types de dettes.'),


--720

--721
6771 Pertes sur cessions de titres de placement
(721, 'Pertes sur cessions de titres de placement', '6771', 'Ce compte enregistre les pertes résultant de la cession de titres de placement.'),


--722
6781 Sur rentes viagères
6782 sur opérations financières
(722, 'Sur rentes viagères', '6781', 'Ce compte enregistre les intérêts perçus sur les rentes viagères.'),
(722, 'Sur opérations financières', '6782', 'Ce compte enregistre les gains sur les opérations financières.'),

--723
6791 Sur risques financiers
6795 Sur titres de placement
6798 Autres charges pour dépréciations et provisions pour risques à court terme financières
(723, 'Sur risques financiers', '6791', 'Ce compte enregistre les charges liées aux risques financiers.');
(723, 'Sur titres de placement', '6795', 'Ce compte enregistre les charges liées aux dépréciations et provisions pour risques sur les titres de placement.'),
(723, 'Autres charges pour dépréciations et provisions pour risques à court terme financières', '6798', 'Ce compte enregistre d''autres charges pour dépréciations et provisions pour risques à court terme financières.'),


--724

--725
6812 Dotations aux amortissements des immobilisations incorporelles
6813 Dotations aux amortissements des immobilisations corporelles
(725, 'Dotations aux amortissements des immobilisations incorporelles', '6812', 'Ce compte enregistre les dotations aux amortissements des immobilisations incorporelles.'),
(725, 'Dotations aux amortissements des immobilisations corporelles', '6813', 'Ce compte enregistre les dotations aux amortissements des immobilisations corporelles.'),


--726
6911 Dotations aux provisions pour risques et charges
6913 Dotations aux dépréciations des immobilisations incorporelles
6914 Dotations aux dépréciations des immobilisations corporelles
(726, 'Dotations aux provisions pour risques et charges', '6911', 'Ce compte enregistre les dotations aux provisions pour risques et charges.'),
(726, 'Dotations aux dépréciations des immobilisations incorporelles', '6913', 'Ce compte enregistre les dotations aux dépréciations des immobilisations incorporelles.'),
(726, 'Dotations aux dépréciations des immobilisations corporelles', '6914', 'Ce compte enregistre les dotations aux dépréciations des immobilisations corporelles.'),


--727
6951 Dotations aux dépréciations d''usufruit temporaire
6952 Dotations aux dépréciations d''immobilisations destinées à la vente provenant des dons et legs non reçues
(727, 'Dotations aux dépréciations d''usufruit temporaire', '6951', 'Ce compte enregistre les dotations aux dépréciations d''usufruit temporaire.'),
(727, 'Dotations aux dépréciations d''immobilisations destinées à la vente provenant des dons et legs non reçues', '6952', 'Ce compte enregistre les dotations aux dépréciations d''immobilisations destinées à la vente provenant des dons et legs non reçues.'),


--728
6971 Dotations aux provisions pour risques et charges
6972 Dotations aux dépréciations des immobilisations financières
(728, 'Dotations aux provisions pour risques et charges', '6971', 'Ce compte enregistre les dotations aux provisions destinées à couvrir les risques et charges anticipés.'),
(728, 'Dotations aux dépréciations des immobilisations financières', '6972', 'Ce compte enregistre les dotations aux dépréciations des immobilisations financières, telles que les participations dans d''autres entreprises ou les titres de placement à long terme, afin de refléter leur valeur comptable réduite.'),


--729

--730

--731

--732
7041 Dons
7042 Legs
7043 Derniers du culte
7044 Zakat, Dîme, quête et assimilées
7045 Célébrations 
7046 Mécénats
7047 Parrainage
7048 Autres revenus liés à la générosité
(732, 'Dons', '7041', 'Ce compte enregistre les revenus provenant de dons volontaires faits à l''entreprise, généralement sans contrepartie directe.'),
(732, 'Legs', '7042', 'Ce compte enregistre les revenus provenant d''héritages légués à l''entreprise après le décès d''une personne.'),
(732, 'Dîmes du culte', '7043', 'Ce compte enregistre les revenus provenant des contributions régulières des fidèles à des institutions religieuses.'),
(732, 'Zakat, Dîme, quête et assimilées', '7044', 'Ce compte enregistre les revenus provenant de prélèvements religieux ou de contributions volontaires collectées à des fins religieuses.'),
(732, 'Célébrations', '7045', 'Ce compte enregistre les revenus générés par des événements ou des célébrations organisés par l''entreprise.'),
(732, 'Mécénats', '7046', 'Ce compte enregistre les revenus provenant de mécènes ou de sponsors qui soutiennent financièrement l''entreprise ou ses activités.'),
(732, 'Parrainage', '7047', 'Ce compte enregistre les revenus provenant de partenariats de parrainage ou de sponsoring entre l''entreprise et d''autres entités.'),
(732, 'Autres revenus liés à la générosité', '7048', 'Ce compte enregistre les autres revenus liés à la générosité qui ne sont pas spécifiquement couverts par les comptes précédents.'),

--733
7051 Ventes marchandises
7052 Services vendus
7053 Ventes de produits finis
7054 Ventes de produits intermédiaires
7055 Ventes de produits résiduels
(733, 'Ventes de marchandises', '7051', 'Ce compte enregistre les revenus générés par la vente de biens marchands, tels que des produits physiques ou des marchandises.'),
(733, 'Services vendus', '7052', 'Ce compte enregistre les revenus générés par la fourniture de services par l''entreprise à ses clients.'),
(733, 'Ventes de produits finis', '7053', 'Ce compte enregistre les revenus générés par la vente de produits finis fabriqués par l''entreprise.'),
(733, 'Ventes de produits intermédiaires', '7054', 'Ce compte enregistre les revenus générés par la vente de produits intermédiaires ou semi-finis fabriqués par l''entreprise et destinés à être utilisés comme matières premières par d''autres entreprises.'),
(733, 'Ventes de produits résiduels', '7055', 'Ce compte enregistre les revenus générés par la vente de produits résiduels ou dérivés issus des processus de production de l''entreprise.'),


--734

--735

--736
7081 Ventes de dons en nature
7082 Revenus d''usufruit
(736, 'Ventes de dons en nature', '7081', 'Ce compte enregistre les revenus générés par la vente de dons reçus sous forme de biens ou de produits.'),
(736, 'Revenus d''usufruit', '7082', 'Ce compte enregistre les revenus générés par la mise à disposition temporaire d''un bien ou d''un actif en échange d''un paiement régulier, tel que des loyers ou des redevances.'),

--737

--738

--739

--740

--741

--742

--743

--744

--745

--746

--747

--748
7542 Dons en nature courants reçus à distribuer
(748, 'Dons en nature courants reçus à distribuer', '7542', 'Ce compte enregistre les dons en nature courants reçus par l''entreprise et destinés à être distribués à des tiers.'),


--749
7582 Indemnités d''assurances reçues
7583 Abandons de frais par les bénévoles
7588 Autres produits divers
(749, 'Indemnités d''assurances reçues', '7582', 'Ce compte enregistre les indemnités d''assurances reçues par l''entreprise en compensation de pertes ou de dommages couverts par une police d''assurance.'),
(749, 'Abandons de frais par les bénévoles', '7583', 'Ce compte enregistre les abandons de frais consentis par des bénévoles à l''entreprise.'),
(749, 'Autres produits divers', '7588', 'Ce compte enregistre les autres produits divers qui ne sont pas spécifiquement couverts par les comptes précédents.'),


--750
7591 Reprises provisions sur risques à court terme
7593 Reprises de charges pour dépréciations sur stocks
7594 Reprises de charges pour dépréciations sur créances
7598 Autres reprises de charges pour dépréciations et provisions pour risques à court terme d''exploitation
(750, 'Reprises provisions sur risques à court terme', '7591', 'Ce compte enregistre les reprises de provisions sur risques à court terme précédemment constituées.'),
(750, 'Reprises de charges pour dépréciations sur stocks', '7593', 'Ce compte enregistre les reprises de charges pour dépréciations sur stocks précédemment constatées.'),
(750, 'Reprises de charges pour dépréciations sur créances', '7594', 'Ce compte enregistre les reprises de charges pour dépréciations sur créances précédemment constatées.'),
(750, 'Autres reprises de charges pour dépréciations et provisions pour risques à court terme d''exploitation', '7598', 'Ce compte enregistre les autres reprises de charges pour dépréciations et provisions pour risques à court terme d''exploitation qui ne sont pas spécifiquement couvertes par les comptes précédents.'),


--751
7712 Intérêts de prêts
7713 Intérêts sur créances diverses
(751, 'Intérêts de prêts', '7712', 'Ce compte enregistre les intérêts perçus sur les prêts accordés par l''entreprise.'),
(751, 'Intérêts sur créances diverses', '7713', 'Ce compte enregistre les intérêts perçus sur les créances diverses détenues par l''entreprise.'),


--752
7721 Revenus des titres de participation
7722 Revenus autres titres immobilisés
(752, 'Revenus des titres de participation', '7721', 'Ce compte enregistre les revenus provenant des titres de participation détenus par l''entreprise.'),
(752, 'Revenus autres titres immobilisés', '7722', 'Ce compte enregistre les revenus provenant d''autres titres immobilisés détenus par l''entreprise.'),


--753

--754
7745 Revenus des obligations 
7746 Revenus des titres de placement
7747 Revenus des dépôts à terme et opérations assimilés
7748 Autres revenus de placement
(754, 'Revenus des obligations', '7745', 'Ce compte enregistre les revenus provenant des obligations détenues par l''entreprise.'),
(754, 'Revenus des titres de placement', '7746', 'Ce compte enregistre les revenus provenant des titres de placement détenus par l''entreprise.'),
(754, 'Revenus des dépôts à terme et opérations assimilés', '7747', 'Ce compte enregistre les revenus provenant des dépôts à terme et des opérations assimilées détenus par l''entreprise.'),
(754, 'Autres revenus de placement', '7748', 'Ce compte enregistre les autres revenus de placement générés par l''entreprise.'),


--755

--756

--757
7781 Gains sur rentes viagères
7782 Gains sur opérations financières
(757, 'Gains sur rentes viagères', '7781', 'Ce compte enregistre les gains réalisés sur les rentes viagères détenues par l''entreprise.'),
(757, 'Gains sur opérations financières', '7782', 'Ce compte enregistre les gains réalisés sur les opérations financières effectuées par l''entreprise.'),


--758
7791 Reprises de provisions sur risques financiers
7795 Reprises de charges pour dépréciations sur titres de placement
7798 Autre reprises de charges pour dépréciations et provisions pour risques à court terme financières
(758, 'Reprises de provisions sur risques financiers', '7791', 'Ce compte enregistre les reprises de provisions sur les risques financiers précédemment constituées par l''entreprise.'),
(758, 'Reprises de charges pour dépréciations sur titres de placement', '7795', 'Ce compte enregistre les reprises de charges pour dépréciations sur les titres de placement précédemment constatées par l''entreprise.'),
(758, 'Autre reprises de charges pour dépréciations et provisions pour risques à court terme financières', '7798', 'Ce compte enregistre d''autres reprises de charges pour dépréciations et provisions pour risques à court terme financières.'),


--759

--760

--761
7911 Reprises de provision pour risques et charges
7913 Reprises de dépréciations des immobilisations incorporelles
7914 Reprises de dépréciations des immobilisations corporelles
(761, 'Reprises de provision pour risques et charges', '7911', 'Ce compte enregistre les reprises de provisions pour risques et charges précédemment constituées par l''entreprise.'),
(761, 'Reprises de dépréciations des immobilisations incorporelles', '7913', 'Ce compte enregistre les reprises de dépréciations des immobilisations incorporelles précédemment constatées par l''entreprise.'),
(761, 'Reprises de dépréciations des immobilisations corporelles', '7914', 'Ce compte enregistre les reprises de dépréciations des immobilisations corporelles précédemment constatées par l''entreprise.'),




--762
7923 Reprises de fonds affectés et provenant de dons et legs d''immobilisation
7925 Reprises de fonds affectés à un projet spécifique
7928 Autres reprises de fonds affectés 
(762, 'Reprises de fonds affectés et provenant de dons et legs d''immobilisation', '7923', 'Ce compte enregistre les reprises de fonds affectés et provenant de dons et legs d''immobilisation précédemment constatées par l''entreprise.'),
(762, 'Reprises de fonds affectés à un projet spécifique', '7925', 'Ce compte enregistre les reprises de fonds affectés à un projet spécifique précédemment constatées par l''entreprise.'),
(762, 'Autres reprises de fonds affectés', '7928', 'Ce compte enregistre les autres reprises de fonds affectés précédemment constatées par l''entreprise.'),


--763
7951 Reprises des dépréciations d''usufruit temporaire
7952 Reprises des dépréciations d''immobilisation reçues destinées à la vente provenant des dons et legs
(763, 'Reprises des dépréciations d''usufruit temporaire', '7951', 'Ce compte enregistre les reprises des dépréciations précédemment constatées sur l''usufruit temporaire par l''entreprise.'),
(763, 'Reprises des dépréciations d''immobilisation reçues destinées à la vente provenant des dons et legs', '7952', 'Ce compte enregistre les reprises des dépréciations précédemment constatées sur les immobilisations destinées à la vente provenant des dons et legs par l''entreprise.'),


--764
7961 Reprises de fonds reportés provenant de la donation temporaire d''usufruit
7962 Reprises de fonds reportés provenant de dons et legs d''immobilisations reçues destinés à la vente
7968 Autres reprises de fonds reporté 
(764, 'Reprises de fonds reportés provenant de la donation temporaire d''usufruit', '7961', 'Ce compte enregistre les reprises des fonds reportés provenant de la donation temporaire d''usufruit par l''entreprise.'),
(764, 'Reprises de fonds reportés provenant de dons et legs d''immobilisations reçues destinés à la vente', '7962', 'Ce compte enregistre les reprises des fonds reportés provenant de dons et legs d''immobilisations reçues destinés à la vente par l''entreprise.'),
(764, 'Autres reprises de fonds reporté', '7968', 'Ce compte enregistre les autres reprises de fonds reportés par l''entreprise.'),


--765
7971 Reprises de provisions pour risques et charges
7972 Reprises de dépréciations des immobilisations financières
(765, 'Reprises de provisions pour risques et charges', '7971', 'Ce compte enregistre les reprises de provisions pour risques et charges par l''entreprise.'),
(765, 'Reprises de dépréciations des immobilisations financières', '7972', 'Ce compte enregistre les reprises de dépréciations des immobilisations financières par l''entreprise.'),


--766

--767

--768

--769

--770

--771

--772

--773

--774

--775

--776

--777
8311 Dons en nature H.A.O. non affectés 
8315 Dons en nature H.A.O. affectés 
(777, 'Dons en nature H.A.O. non affectés', '8311', 'Ce compte enregistre les dons en nature non affectés à des fins spécifiques par l''entreprise.'),
(777, 'Dons en nature H.A.O. affectés', '8315', 'Ce compte enregistre les dons en nature affectés à des fins spécifiques par l''entreprise.'),


--778

--779

--780

--781

--782

--783
8411 Dons en nature HAO vendus
8412 Prestations de services en nature HAO
8415 Dons en nature HAO à distribuer
(783, 'Dons en nature HAO vendus', '8411', 'Ce compte enregistre les dons en nature HAO vendus par l''entreprise.'),
(783, 'Prestations de services en nature HAO', '8412', 'Ce compte enregistre les prestations de services en nature HAO fournies par l''entreprise.'),
(783, 'Dons en nature HAO à distribuer', '8415', 'Ce compte enregistre les dons en nature HAO à distribuer par l''entreprise.'),


--784

--785

--786

--787

--788

--789

--790

--791

--792

--793

--794

--795

--796

--797

--798

--799

--800

--801

--802

--803

--804

--805

--806

--807





----------------------------- REQUEST TO GET ALL ELEMENT BY THE : TYPECLASSE------------------------------------------
SELECT * FROM classes_comptes WHERE typesclasse_id = 1;


SELECT comptes.*
FROM comptes
JOIN classes_comptes ON comptes.classes_comptes_id = classes_comptes.id
JOIN typesclasse ON classes_comptes.typesclasse_id = typesclasse.id
WHERE typesclasse.id = 1;


SELECT sous_comptes.*
FROM sous_comptes
JOIN comptes ON sous_comptes.comptes_id = comptes.id
JOIN classes_comptes ON comptes.classes_comptes_id = classes_comptes.id
JOIN typesclasse ON classes_comptes.typesclasse_id = typesclasse.id
WHERE typesclasse.id = 1;


SELECT comptes_inf.*
FROM comptes_inf
JOIN sous_comptes ON comptes_inf.sous_comptes_id = sous_comptes.id
JOIN comptes ON sous_comptes.comptes_id = comptes.id
JOIN classes_comptes ON comptes.classes_comptes_id = classes_comptes.id
JOIN typesclasse ON classes_comptes.typesclasse_id = typesclasse.id
WHERE typesclasse.id = 1;


SELECT *, 'comptes_inf' AS table_name FROM comptes_inf WHERE name LIKE '%${detail}%' OR nbr LIKE '%${detail}%' ORDER BY id ASC;` }