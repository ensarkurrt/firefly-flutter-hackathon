import 'package:firefly/Components/MyButton.dart';
import 'package:firefly/Pages/ThankYouPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DonationPage extends StatefulWidget {
  final String title;
  const DonationPage({Key? key, required this.title}) : super(key: key);

  @override
  _DonationPageState createState() => _DonationPageState();
}

class _DonationPageState extends State<DonationPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 50),
        child: ListView(
          children: [
            const Text(
              "Bağış Yap",
              style: TextStyle(fontSize: 40),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            Column(
              children: [
                MyButton(
                  onPressed: () {},
                  text: widget.title,
                  fontSize: 33,
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Aktif Yardım Aranıyor!",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 50,
                ),
                Column(
                  children: const [
                    Text(
                      "Yardım edilecek il: Van",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Yardım edilecek ilçe: Erciş",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                const TextField(
                  decoration: InputDecoration(border: UnderlineInputBorder(), labelText: "Miktar", prefixIcon: Icon(Icons.attach_money)),
                ),
                const SizedBox(
                  height: 70,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 50),
                  child: MyButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ThankYouPage()),
                      );
                    },
                    text: "Bağış",
                    fontSize: 26,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
