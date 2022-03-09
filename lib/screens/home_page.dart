import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // //!App Bar
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Bank",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
            color: Colors.black,
          ),
        ),
      ),

      body: Column(
        children: [
          Expanded(
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHBtnWdQM3uLi-AQsOhLiMMKquV2ealgyOZA&usqp=CAU",
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
