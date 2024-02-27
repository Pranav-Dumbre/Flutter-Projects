/*
    Problem Statement : We have 3 players in each format who have maximum runs in each format,
     we have to show 3 players at a time on screen, and then next format
*/
import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: ListViewDemo(),
//       ),
//     );
//   }
// }

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({super.key});

  @override
  State createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State {
  List<List<String>> PlayerImg = [
    [
      "https://cdn.britannica.com/48/252748-050-C514EFDB/Virat-Kohli-India-celebrates-50th-century-Cricket-November-15-2023.jpg",
      "https://www.mykhel.com/img/2018/11/rohitsharma-cropped_fg3ec7qrkgv1b6j0scq9o1gr.jpg",
      "https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_1200,q_50/lsci/db/PICTURES/CMS/342600/342690.jpg"
    ],
    [
      "https://static.toiimg.com/thumb/msid-90271894,width-1280,height-720,resizemode-4/90271894.jpg",
      "https://imgresizer.eurosport.com/unsafe/1200x0/filters:format(jpeg)/origin-imgresizer.eurosport.com/2014/12/03/1364267-29279285-2560-1440.jpg",
      "https://images.hindustantimes.com/img/2022/09/08/1600x900/ANI-20220908347-0_1662659270899_1662659270899_1662659283445_1662659283445.jpg"
    ],
    [
      "https://cdn.zeebiz.com/sites/default/files/styles/zeebiz_850x478/public/2023/04/22/238236-sachin-ians.jpg?itok=MuCaig4g",
      "https://images.mid-day.com/images/images/2024/jan/rd_d.jpg",
      "https://img.bleacherreport.net/img/images/photos/002/674/892/hi-res-458836937-jacques-kallis-of-south-africa-drives-straight-for-a_crop_north.jpg?1387895339&w=3072&h=2048"
    ]
  ];

  List formats = ["T20", "ODI", "Test"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Cricket Format",
          ),
          // titleTextStyle: const TextStyle(
          //   fontWeight: FontWeight.w600,
          //   fontSize: 27.5,
          //   color: Colors.black,
          // ),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.elliptical(10, 10))),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 68, 193, 251),
        ),
        body: ListView.separated(
            itemBuilder: (BuildContext context, int index1) {
              return Column(
                children: [
                  Text(
                    formats[index1],
                    style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(13),
                    height: 500,
                    width: 500,
                    child: ListView.builder(
                        itemBuilder: (context, index2) {
                          return Container(
                            padding: const EdgeInsets.all(13),
                            height: 250,
                            width: 250,
                            child: Image.network(PlayerImg[index1][index2]),
                          );
                        },
                        itemCount: PlayerImg[index1].length),
                  ),
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Text(
                  "-------------------------------------------------------------------------");
            },
            itemCount: formats.length));
  }
}
