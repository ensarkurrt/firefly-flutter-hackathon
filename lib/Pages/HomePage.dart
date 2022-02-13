import 'package:firefly/Components/MyButton.dart';
import 'package:firefly/Pages/DonationPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Text(
          "YARDIM",
          style: TextStyle(fontSize: 40),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 50,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: [
              MyButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DonationPage(
                              title: "AKUT",
                            )),
                  );
                },
                text: "AKUT",
                fontSize: 33,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(height: 35),
              MyButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DonationPage(
                              title: "KIZILAY",
                            )),
                  );
                },
                text: "KIZILAY",
                fontSize: 33,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(height: 35),
              MyButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DonationPage(
                              title: "AFAD",
                            )),
                  );
                },
                text: "AFAD",
                fontSize: 33,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(height: 35),
              MyButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DonationPage(
                              title: "FON",
                            )),
                  );
                },
                text: "FON",
                fontSize: 33,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(height: 35),
              MyButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DonationPage(
                              title: "EŞYA YARDIMI",
                            )),
                  );
                },
                text: "EŞYA YARDIM",
                fontSize: 33,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
          child: Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFf27c8e), Color(0xFFfdab83)],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(80.0)),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Icon(
                    Icons.warning_amber,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Güncel Depremler", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
                  Text(
                    "Van 4.6",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.start,
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
