import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_prayekt/constants/color_const.dart';
import 'package:my_prayekt/models/karta_model.dart';

class My_home_Bir_Page extends StatefulWidget {
  const My_home_Bir_Page({Key? key}) : super(key: key);

  @override
  _My_home_Bir_PageState createState() => _My_home_Bir_PageState();
}

class _My_home_Bir_PageState extends State<My_home_Bir_Page> {
  final List<Color> _colors = [
    Colors.blue,
    Colors.redAccent,
    Colors.teal,
    Colors.grey
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.asosiy,
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Expanded(
            flex: 3,
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          '513.89\$',
                          style: TextStyle(
                              fontSize: 34,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          'Your balance',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),

          // ! ikkinchi bo'lim
          Expanded(
            flex: 7,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cards",
                      style: TextStyle(
                          color: Constants.yozuv1,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 200,
                      child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 320,
                            margin: const EdgeInsets.only(left: 20, right: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: _colors[Random().nextInt(_colors.length)],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "CARDNAME",
                                        style: TextStyle(
                                            color: Constants.oq,
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        KartaModel.kartaName[index],
                                        style: TextStyle(color: Constants.oq),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        KartaModel.kartaRaqam[index],
                                        style: TextStyle(
                                            color: Constants.oq,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Container(
                                        height: 49,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(14),
                                          image: const DecorationImage(
                                            image: NetworkImage(
                                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtTN3MnlVCDg4jMeDKDX3gI7jtafT7qhGLwQ&usqp=CAU',
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'CARDHOLDER',
                                            style:
                                                TextStyle(color: Constants.oq),
                                          ),
                                          Text(
                                            KartaModel.name[index],
                                            style: TextStyle(
                                                color: Constants.oq,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 22),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'EXPIRES',
                                            style:
                                                TextStyle(color: Constants.oq),
                                          ),
                                          Text(
                                            KartaModel.oy[index],
                                            style: TextStyle(
                                                color: Constants.oq,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 22),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 40,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 25),
                    Text(
                      "Card Info",
                      style: TextStyle(
                          color: Constants.yozuv1,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 55,
                          width: 270,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.wifi,
                                color: Constants.yozuv1,
                              ),
                              Text(
                                'Travel Card ',
                                style: TextStyle(color: Constants.yozuv1),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 30),
                        Container(
                          height: 55,
                          width: 270,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.wifi,
                                color: Constants.yozuv1,
                              ),
                              Text(
                                'Online Payment',
                                style: TextStyle(color: Constants.yozuv1),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 58,
                    ),
                   
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
