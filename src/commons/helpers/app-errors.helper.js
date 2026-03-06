import { responseError } from "./response.helper.js"

export const appErrors = (err, req, res, next) => {
        console.log("middleware đặc biệt, bắt lỗi", err)

        console.log({
            cause: err?.cause,
            message: err?.message,
            name: err?.name,
            stack: err?.stack,
            code: err?.code
        })

        const response = responseError(err?.message, err?.code, err?.stack )
        res.status(response.statusCode).json(response)
        // err?.message: câu thông báo lỗi
        // err?.stack: lưu vết lỗi (dòng code xảy ra lỗi)
    }