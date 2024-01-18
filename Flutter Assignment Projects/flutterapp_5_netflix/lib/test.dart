import 'dart:ffi';

import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Whatsapp",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 38, 161, 42),
        actions: const [
          Icon(Icons.camera_alt_outlined),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.search_outlined),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.more_vert),
        ],
      ),
      /*  bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined),
          label: "Profile",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings_accessibility_rounded),
          label: "Settings",
        ),
      ]),*/
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZO4G5zGAqJKA5yVDUU-jHw-x9IzwIMT7Xzc8zzhkDpw&s"))),
                  ),
                  
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Pranav Dumber",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "   Last Seen   2 hours ago",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZO4G5zGAqJKA5yVDUU-jHw-x9IzwIMT7Xzc8zzhkDpw&s"))),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Pranav Dumber",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "   Last Seen   2 hours ago",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
             SizedBox(
              height: 10,
            ),
                       Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZO4G5zGAqJKA5yVDUU-jHw-x9IzwIMT7Xzc8zzhkDpw&s"))),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Pranav Dumber",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "   Last Seen   2 hours ago",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
                       Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZO4G5zGAqJKA5yVDUU-jHw-x9IzwIMT7Xzc8zzhkDpw&s"))),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Pranav Dumber",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "   Last Seen   2 hours ago",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
                       Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZO4G5zGAqJKA5yVDUU-jHw-x9IzwIMT7Xzc8zzhkDpw&s"))),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Pranav Dumber",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "   Last Seen   2 hours ago",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
                       Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZO4G5zGAqJKA5yVDUU-jHw-x9IzwIMT7Xzc8zzhkDpw&s"))),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Pranav Dumber",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "   Last Seen   2 hours ago",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
                       Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZO4G5zGAqJKA5yVDUU-jHw-x9IzwIMT7Xzc8zzhkDpw&s"))),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Pranav Dumber",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "   Last Seen   2 hours ago",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
                       Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZO4G5zGAqJKA5yVDUU-jHw-x9IzwIMT7Xzc8zzhkDpw&s"))),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Pranav Dumber",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "   Last Seen   2 hours ago",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
                       Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZO4G5zGAqJKA5yVDUU-jHw-x9IzwIMT7Xzc8zzhkDpw&s"))),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Pranav Dumber",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "   Last Seen   2 hours ago",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
                       Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZO4G5zGAqJKA5yVDUU-jHw-x9IzwIMT7Xzc8zzhkDpw&s"))),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Pranav Dumber",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "   Last Seen   2 hours ago",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
                       Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZO4G5zGAqJKA5yVDUU-jHw-x9IzwIMT7Xzc8zzhkDpw&s"))),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "PraDumber",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "   Last Seen   2 hours ago",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
                       Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZO4G5zGAqJKA5yVDUU-jHw-x9IzwIMT7Xzc8zzhkDpw&s"))),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Pranav Dumber",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "   Last Seen   2 hours ago",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
                       Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZO4G5zGAqJKA5yVDUU-jHw-x9IzwIMT7Xzc8zzhkDpw&s"))),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Pranav Dumber",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "   Last Seen   2 hours ago",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
                       Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZO4G5zGAqJKA5yVDUU-jHw-x9IzwIMT7Xzc8zzhkDpw&s"))),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Pranav Dumber",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "   Last Seen   2 hours ago",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
                       Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZO4G5zGAqJKA5yVDUU-jHw-x9IzwIMT7Xzc8zzhkDpw&s"))),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Pranav Dumber",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "   Last Seen   2 hours ago",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
                       Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZO4G5zGAqJKA5yVDUU-jHw-x9IzwIMT7Xzc8zzhkDpw&s"))),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Pranav Dumber",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "   Last Seen   2 hours ago",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
                       Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZO4G5zGAqJKA5yVDUU-jHw-x9IzwIMT7Xzc8zzhkDpw&s"))),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Pranav Dumber",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "   Last Seen   2 hours ago",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
                       Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZO4G5zGAqJKA5yVDUU-jHw-x9IzwIMT7Xzc8zzhkDpw&s"))),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Pranav Dumber",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "   Last Seen   2 hours ago",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
                       Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZO4G5zGAqJKA5yVDUU-jHw-x9IzwIMT7Xzc8zzhkDpw&s"))),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Pranav Dumber",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "   Last Seen   2 hours ago",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
                       Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZO4G5zGAqJKA5yVDUU-jHw-x9IzwIMT7Xzc8zzhkDpw&s"))),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Pranav Dumber",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "   Last Seen   2 hours ago",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
                       Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZO4G5zGAqJKA5yVDUU-jHw-x9IzwIMT7Xzc8zzhkDpw&s"))),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "PraSiddhi",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "   Last Seen   2 hours ago",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
          
          ],
          
        ),
      ),
    );
  }
}
