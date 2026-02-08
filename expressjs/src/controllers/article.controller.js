import { articleService } from "../services/article.service.js"

export const articleController = {
    async findAll(request, response, next) {
        //gọi services
        const result = await articleService.findAll()
        response.json(result)
    }
}

