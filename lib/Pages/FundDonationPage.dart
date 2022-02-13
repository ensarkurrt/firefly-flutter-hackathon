import 'package:firefly/Components/MyButton.dart';
import 'package:firefly/Pages/GoodsDonationPage.dart';
import 'package:firefly/Services/Extentions/ContextExtention.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ThankYouPage.dart';

class FundDonation extends StatefulWidget {
  final String title;
  const FundDonation({Key? key, required this.title}) : super(key: key);

  @override
  _FundDonationState createState() => _FundDonationState();
}

class _FundDonationState extends State<FundDonation> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: [
            const Text(
              "Fon Bağış",
              style: TextStyle(fontSize: 40),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 75),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFFf27c8e), Color(0xFFfdab83)],
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Icon(
                    Icons.person,
                    size: 100,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  widget.title,
                  style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Konum: Van",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Açıklama:\nEvimizde birçok elektronik eşya ve\nısıtıcıda hasar meydana geldi.\nKarşılayabilecek maddi durumumuz yok.",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: context.height * 0.15,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xFFf27c8e), Color(0xFFfdab83)],
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.image,
                            size: 100,
                            color: Colors.white,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextField(
                  decoration: InputDecoration(border: UnderlineInputBorder(), labelText: "Miktar", prefixIcon: Icon(Icons.attach_money)),
                ),
                const SizedBox(
                  height: 20,
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
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 50),
                  child: MyButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const GoodsDonationPage()),
                      );
                    },
                    text: "Eşya Yardım",
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
