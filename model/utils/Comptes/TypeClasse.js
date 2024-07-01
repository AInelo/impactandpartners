class TypesClasse {
    constructor(id, name) {
      this.id = id;
      this.name = name;
    }
  
    // Méthode pour créer une nouvelle instance
    static create(name) {
      // Logic to create a new TypesClasse (e.g., save to database)
      return new TypesClasse(/* generated id */ name);
    }
  }
  