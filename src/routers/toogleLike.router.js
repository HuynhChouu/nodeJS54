import express from "express"
import { toogleLikeController } from "../controllers/toogleLike.controller.js"

const toogleLikeRouter = express.Router()

toogleLikeRouter.get(
    "",
    (req, res, next) => {
        console.log("mid 1")

        const payload = "du lieu cua mid 1"
        // giá trị của req được gắn từ đâu, sẽ có giá trị từ vị trí đã gắn

        req.payload = payload

        console.log(payload)
        console.log(req.query)

        next()
    }, 
    toogleLikeController.findAll
)

toogleLikeRouter.put("", toogleLikeController.update)

export default toogleLikeRouter