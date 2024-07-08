const Database = require('../db/connexionDb');
const { CustomAPIError } = require('../errors/custom-error');

class Comptes {
  constructor(id, number, name, description, otherProperty) {
    this.id = id;
    this.number = number;
    this.name = name;
    this.description = description;
  }

  static async allTbales() {
    const db = new Database();
    const query = `SELECT * FROM comptes`;
    const query2 = `SELECT * FROM sous_comptes`;
    const query3 = `SELECT * FROM comptes_inf`;

    try {
      const result = await db.query(query);
      // Handle result for query2 and query3 if needed
    } catch (error) {
      console.error('Error fetching tables data:', error);
      throw new CustomAPIError('Error fetching tables data', 500);
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
      console.error('Error fetching classes_comptes:', error);
      throw new CustomAPIError('Error fetching classes_comptes', 500);
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
        cc.id = $1;`;

    try {
      const result = await db.query(query, [comptes_id]);
      return result;
    } catch (error) {
      console.error(`Error fetching comptes by id ${comptes_id} : `, error);
      throw new CustomAPIError(`Error fetching comptes by id ${comptes_id}`, 500);
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
        c.id = $1;`;

    try {
      const result = await db.query(query, [sous_comptes_id]);
      return result;
    } catch (error) {
      console.error(`Error fetching sous_comptes by id ${sous_comptes_id} : `, error);
      throw new CustomAPIError(`Error fetching sous_comptes by id ${sous_comptes_id}`, 500);
    }
  }

  static async allComptes_inf(id) {
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
      console.error(`Error fetching comptes_inf by id ${id} : `, error);
      throw new CustomAPIError(`Error fetching comptes_inf by id ${id}`, 500);
    }
  }

  static async description(id, table) {
    const db = new Database();
    const query = `SELECT name, description FROM ${table} WHERE id = $1`;

    try {
      const result = await db.query(query, [id]);
      return result;
    } catch (error) {
      console.error(`Error fetching description for id ${id} from table ${table} : `, error);
      throw new CustomAPIError(`Error fetching description for id ${id} from table ${table}`, 500);
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
      { table: 'comptes', sql: `SELECT comptes.*, 'comptes' AS table_name
        FROM comptes
        JOIN classes_comptes ON comptes.classes_comptes_id = classes_comptes.id
        JOIN typesclasse ON classes_comptes.typesclasse_id = typesclasse.id
        WHERE typesclasse.id = ${id}
          AND (comptes.name LIKE '%${detail}%' OR comptes.nbr LIKE '%${detail}%');` },
      { table: 'sous_comptes', sql: `SELECT sous_comptes.*, 'sous_comptes' AS table_name
        FROM sous_comptes
        JOIN comptes ON sous_comptes.comptes_id = comptes.id
        JOIN classes_comptes ON comptes.classes_comptes_id = classes_comptes.id
        JOIN typesclasse ON classes_comptes.typesclasse_id = typesclasse.id
        WHERE typesclasse.id = ${id}
          AND (sous_comptes.name LIKE '%${detail}%' OR sous_comptes.nbr LIKE '%${detail}%');` },
      { table: 'comptes_inf', sql: `SELECT comptes_inf.*, 'comptes_inf' AS table_name
        FROM comptes_inf
        JOIN sous_comptes ON comptes_inf.sous_comptes_id = sous_comptes.id
        JOIN comptes ON sous_comptes.comptes_id = comptes.id
        JOIN classes_comptes ON comptes.classes_comptes_id = classes_comptes.id
        JOIN typesclasse ON classes_comptes.typesclasse_id = typesclasse.id
        WHERE typesclasse.id = ${id}
          AND (comptes_inf.name LIKE '%${detail}%' OR comptes_inf.nbr LIKE '%${detail}%');` }
    ];

    try {
      const resultPromises = queryOf.map(({ table, sql }) => db.query(sql));
      const results = await Promise.all(resultPromises);
      const allResults = results.flat();
      return allResults;
    } catch (error) {
      console.error('Error fetching elements by name or number:', error);
      throw new CustomAPIError('Error fetching elements by name or number', 500);
    }
  }
}

module.exports = Comptes;
