import { prisma } from "../commons/prisma/connect.prisma.js";
import { buildQueryPrisma } from "../commons/helpers/build-query-prisma.helper.js";

export const orderFoodService = {
  async findAll(req) {
    const { userId } = req.query;

    const { page, pageSize, index, where } = buildQueryPrisma(req);

    const listLikePrismaPromise = prisma.orders.findMany({
      where: {
        ...where,
        ...(userId && { userId: Number(userId) }),
        // OR: [
        //   { isLike: true },
        //   {
        //     comment: {
        //       not: null,
        //     },
        //   },
        // ],
      },
      skip: index,
      take: pageSize,
    });

    const totalPromise = prisma.orders.count({
      where: {
        ...where,
        ...(userId && { userId: Number(userId) }),
        // OR: [
        //   { isLike: true },
        //   {
        //     comment: {
        //       not: null,
        //     },
        //   },
        // ],
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

  async create(req) {
    // const { userId, foodId } = req.query
    const { userId, foodId, amount } = req.body;

    const code = `ORD${userId}${foodId}`;

    const isOdrder = await prisma.orders.create({
      data: {
        userId: Number(userId),
        foodId: Number(foodId),
        amount: Number(amount),
        dateOrder: new Date(),
        code: code,
      },
    });

    return isOdrder;
  },
};
