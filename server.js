import express from "express";
import cookieParser from "cookie-parser";
import cors from "cors";
import db from "./config/Database.js";
import router from "./routes/index.js";
import { createServer } from "http";
import { Server } from "socket.io";

const app = express();
const httpServer = createServer(app);
const io = new Server(httpServer, {
  cors: {
    origin: 'http://localhost:4200',
    methods: ['GET', 'POST'],
    credentials: true
  }
});

app.set('io', io);

app.use(express.urlencoded({ extended: true }));

try {
  await db.authenticate();
  console.log('Database Connected...');
} catch (error) {
  console.error(error);
}
//upload static video 
app.use('/uploads', express.static('./uploads'));
//le rest
app.use(cors({ credentials: true, origin: ['http://localhost:4200'] }));
app.use(cookieParser());
app.use(express.json());
app.use(router);



httpServer.listen(5000, () => console.log('Server running at port 5000'));
