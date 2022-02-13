import 'package:firefly/Pages/FundDonationPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DonationsPage extends StatefulWidget {
  const DonationsPage({Key? key}) : super(key: key);

  @override
  _DonationsPageState createState() => _DonationsPageState();
}

class _DonationsPageState extends State<DonationsPage> {
  List<String> donateList = [
    'Mehmet Demir',
    'Aslı Çelik',
    'Ahmet Turan',
    'Mahmut Pek',
    'Neriman Yener',
    'Selim Öz',
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
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
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200, childAspectRatio: 1, crossAxisSpacing: 50, mainAxisSpacing: 30),
                itemCount: donateList.length,
                itemBuilder: (BuildContext ctx, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FundDonation(
                                  title: donateList[index],
                                )),
                      );
                    },
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
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
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          donateList[index],
                          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
