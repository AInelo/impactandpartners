class Comptes {
    constructor(id, classesComptesId, name, nbr, description) {
      this.id = id;
      this.classesComptesId = classesComptesId;
      this.name = name;
      this.nbr = nbr;
      this.description = description;
    }
  
    // Méthode pour créer une nouvelle instance
    static create(classesComptesId, name, nbr, description) {
      // Logic to create a new Comptes (e.g., save to database)
      return new Comptes(/* generated id */ classesComptesId, name, nbr, description);
    }
  }
  