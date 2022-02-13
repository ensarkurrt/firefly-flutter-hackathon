import 'dart:ui';

import 'package:firefly/Components/MyButton.dart';
import 'package:firefly/Services/Extentions/ContextExtention.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'NavigatorPage.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: const <Widget>[
        TopGroup(),
        SizedBox(height: 50),
        ButtonGroup(),
        SizedBox(height: 30),
        Text(
          "Şifreni mi unuttun ?",
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}

class TopGroup extends StatelessWidget {
  const TopGroup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/logo.png"),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: const Text(
            "YARDIM ELİ",
            style: TextStyle(fontSize: 35, color: Color(0xFFe55312)),
          ),
        ),
        const FormGroup(),
      ],
    );
  }
}

class ButtonGroup extends StatelessWidget {
  const ButtonGroup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: context.width / 4),
      child: Column(
        children: [
          MyButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const NavigatorPage()), (Route<dynamic> route) => false);
            },
            text: "GİRİŞ",
            fontSize: 27,
          ),
          const SizedBox(height: 20),
          MyButton(
            onPressed: () {},
            text: "KAYIT",
            fontSize: 27,
          ),
        ],
      ),
    );
  }
}

class FormGroup extends StatelessWidget {
  const FormGroup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          const TextField(
            decoration: InputDecoration(border: UnderlineInputBorder(), labelText: "Email", prefixIcon: Icon(Icons.email_outlined)),
          ),
          const TextField(
            decoration: InputDecoration(border: UnderlineInputBorder(), labelText: "Kullanıcı Adı", prefixIcon: Icon(Icons.person_outline)),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: const UnderlineInputBorder(),
              hintText: "****",
              labelText: "Parola",
              prefixIcon: const Icon(Icons.lock_outline),
              suffix: GestureDetector(
                child: Container(margin: const EdgeInsets.only(right: 10), child: const Icon(Icons.remove_red_eye_outlined)),
                onTap: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
