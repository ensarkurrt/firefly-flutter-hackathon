import 'package:firefly/Components/MyButton.dart';
import 'package:firefly/Services/Extentions/ContextExtention.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: ListView(
        children: [
          const Text(
            "Profil",
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
              const Text(
                "Talha Çınar",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Yardımsever Rozeti",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Toplam Bağış",
                          style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Eşya Miktarı",
                          style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyButton(onPressed: () {}, text: "150\$"),
                        const SizedBox(
                          height: 10,
                        ),
                        MyButton(onPressed: () {}, text: "150\$")
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Yeni Rozet",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Container(
                    child: SizedBox(
                      width: context.width * 0.6,
                      height: 40,
                    ),
                    decoration: BoxDecoration(color: const Color(0xFFF07590), borderRadius: BorderRadius.circular(25)),
                  ),
                  Container(
                    child: SizedBox(
                      width: context.width * 0.2,
                      height: 40,
                    ),
                    decoration: BoxDecoration(color: const Color(0xFFFCA585), borderRadius: BorderRadius.circular(25)),
                  ),
                  SizedBox(
                      width: context.width * 0.57,
                      height: 40,
                      child: const Text(
                        "10000\$",
                        style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.right,
                      )),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
