import express from "express";
import toogleLikeRouter from "./toogleLike.router.js";
import updateCommentRouter from "./updateComment.router.js";
import orderFoodRouter from "./orderFood.router.js";

const rootRouter = express.Router()

rootRouter.use("/toogleLike", toogleLikeRouter)
rootRouter.use("/updateComment", updateCommentRouter)
rootRouter.use("/order", orderFoodRouter)

export default rootRouter