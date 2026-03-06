export const buildQueryPrisma = (req) => {
    let { page, pageSize, filters } = req.query

        const pageDefault = 1 
        const pageSizeDefault = 3

        page = Number(page)
        pageSize = Number(pageSize)

        // Đảm bảo luôn gửi page/pageSize là số
        // nếu gửi chữ/string
        page = Number(page) || pageDefault;
        pageSize = Number(pageSize) || pageSizeDefault;

        // nếu gửi số âm (-1)
        if(page < 1) {
            pageDefault = 1
        }

        if(pageSize < 1) {
            pageSizeDefault = 3
        }


        const index = (page - 1) * pageSize
        // muon su dung JSON parse => su dung try/catch
        try {
            filters = JSON.parse(filters)
        } catch(error) {
            filters = {}
        }
        
        Object.entries(filters).forEach(([key, value]) => {
            // nếu lọc với string thì lồng vào 1 object có key là contains
            if(typeof value === "string") {
                filters[key] = {
                    contains: value
                }
            }
        })

        console.log({page, pageSize, index, filters})

        const where = {
            ...filters,
            isDeleted: false   
        };

        return {
            page,
            pageSize,
            index,
            where,
        }
}