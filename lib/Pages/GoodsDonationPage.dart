import 'package:firefly/Components/MyButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GoodsDonationPage extends StatefulWidget {
  const GoodsDonationPage({Key? key}) : super(key: key);

  @override
  _GoodsDonationPageState createState() => _GoodsDonationPageState();
}

class _GoodsDonationPageState extends State<GoodsDonationPage> {
  final List<String> _places = [
    "İstanbul/Fatih",
    "İstanbul/Beşiktaş",
    "İstanbul/Kadıköy",
    "İstanbul/Maltepe",
    "İstanbul/Esenler",
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: ListView(
          shrinkWrap: true,
          children: [
            const Text(
              "Eşya Bağış",
              style: TextStyle(fontSize: 40),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "İstanbul konumundaki\neşya toplama noktaları",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: _places
                  .map((e) => Container(
                      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 75), child: MyButton(onPressed: () {}, text: e.toString())))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
