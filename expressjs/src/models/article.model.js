import { DataTypes } from "sequelize";
import sequelize from "../commons/sequelize/connect.sequelize.js";

const Article = sequelize.define(
  'Article',
  {
    // Model attributes are defined here
    id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true,
    },
    title: {
        type: sequelize.literal("TIMESTAMP")
    },
    content: {
        type: DataTypes.TEXT
    },
    imageUrl: {
        type: DataTypes.STRING
    },
    views: {
        type: DataTypes.INTEGER
    },
  },
  {
    tableName: "Articles",
    timestamps: false,
  },
);

export default Article
