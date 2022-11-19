const express = require("express");
const app = express();
const dotenv = require("dotenv");
const cors = require("cors");
dotenv.config();

app.use(cors());

const port = 3000;

const version = "3";

app.get("/", function (req, res) {
  res.send("Hello World");

  console.log(`New request version:${version}` + req.url);
});
app.get("/getdata", function (req, res) {
  res.json([
    {
      id: 1,
      name: "It Might Work",
      username: "Antonette",
      email: "Shanna@melissa.tv",
      address: {
        street: "Victor Plains",
        suite: "Suite 879",
        city: "Wisokyburgh",
        zipcode: "90566-7771",
        geo: {
          lat: "-43.9509",
          lng: "-34.4618",
        },
      },
      phone: "010-692-6593 x09125",
      website: "anastasia.net",
      company: {
        name: "Deckow-Crist",
        catchPhrase: "Proactive didactic contingency",
        bs: "synergize scalable supply-chains",
      },
    },
  ]);

  console.log(`New request getdata version:${version}` + req.url);
});

app.listen(port, () => {
  console.log(`Server is running and listening on ${port}`);
});
