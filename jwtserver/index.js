require("dotenv").config();
const express = require("express");
const app = express();
const cors = require("cors");
const admin = require("firebase-admin");
const serviceAccount = require("./path/to/serviceAccountKey.json");
const userRoutes = require("./routes/users");
const authRoutes = require("./routes/auth");
const questionnaireRoutes = require('./routes/questionnaire');

// Initialize Firebase Admin SDK
admin.initializeApp({
  credential: admin.credential.cert(serviceAccount),
  databaseURL: "https://your-firebase-project.firebaseio.com",
});

// Middlewares
app.use(express.json());
app.use(cors());

// Routes
app.use("/api/users", userRoutes);
app.use("/api/auth", authRoutes);
app.use('/api/questionnaire', questionnaireRoutes);

const port = process.env.PORT || 8080;
app.listen(port, () => console.log(`Listening on port ${port}...`));