import { prisma } from "../commons/prisma/connect.prisma.js";

export const updateCommentService = {
  async findAll(req) {
    const { userId, resId } = req.query;
    
    const listRatePrismaPromise = prisma.rates.findMany({
      where: {
        ...(userId && { userId: Number(userId) }),
        ...(resId && { resId: Number(resId) }),
        isRate: true,
      },
    });

    const [listRatePrisma] = await Promise.all([listRatePrismaPromise]);

    return {
      items: listRatePrisma,
    };
  },

  async update(req) {
    const { userId, resId } = req.query;

    const rating = await prisma.rates.findUnique({
      where: {
        userId_resId: {
          userId: Number(userId),
          resId: Number(resId),
        },
      },
    });

    if (!rating) {
      await prisma.rates.create({
        data: {
          userId: Number(userId),
          resId: Number(resId),
          dateRate: new Date(),
          isRate: true,
        },
      });
      return { message: "Đánh giá thành công" };
    }

    const updateRating = await prisma.rates.update({
      where: {
        userId_resId: {
          userId: Number(userId),
          resId: Number(resId),
        },
      },
      data: {
        userId: Number(userId),
        resId: Number(resId),
        // amout: Number(amount),
        dateRate: new Date(),
        isRate: !rating.isRate,
      },
    });
    return updateRating;
  },
};
