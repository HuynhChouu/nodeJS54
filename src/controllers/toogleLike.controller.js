import { toogleLikeService } from "../services/toogleLike.service.js";
import { responseSuccess } from "../commons/helpers/response.helper.js"

export const toogleLikeController = {
    async findAll(req, res, next) {
        //gọi services
        const result = await toogleLikeService.findAll(req)
        const response = responseSuccess(result, "Lay danh sach like thanh cong",200)
        res.status(response.statusCode).json(response)
    },

    //CREATE
    async create(req, res, next) {
        //gọi services
        const result = await toogleLikeService.create(req)
        const response = responseSuccess(result, "Tuong tac thành công", 201)
        res.status(response.statusCode).json(response)
    }, 

    // UPDATE
    async update(req, res, next) {
        //gọi services
        const result = await toogleLikeService.update(req)
        const response = responseSuccess(result, "Tuong tac thanh cong", 200)
        res.status(response.statusCode).json(response)
    },

    // DELETE
    async delete(req, res, next) {
        //gọi services
        const result = await toogleLikeService.delete(req)
        const response = responseSuccess(result, "Tuong tac thanh cong", 200)
        res.status(response.statusCode).json(response)
    },
}