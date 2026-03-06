import express from "express"
import { updateCommentController } from "../controllers/updateComment.controller.js"

const updateCommentRouter = express.Router()

updateCommentRouter.get("", (req, res, next) => {
    next()
},
updateCommentController.findAll
)

updateCommentRouter.put("", updateCommentController.update) 

export default updateCommentRouter