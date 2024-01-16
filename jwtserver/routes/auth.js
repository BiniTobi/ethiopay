const router = require("express").Router();
const admin = require("firebase-admin");
const Joi = require("joi");
const jwt = require("jsonwebtoken");

// Initialize Firebase Admin SDK
admin.initializeApp({
  credential: admin.credential.applicationDefault(),
});

router.post("/", async (req, res) => {
  try {
    const { error } = validate(req.body);
    if (error)
      return res.status(400).send({ message: error.details[0].message });

    const email = req.body.email;
    const password = req.body.password;

    const userRecord = await admin.auth().getUserByEmail(email);
    const userId = userRecord.uid;

    const token = jwt.sign({ userId }, process.env.JWTPRIVATEKEY, {
      expiresIn: "7d",
    });

    res.status(200).send({ data: token, message: "Logged in successfully" });
  } catch (error) {
    res.status(401).send({ message: "Invalid Email or Password" });
  }
});

const validate = (data) => {
  const schema = Joi.object({
    email: Joi.string().email().required().label("Email"),
    password: Joi.string().required().label("Password"),
  });
  return schema.validate(data);
};

module.exports = router;