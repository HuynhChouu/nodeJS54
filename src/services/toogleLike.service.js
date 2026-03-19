import { prisma } from "../commons/prisma/connect.prisma.js";
import { buildQueryPrisma } from "../commons/helpers/build-query-prisma.helper.js";

export const toogleLikeService = {
  async findAll(req) {
    const { userId, resId } = req.query;

    const { page, pageSize, index, where } = buildQueryPrisma(req);

    const listLikePrismaPromise = prisma.likes.findMany({
      where: {
        ...where,
        ...(userId && { userId: Number(userId) }),
        ...(resId && { resId: Number(resId) }),
        OR: [
          { isLike: true },
          {
            comment: {
              not: null,
            },
          },
        ],
      },
      skip: index,
      take: pageSize,
    });

    const totalPromise = prisma.likes.count({
      where: {
        ...where,
        ...(userId && { userId: Number(userId) }),
        ...(resId && { resId: Number(resId) }),
        OR: [
          { isLike: true },
          {
            comment: {
              not: null,
            },
          },
        ],
      },
    });

    const [items, total] = await Promise.all([
      listLikePrismaPromise,
      totalPromise,
    ]);

    return {
      items,
      page,
      pageSize,
      total,
      totalPages: Math.ceil(total / pageSize),
    };
  },

  async update(req) {
    const { userId, resId } = req.query;

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
          dateLike: new Date(),
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
