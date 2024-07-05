psql -h localhost -U toli8447_lionel -d toli8447_comptaplan


CREATE TABLE typesclasse (
  id SERIAL PRIMARY KEY,
  name VARCHAR
);

CREATE TABLE classes_comptes (
  id SERIAL PRIMARY KEY,
  typesclasse_id INT,
  nbr VARCHAR,
  name VARCHAR,
  description VARCHAR,
  CONSTRAINT fk_typesclasse
      FOREIGN KEY (typesclasse_id)
      REFERENCES typesclasse (id)
      ON DELETE SET NULL
);

CREATE TABLE comptes (
  id SERIAL PRIMARY KEY,
  classes_comptes_id INT,
  name VARCHAR,
  nbr VARCHAR,
  description VARCHAR,
  CONSTRAINT fk_classes_comptes
      FOREIGN KEY (classes_comptes_id)
      REFERENCES classes_comptes (id)
      ON DELETE SET NULL
);

CREATE TABLE sous_comptes (
  id SERIAL PRIMARY KEY,
  comptes_id INT,
  name VARCHAR,
  nbr VARCHAR,
  description VARCHAR,
  CONSTRAINT fk_comptes
      FOREIGN KEY (comptes_id)
      REFERENCES comptes (id)
      ON DELETE SET NULL
);

CREATE TABLE comptes_inf (
  id SERIAL PRIMARY KEY,
  sous_comptes_id INT,
  nbr VARCHAR,
  name VARCHAR,
  description VARCHAR,
  CONSTRAINT fk_sous_comptes
      FOREIGN KEY (sous_comptes_id)
      REFERENCES sous_comptes (id)
      ON DELETE SET NULL
);


CREATE TABLE users (
  users_id SERIAL PRIMARY KEY,
  firstname VARCHAR(255),
  lastname VARCHAR(255),
  email VARCHAR(255),
  password VARCHAR(255),
  country_code INT,
  numero_tel VARCHAR(20) DEFAULT NULL,
  date_inscription DATE,
  date_paiement DATE,
  status_paiement BOOLEAN DEFAULT false,
  duree_abonnement INT DEFAULT 365,
  amount_to_pay  INT,
  user_category VARCHAR(50),
  type_user VARCHAR(50), 
  is_logged_in BOOLEAN DEFAULT false,
  free_energy INT DEFAULT 10000
);



------------------------- Official -------------------------------------

INSERT INTO users (firstname, lastname, email, password, country_code, numero_tel, date_inscription, date_paiement, status_paiement, duree_abonnement, amount_to_pay, user_category, type_user)
VALUES
('Abonnee', 'USER', 'user-abonnee@gmail.com', '$2b$10$avfInxCAPcG0wn0ZLs49l.ZL1d5/3H0Zfo241z3RS02Q2Sklc0DrS', '229' ,'96769716', '2024-01-02', '2024-02-02', true, 365, 15000 ,'entreprise', 'simple');

INSERT INTO users (firstname, lastname, email, password, country_code, numero_tel, date_inscription, date_paiement, status_paiement, duree_abonnement, amount_to_pay, user_category, type_user)
VALUES
('NonAbonnee', 'USER', 'user-non-abonnee@gmail.com', '$2b$10$avfInxCAPcG0wn0ZLs49l.ZL1d5/3H0Zfo241z3RS02Q2Sklc0DrS', '229' ,'96769716', '2024-01-02', null, false, 0, 4500 ,'etudiant', 'simple');


------------------------- Official -------------------------------------

