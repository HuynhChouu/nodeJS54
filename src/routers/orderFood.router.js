import express from "express"
import { orderFoodController } from "../controllers/orderFood.controller.js"

const orderFoodRouter = express.Router()

orderFoodRouter.get("", orderFoodController.findAll)
orderFoodRouter.post("", orderFoodController.create)

export default orderFoodRouter