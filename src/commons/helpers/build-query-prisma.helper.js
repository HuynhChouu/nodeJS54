export const buildQueryPrisma = (req) => {
    let { page, pageSize, filters } = req.query

        const pageDefault = 1 
        const pageSizeDefault = 3

        page = Number(page)
        pageSize = Number(pageSize)

        page = Number(page) || pageDefault;
        pageSize = Number(pageSize) || pageSizeDefault;

        if(page < 1) {
            pageDefault = 1
        }

        if(pageSize < 1) {
            pageSizeDefault = 3
        }


        const index = (page - 1) * pageSize
        try {
            filters = JSON.parse(filters)
        } catch(error) {
            filters = {}
        }
        
        Object.entries(filters).forEach(([key, value]) => {
            if(typeof value === "string") {
                filters[key] = {
                    contains: value
                }
            }
        })

        console.log({page, pageSize, index, filters})

        const where = {
            ...filters,
            // isDeleted: false   
        };

        return {
            page,
            pageSize,
            index,
            where,
        }
}