import { statusCodes } from "./status-code.helper.js"

export const responseSuccess = (data, message , statusCode) => {
    return {
            status: "success",
            statusCode: statusCode,
            message: message,
            data: data,
            dateTime: new Date()
    }
}

export const responseError = (message = "Internal Server Error", statusCode = statusCodes.INTERNAL_SERVER_ERROR, stack) => {
    return {
            status: "error",
            statusCode: statusCode,
            message: message,
            stack: stack, // chỉ nên show ở môi trường dev
            dateTime: new Date()
    }
}