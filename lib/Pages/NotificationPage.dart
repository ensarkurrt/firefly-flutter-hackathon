import 'package:firefly/Services/Extentions/ContextExtention.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: ListView(
          shrinkWrap: true,
          children: [
            const Text(
              "Bildirim",
              style: TextStyle(fontSize: 40),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Bölgenizde Deprem Yaşandı!\nİyi durumdaysanız aşağıdan\nbelirtiniz.",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              "assets/images/tick.png",
              height: context.height * 0.2,
            ),
            const Text(
              "Yardıma ihtiyacınız varsa\naşağıdaki butona basınız.",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            Image.asset(
              "assets/images/exc.png",
              height: context.height * 0.2,
            ),
            const Text(
              "Arkadaş listenize  ve yetkililere\nkonumunuz gönderilecek.",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
