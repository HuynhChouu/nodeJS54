import express from "express"
import { orderFoodController } from "../controllers/orderFood.controller.js"

const orderFoodRouter = express.Router()

orderFoodRouter.post("", orderFoodController.update)

export default orderFoodRouter