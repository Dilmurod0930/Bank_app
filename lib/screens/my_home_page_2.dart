import 'package:flutter/material.dart';
import 'package:my_prayekt/constants/color_const.dart';
import 'package:my_prayekt/models/karta-model_regis_page.dart';

class My_KartaHom_Page extends StatefulWidget {
  const My_KartaHom_Page({Key? key}) : super(key: key);

  @override
  _My_KartaHom_PageState createState() => _My_KartaHom_PageState();
}

class _My_KartaHom_PageState extends State<My_KartaHom_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.asosiy,
      body: Column(
        children: [
          const SizedBox(height: 40),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Container(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                const Text(
                                  "Linda",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 22),
                                ),
                                Container(
                                  child: const Text(
                                    'Pluse',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Constants.yuzuv,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(width: 12),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(14),
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        'https://source.unsplash.com/random'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Transactions",
                            style: TextStyle(
                                color: Constants.yozuv1,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              const Text('Sort by'),
                              Text(
                                "Date ^",
                                style: TextStyle(color: Constants.yozuv1),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Text('Today'),
                    SizedBox(
                      height: 504,
                      child: ListView.builder(
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Container(
                              height: 70,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(12)),
                                  child: ListTile(title: Text(Royxat.royxat[index]),
                                  subtitle: Text(Royxat.soat[index]),
                                  trailing: Text(Royxat.summa[index]),
                                  ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
