import { orderFoodService } from "../services/orderFood.service.js"
import { responseSuccess } from "../commons/helpers/response.helper.js"

export const orderFoodController = {
    async findAll(req, res, next) {
        const result = await orderFoodService.findAll(req)
        const response = responseSuccess(result, "Lay danh sach order thanh cong",200)
        res.status(response.statusCode).json(response)
    },

    async create(req, res, next) {
        const result = await orderFoodService.create(req)
        const response = responseSuccess(result, "Tao order thanh cong", 201)
        res.status(response.statusCode).json(response)
    }, 

    async update(req, res, next) {
        const result = await orderFoodService.update(req)
        const response = responseSuccess(result, "Tao order thanh cong", 200)
        res.status(response.statusCode).json(response)
    },

    async delete(req, res, next) {
        const result = await orderFoodService.delete(req)
        const response = responseSuccess(result, "Huy order thanh cong", 200)
        res.status(response.statusCode).json(response)
    },
}