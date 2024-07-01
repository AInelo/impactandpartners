class ComptesInf {
    constructor(id, sousComptesId, nbr, name, description) {
      this.id = id;
      this.sousComptesId = sousComptesId;
      this.nbr = nbr;
      this.name = name;
      this.description = description;
    }
  
    // Méthode pour créer une nouvelle instance
    static create(sousComptesId, nbr, name, description) {
      // Logic to create a new ComptesInf (e.g., save to database)
      return new ComptesInf(/* generated id */ sousComptesId, nbr, name, description);
    }
  }