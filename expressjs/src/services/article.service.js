import sequelize from "../commons/sequelize/connect.sequelize.js"
import Article from "../models/article.model.js"

export const articleService = {
    async findAll() {
        // sequelize
        const resultSequelize = await Article.findAll()
        return resultSequelize
    }
}