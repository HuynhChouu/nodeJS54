import express from "express"
import { toogleLikeController } from "../controllers/toogleLike.controller.js"

const toogleLikeRouter = express.Router()

toogleLikeRouter.get(
    "",
    (req, res, next) => {
        next()
    }, 
    toogleLikeController.findAll
)

toogleLikeRouter.put("", toogleLikeController.update)

export default toogleLikeRouter