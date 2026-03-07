import { prisma } from "../commons/prisma/connect.prisma.js";

export const orderFoodService = {
   async create(req) {
        // const { userId, foodId } = req.query
        const { userId, foodId, amount } = req.body

        const code = `ORD${userId}${foodId}`

        const isOdrder = await prisma.orders.create({
            data: {
                userId: Number(userId),
                foodId: Number(foodId),
                amount: Number(amount),
                dateOrder: new Date(),
                code: code
            },
        });

        return isOdrder
    },
}