import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget {
  const Assignment3({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      //Scaffold is StatefulWidget
      // scaffold is like screen sized Container
      appBar: AppBar( //Header / Name of application
        title: const Text('Assignment 3'),
      ),
      body: SizedBox(
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.orange,
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: () {}, child: const Text("Button 1"))
              ],
            ),
            Column(
              /// Place the free space evenly between the children as well as half of that
              /// space before and after the first and last child.
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Container(
                  //Container is StatelessWidget
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
                const SizedBox(//Creates a fixed size box.

                  //not related to Steful or Stateless
                  height: 20,

                ),
                //ElevatedButton is StatefulWidget
                ElevatedButton(onPressed: () {}, child: const Text("Button 2"))
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber,
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: () {}, child: const Text("Button 3"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
