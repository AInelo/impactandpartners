class ClassesComptes {
    constructor(id, typesClasseId, nbr, name, description) {
      this.id = id;
      this.typesClasseId = typesClasseId;
      this.nbr = nbr;
      this.name = name;
      this.description = description;
    }
  
    // Méthode pour créer une nouvelle instance
    static create(typesClasseId, nbr, name, description) {
      // Logic to create a new ClassesComptes (e.g., save to database)
      return new ClassesComptes(/* generated id */ typesClasseId, nbr, name, description);
    }
  }