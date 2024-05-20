import Database from '../db/connexionDb.js';



class Comptes {
  constructor(id, number, name, description, otherProperty) {
    this.id = id;
    this.number = number;
    this.name = name;
    this.description = description;
  }

  static async allTbales() {
    const db = new Database;
    const query = `SELECT * FROM comptes`;
    const query2 = `SELECT * FROM sous_comptes`;
    const query3 = `SELECT * FROM comptes_inf`;

    try {
        const result = await db.query(query);
        
    } catch (error) {
        
    }

  }
  
  static async allClassComptesById(classes_comptes_id) {
    const db = new Database();
    const query = `SELECT
    cc.nbr,
    cc.name,
    cc.id
  
    FROM 
        typesclasse tc
    JOIN 
        classes_comptes cc ON tc.id = cc.typesclasse_id

    WHERE
        tc.id = $1;`;
    try {
      const result = await db.query(query, [classes_comptes_id]);
      return result;
    } catch (error) {
      console.error('Erreur lors de la récupération des classes_comptes : ', error);
      throw error;
    }
  }


  static async allComptesById(comptes_id) {
    const db = new Database();
    const query = `SELECT
    cc.name AS cc_name,
       
        c.id,
        c.name,
        c.nbr
        
    
    FROM 
      classes_comptes cc
    JOIN 
      comptes c ON  cc.id = c.classes_comptes_id
    WHERE
      cc.id = $1;`

    try {
        const result = await db.query(query, [comptes_id]);
        return result;
    } catch (error) {
        console.error(`Error while getting comptes by id ${comptes_id} : `, error);
    }

  }

  static async allSousComptesById(sous_comptes_id) {
    const db = new Database();
    const query = `SELECT
    c.name,
      
        sc.id,
        sc.name,
        sc.nbr
        
    
    FROM 
      comptes c
    JOIN 
      sous_comptes sc ON  sc.comptes_id = c.id
    WHERE
      c.id = $1;`

    try {
        const result = await db.query(query, [sous_comptes_id]);
        return result;
    } catch (error) {
        console.error(`Error while getting comptes by id ${sous_comptes_id} : `, error);
    }

  }

  static async allComptes_inf (id) {
    const db = new Database();
    const query = `SELECT
    sc.name,
    sc.nbr,
      
        ci.id,
        ci.name,
        ci.nbr    
    FROM 
      sous_comptes sc
    JOIN 
      comptes_inf ci ON  ci.sous_comptes_id = sc.id
    WHERE
      sc.id = $1;`;
    
    try {
          const result = await db.query(query, [id]);
          return result;
    } catch (error) {

      console.error(`Error while getting comptes by id ${id} : `, error);

    }
  }

  static async description(id, tables) {
    const db = new Database();
    const query = `SELECT name, description FROM ${tables} WHERE id = $1`;
    try {
        const result = await db.query(query, [id]);
        return result;
    } catch (error) {
        
    }
  }

 
    
  static async AllElementByNameOrNbr(detail, id) {
    const db = new Database();
    const query = [
        { table: 'comptes', sql: `SELECT *, 'comptes' AS table_name FROM comptes WHERE name LIKE '%${detail}%' OR nbr LIKE '%${detail}%' ORDER BY id ASC;` }, 
        { table: 'sous_comptes', sql: `SELECT *, 'sous_comptes' AS table_name FROM sous_comptes WHERE name LIKE '%${detail}%' OR nbr LIKE '%${detail}%' ORDER BY id ASC;` }, 
        { table: 'comptes_inf', sql: `SELECT *, 'comptes_inf' AS table_name FROM comptes_inf WHERE name LIKE '%${detail}%' OR nbr LIKE '%${detail}%' ORDER BY id ASC;` }
    ];

    const queryOf = [
      {table: 'comptes', sql: `SELECT comptes.*, 'comptes' AS table_name
      FROM comptes
      JOIN classes_comptes ON comptes.classes_comptes_id = classes_comptes.id
      JOIN typesclasse ON classes_comptes.typesclasse_id = typesclasse.id
      WHERE typesclasse.id = ${id}
        AND (comptes.name LIKE '%${detail}%' OR comptes.nbr LIKE '%${detail}%');`},
      {table: 'sous_comptes', sql: `SELECT sous_comptes.*, 'sous_comptes' AS table_name
      FROM sous_comptes
      JOIN comptes ON sous_comptes.comptes_id = comptes.id
      JOIN classes_comptes ON comptes.classes_comptes_id = classes_comptes.id
      JOIN typesclasse ON classes_comptes.typesclasse_id = typesclasse.id
      WHERE typesclasse.id = ${id}
        AND (sous_comptes.name LIKE '%${detail}%' OR sous_comptes.nbr LIKE '%${detail}%');`},
      {table: 'comptes_inf', sql: `SELECT comptes_inf.*, 'comptes_inf' AS table_name
      FROM comptes_inf
      JOIN sous_comptes ON comptes_inf.sous_comptes_id = sous_comptes.id
      JOIN comptes ON sous_comptes.comptes_id = comptes.id
      JOIN classes_comptes ON comptes.classes_comptes_id = classes_comptes.id
      JOIN typesclasse ON classes_comptes.typesclasse_id = typesclasse.id
      WHERE typesclasse.id = ${id}
        AND (comptes_inf.name LIKE '%${detail}%' OR comptes_inf.nbr LIKE '%${detail}%');`}
    ]
  
    try {
        const resultPromises = queryOf.map(({ table, sql }) => db.query(sql)); 
        const results = await Promise.all(resultPromises); 
        // console.log(results)
        
        const allResults = results.flat(); // Combine all results into a single array
  
        return allResults ; // Return the object with a single 'element' array
    } catch (error) {
        throw new Error(error.message);
    }
  }
  



  
}


export default Comptes;