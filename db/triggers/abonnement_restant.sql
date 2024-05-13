CREATE OR REPLACE FUNCTION set_abonnement_restant()
RETURNS TRIGGER AS $$
BEGIN

    IF NEW.date_paiement IS NOT NULL THEN

    DECLARE time_restant := CURRENT_DATE - NEW.date_paiement;

    IF time_restant <  THEN

        NEW.temps_abonnement_restant = time_restant;
    