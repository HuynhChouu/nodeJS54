import { prisma } from "../commons/prisma/connect.prisma.js";

export const updateCommentService = {
  async findAll(req) {
    const { userId, resId } = req.query

    const listCommentPrismaPromise = prisma.likes.findMany({
      where: {
        ...(userId && { userId: Number(userId) }),
        ...(resId && { resId: Number(resId) }),
        comment: {
            not: null,
        },
      },
    });

    const [listCommentPrisma] = await Promise.all([listCommentPrismaPromise]);

    return {
      items: listCommentPrisma,
    };
  },

  async update(req) {
    const { userId, resId } = req.query;
    const { comment } = req.body;

    const isUpdated = await prisma.likes.update({
      where: {
        userId_resId: {
          userId: Number(userId),
          resId: Number(resId),
        },
      },
      data: {
        dateComment: new Date(),
        comment: comment,
      },
    });

    return isUpdated;
  },
};
