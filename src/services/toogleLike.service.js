import { prisma } from "../commons/prisma/connect.prisma.js";

export const toogleLikeService = {
  async findAll(req) {
    const { userId, resId } = req.query;

    const listLikePrismaPromise = prisma.likes.findMany({
      where: {
        ...(userId && { userId: Number(userId) }),
        ...(resId && { resId: Number(resId) }),
        OR: [
          { isLike: true },
          {
            comment: {
              not: null
            },
          },
        ],
      },
    });

    const [listLikePrisma] = await Promise.all([listLikePrismaPromise]);

    return {
      items: listLikePrisma,
    };
  },

  async update(req) {
    const { userId, resId } = req.query;
    const { comment } = req.body;

    const like = await prisma.likes.findUnique({
      where: {
        userId_resId: {
          userId: Number(userId),
          resId: Number(resId),
        },
      },
    });

    if (!like) {
      await prisma.likes.create({
        data: {
          userId: Number(userId),
          resId: Number(resId),
          isLike: true,
          dateLike: new Date()
        },
      });

      return { message: "Like thành công" };
    }

    const updated = await prisma.likes.update({
      where: {
        userId_resId: {
          userId: Number(userId),
          resId: Number(resId),
        },
      },
      data: {
        isLike: !like.isLike,
        dateLike: new Date(),
      },
    });

    return updated;
  },
};
