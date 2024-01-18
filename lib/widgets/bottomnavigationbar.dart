import 'package:flutter/material.dart';
import 'package:ethiopay/Screens/add.dart';
import 'package:ethiopay/Screens/home.dart';
import 'package:ethiopay/Screens/statistics.dart';
import 'package:ethiopay/Screens/home_screen.dart';
import 'package:ethiopay/Screens/profile_screen.dart';
class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int index_color = 0;
  List Screen = [Home(), Statistics(),HomeScreen(),ProfileApp()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen[index_color],
      floatingActionButton: ClipOval(
  child: FloatingActionButton(
    onPressed: () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Add_Screen()));
    },
    child: Icon(Icons.add),
    backgroundColor: Color(0xFFFD641D),
  ),
),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.only(top: 7.5, bottom: 7.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    index_color = 0;
                  });
                },
                child: Icon(
                  Icons.home,
                  size: 30,
                  color: index_color == 0 ? Color(0xFFFD641D) : Colors.grey,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index_color = 1;
                  });
                },
                child: Icon(
                  Icons.bar_chart_outlined,
                  size: 30,
                  color: index_color == 1 ? Color(0xFFFD641D) : Colors.grey,
                ),
              ),
              SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index_color = 2;
                  });
                },
                child: Icon(
                  Icons.payments_sharp,
                  size: 30,
                  color: index_color == 2 ? Color(0xFFFD641D) : Colors.grey,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index_color = 3;
                  });
                },
                child: Icon(
                  Icons.person_outlined,
                  size: 30,
                  color: index_color == 3 ? Color.fromARGB(255, 209, 103, 16) : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
