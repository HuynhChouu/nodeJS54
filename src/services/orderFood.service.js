import { prisma } from "../commons/prisma/connect.prisma.js";

export const orderFoodService = {
    // async findAll(req) {

    // },

    async update(req) {
        const { userId, foodId } = req.query
        const { amount } = req.body

        const code = `ORD${userId}${foodId}`

        const isOdrder = await prisma.orders.update({
            where: {
              userId_foodId: {
                userId: Number(userId),
                foodId: Number(foodId)
            }
            },
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