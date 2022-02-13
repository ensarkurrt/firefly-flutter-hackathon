import 'package:firefly/Services/Extentions/ContextExtention.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThankYouPage extends StatefulWidget {
  const ThankYouPage({Key? key}) : super(key: key);

  @override
  _ThankYouPageState createState() => _ThankYouPageState();
}

class _ThankYouPageState extends State<ThankYouPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: ListView(
          shrinkWrap: true,
          children: [
            const Text(
              "Teşekkürler",
              style: TextStyle(fontSize: 40),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            Image.asset(
              "assets/images/tick2.png",
              height: context.height * 0.3,
            ),
            const Text(
              "Bağışınızı en kısa sürede\nihtiyaç sahiplerine ulaştıracağız.",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
