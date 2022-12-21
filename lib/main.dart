import 'package:flutter/material.dart';
import 'package:pakhi_shop/description/detail_screen.dart';
import 'package:pakhi_shop/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  int _selectedIndex = 0;
  void onTapped(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<String> deshipakhiImage = [
    'https://imaginary.barta24.com/resize?width=700&quality=75&path=uploads/news/2021/Jul/17/1626497317360.jpg',
    'https://assets.telegraphindia.com/abp/2018/2/10/1608206983_5fdb4a87acc0a_scarlet-minivet.jpg',
    'https://lekhapora24.net/wp-content/uploads/60336399_875235476152256_5987000087807524864_o-750x430.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtDXW7D0fhehDKT6GYL2j8dzFFNmg3c84uPQ&usqp=CAU',
    'https://i.ytimg.com/vi/fdDRhm6BDs0/maxresdefault.jpg',
  ];

  List<String> deshipakhiTag = [
    'Banana',
    'Apple',
    'Orange',
    'Mango',
    'Grape',
  ];

  List<String> deshipakhiName = [
    'Tiya',
    'Moyna',
    'Doel',
    'Choroi',
    'Duphi',
  ];
  List<String> dsehipakhiDate = [
    '11-01-2021',
    '04-03-2021',
    '23-05-2021',
    '01-07-2021',
    '19-09-2021',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: const DetailScreen(),
        // HomeScreen(
        //     deshipakhiImage: deshipakhiImage,
        //     deshipakhiTag: deshipakhiTag,
        //     deshipakhiName: deshipakhiName,
        //     dsehipakhiDate: dsehipakhiDate,
        //     ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: _selectedIndex == 0
                  ? const Icon(Icons.home)
                  : const Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 1
                  ? const Icon(Icons.add_box)
                  : const Icon(Icons.add_box_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 2
                  ? const Icon(Icons.person)
                  : const Icon(Icons.person_outlined),
              label: 'Home',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: onTapped,
        ),
      ),
    );
  }
}
