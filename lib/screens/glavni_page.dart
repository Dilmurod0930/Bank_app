import 'package:flutter/material.dart';
import 'package:my_prayekt/screens/home_page.dart';
import 'package:my_prayekt/screens/my_hom_page.dart';
import 'package:my_prayekt/screens/my_home_page_2.dart';

class GlavniPage extends StatefulWidget {
  const GlavniPage({Key? key}) : super(key: key);

  @override
  State<GlavniPage> createState() => _GlavniPageState();
}

class _GlavniPageState extends State<GlavniPage> {
  int _currentIndex = 0;
List<Widget>? _pages;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pages = [
      HomePage(),
    My_home_Bir_Page(),
    My_KartaHom_Page()
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: _pages![_currentIndex],
      //! NavigayshnBar
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card), label: "Cards"),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: "Add"),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
     

    );
  }
}
