import dotenv from "dotenv";
dotenv.config();
import pkg from 'pg';
const { Pool } = pkg;



const isProduction = process.env.NODE_ENV === "production";

const connectionString = `postgresql://${process.env.DB_USER}:${process.env.DB_PASSWORD}@${process.env.DB_HOST}:${process.env.DB_PORT}/${process.env.DB_DATABASE}`;

const connectionStringz = `postgres://lionel_impact:7bVziQY78RppLqwMqXjGo0kLvLnveqJi@dpg-cnss2amct0pc73ejha0g-a/laraveldatabase_6pc1`

const poole = new Pool({
  connectionString: isProduction ? process.env.DATABASE_URL : connectionString,
  ssl: isProduction,
});

// postgresql://impact_partners:04nn0K7hrX5jPBLFjd3ZN6vr9PgIPppw@dpg-cq0ohc6ehbks73ef50e0-a/ipofafricacomptaplandatabase

// postgresql://impact_partners:04nn0K7hrX5jPBLFjd3ZN6vr9PgIPppw@dpg-cq0ohc6ehbks73ef50e0-a.oregon-postgres.render.com/ipofafricacomptaplandatabase

class Database {
  constructor() {
    this.pool = new Pool({
      // user: 'postgres',
      // host: 'localhost',
      // database: 'postgres',
      // password: '1234',
      // port: 5432
      user: 'impact_partners',
      host: 'dpg-cq0ohc6ehbks73ef50e0-a',
      database: 'ipofafricacomptaplandatabase',
      password: '04nn0K7hrX5jPBLFjd3ZN6vr9PgIPppw',
      port: 5432
    });
  }


  async query(sql, params) {
    try {
      const result = await this.pool.query(sql, params);
      return result.rows;
    } catch (error) {
      console.error('Erreur lors de l\'exécution de la requête', error);
      throw error;
    }
  }
}

export default Database;