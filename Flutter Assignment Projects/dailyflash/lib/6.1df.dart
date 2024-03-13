// 1. Create a screen that displays an asset image of the food item at the top of the
// Screen, below the image, display the name of the food item and below the name
// give the description of the item. Add appropriate padding.

import "package:flutter/material.dart";

class DailyFlash extends StatelessWidget {
  const DailyFlash({super.key});
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Food Item",
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 227, 163, 0),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                "assets/p1.png",
                // height: 300,
                // width: 400,
              ),
              const SizedBox(
                height: 20,
                width: double.maxFinite,
              ),
              const Text(
                "PuranPoli",
               
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(14),
                child: const Text(
                  '''
          It is the special dish of Maharashtra which is prepared on every occasion at every house, especially during festivals such as Gudhi Padwa, Akshaya Tritiya, Ganesh Chaturthi and Holi.It is eaten with Basundi, Aamras, Kadhi, Amti, etc. In Maharashtra, Puran Poli is eaten with a variant of Amti (flavored sour curry) known as Katachi Amti which is prepared with the remaining water of cooked Chana Dal used to make Puran Poli. Mainly jaggery is used in puran poli for sweetness. It is eaten with Vada (Bhaji) – a pakora made of all lentils. In some regions of Maharashtra, Puran Poli is served with a dollop of ghee on top, which enhances its flavor and richness. The texture and taste of Puran Poli can vary from region to region, with some areas making it thinner and crispier, while others make it thicker and softer. The process of making Puran Poli can also differ slightly depending on the region, with some using a rolling pin to flatten the dough while others use their hands to shape it. The North-Maharashtra (Khandesh) region makes it using hand and calls it Khapar chi Puran Poli or simply Mande which is huge in size and difficult to make. 
          
                ''',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
