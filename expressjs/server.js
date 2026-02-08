import express from "express"
import rootRouter from "./src/routers/root.router.js"

const app = express()

// RESTful API
app.get("", (request, response, next) => {
    response.json("Hello world")
})

// use sẽ sử dụng tất cả các method khi gọi API (GET, POST, PUT, DELETE)
app.use("/api", rootRouter)

const PORT = 3069
app.listen(PORT, () => {
    // khi chạy server, sẽ chạy những gì bên dưới
    console.log(`Server đang chạy ở port: ${PORT} `)
})

// js version cũ: commonjs

// ES6: phiên bản nâng cấp rất nhiều của js

// js version mới: es-module
// import express from "express"

// mô hình MVC
// M: Model
// V: views
// C: controller

// Router: quản lý API
// Controller: điều hướng, nhận và trả dữ liệu
// Service: logic chính
// Model: mô phỏng lại cấu trúc từ DB => object
// Views: chứa file HTML