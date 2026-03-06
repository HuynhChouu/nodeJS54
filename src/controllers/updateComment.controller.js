import { updateCommentService } from "../services/updateComment.service.js"
import { responseSuccess } from "../commons/helpers/response.helper.js"

export const updateCommentController = {
    async findAll(req, res, next) {
        //gọi services
        const result = await updateCommentService.findAll(req)
        const response = responseSuccess(result, "Lay danh sach danh gia thanh cong",200)
        res.status(response.statusCode).json(response)
    },

    //CREATE
    async create(req, res, next) {
        //gọi services
        const result = await updateCommentService.create(req)
        const response = responseSuccess(result, "Tao danh gia thanh cong", 201)
        res.status(response.statusCode).json(response)
    }, 

    // UPDATE
    async update(req, res, next) {
        //gọi services
        const result = await updateCommentService.update(req)
        const response = responseSuccess(result, "Cap nhat danh gia thanh cong", 200)
        res.status(response.statusCode).json(response)
    },

    // DELETE
    async delete(req, res, next) {
        //gọi services
        const result = await updateCommentService.delete(req)
        const response = responseSuccess(result, "Xoa danh gia thanh cong", 200)
        res.status(response.statusCode).json(response)
    },
}