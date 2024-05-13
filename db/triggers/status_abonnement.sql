-- Création du déclencheur
CREATE OR REPLACE FUNCTION update_payment_status()
RETURNS TRIGGER AS $$
BEGIN
    -- Vérifier si la date de paiement est définie
    IF NEW.date_paiement IS NOT NULL THEN
        -- Calculer le nombre de jours entre la date de paiement et la date actuelle
        DECLARE days_since_payment INTEGER;
        days_since_payment := CURRENT_DATE - NEW.date_paiement;

        -- Mettre à jour le statut de paiement en fonction des conditions
        IF days_since_payment < 60 THEN
            NEW.status_paiement := TRUE;
        ELSE
            NEW.status_paiement := FALSE;
        END IF;
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Associer le déclencheur à la table users
CREATE TRIGGER update_payment_status_trigger
BEFORE INSERT OR UPDATE ON users
FOR EACH ROW
EXECUTE FUNCTION update_payment_status();






CREATE OR REPLACE FUNCTION update_payment_status()
RETURNS TRIGGER AS $$
BEGIN

    IF NEW.date_paiement IS NOT NULL THEN

        DECLARE days_since_payment INTEGER;
        days_since_payment := CURRENT_DATE - NEW.date_paiement;

        IF days_since_payment < 60 THEN
            NEW.status_paiement := TRUE;
        ELSE
            NEW.status_paiement := FALSE;
        END IF;
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_payment_status_trigger
BEFORE INSERT OR UPDATE ON users
FOR EACH ROW
EXECUTE FUNCTION update_payment_status();


INSERT INTO users (firstname, lastname, email, password, numero_tel, date_inscription, date_paiement, status_paiement, duree_abonnement, temps_abonnement_restant)
VALUES 
('John', 'Doe', 'john@example.com', '$2b$10$aPtxa3vryjnm6WgIl978W.OnSflcKjHGVQOtGX0fwbkUn5z.4HBa.', '96769716', '2024-04-24 10:00:00', '2024-04-24 10:00:00', TRUE, 30, 6),
('Jane', 'Doe', 'jane@example.com', '$2b$10$aPtxa3vryjnm6WgIl978W.OnSflcKjHGVQOtGX0fwbkUn5z.4HBa.asse', '96769716', '2024-04-22 08:00:00', '2024-04-22 08:00:00', TRUE, 30, 24),
('Bob', 'Johnson', 'bob@example.com', '$2b$10$aPtxa3vryjnm6WgIl978W.OnSflcKjHGVQOtGX0fwbkUn5z.4HBa.', '96769716', '2024-04-21 15:00:00', '2024-04-21 15:00:00', FALSE, 30, 0);
