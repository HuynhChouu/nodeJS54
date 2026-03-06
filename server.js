import express from "express"
import rootRouter from "./src/routers/root.router.js"
import { appErrors } from "./src/commons/helpers/app-errors.helper.js"
import cors from "cors";

const app = express()

app.use(cors({ origin: ["http://localhost:3000"] }))

app.get("", (request, response, next) => {
    response.json("Hello world")
})

app.use(express.json())

app.use("/api", rootRouter)

app.use( appErrors)

const PORT = 3000
app.listen(PORT, () => {
    console.log(`Server đang chạy ở port: ${PORT} `)
})

