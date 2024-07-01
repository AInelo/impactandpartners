class SousComptes {
    constructor(id, comptesId, name, nbr, description) {
      this.id = id;
      this.comptesId = comptesId;
      this.name = name;
      this.nbr = nbr;
      this.description = description;
    }
  
    // Méthode pour créer une nouvelle instance
    static create(comptesId, name, nbr, description) {
      // Logic to create a new SousComptes (e.g., save to database)
      return new SousComptes(/* generated id */ comptesId, name, nbr, description);
    }
  }