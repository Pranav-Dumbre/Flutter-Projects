import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget {
  const Assignment5({super.key});
  @override
  State<Assignment5> createState() => _Assignment5State();
}

class _Assignment5State extends State<Assignment5> {
  bool _like1 = false;
  bool _like2 = false;
  bool _like3 = false;
  bool _like4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Instagram",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 30,
            ),
          ),
          backgroundColor: Colors.white,
          actions: const [
            Icon(
              Icons.favorite_rounded,
              color: Colors.red,
            )
          ],
        ),
/*      body: ListView(//listview is by default Scrollable
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                color: Colors.amber,
                child: Image.network(
                  "https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w600/2023/10/free-images.jpg",
                  width: double.infinity,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_outline_outlined,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.comment_outlined,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                color: Colors.amber,
                child: Image.network(
                  "https://www.shipacarinc.com/wp-content/uploads/2022/11/shipacar_Chevrolet_Corvette_C8_Z06_photorealistic_9ff55562-0be5-45a1-a2d5-7f35d7b8aea1.jpg",
                  width: double.infinity,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_outline_outlined,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.comment_outlined,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                color: Colors.amber,
                child: Image.network(
                  "https://stimg.cardekho.com/images/carexteriorimages/930x620/Aston-Martin/DB12/10185/1696480591668/front-left-side-47.jpg?tr=w-375",
                  width: double.infinity,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_outline_outlined,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.comment_outlined,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                color: Colors.amber,
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2012/08/27/14/19/mountains-55067_640.png",
                  width: double.infinity,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_outline_outlined,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.comment_outlined,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),*/
        body: SingleChildScrollView(
          child: Column(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // height: 200,
                  // color: Colors.amber,
                  child: Image.network(
                    "https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w600/2023/10/free-images.jpg",
                    width: double.infinity,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        _like1 = !_like1;
                      },
                      icon: Icon(
                        _like1
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_outlined,
                      ),
                      color: _like1 ? Colors.red : Colors.black,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    const SizedBox(
                      width: 200,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_outline_outlined,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // height: 200,
                  //   color: Colors.amber,
                  child: Image.network(
                    "https://www.shipacarinc.com/wp-content/uploads/2022/11/shipacar_Chevrolet_Corvette_C8_Z06_photorealistic_9ff55562-0be5-45a1-a2d5-7f35d7b8aea1.jpg",
                    width: double.infinity,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        _like2 = !_like2;
                      },
                      icon: Icon(
                        _like2
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_outlined,
                      ),
                      color: _like2 ? Colors.red : Colors.black,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    const SizedBox(
                      width: 200,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_outline_outlined,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //  height: 200,
                  //  color: Colors.amber,
                  child: Image.network(
                    "https://stimg.cardekho.com/images/carexteriorimages/930x620/Aston-Martin/DB12/10185/1696480591668/front-left-side-47.jpg?tr=w-375",
                    width: double.infinity,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        _like3 = !_like3;
                      },
                      icon: Icon(
                        _like3
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_outlined,
                      ),
                      color: _like3 ? Colors.red : Colors.black,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    const SizedBox(
                      width: 200,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_outline_outlined,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //   height: 200,
                  // color: Colors.amber,
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2012/08/27/14/19/mountains-55067_640.png",
                    width: double.infinity,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        _like4 = !_like4;
                      },
                      icon: Icon(
                        _like4
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_outlined,
                      ),
                      color: _like4 ? Colors.red : Colors.black,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    const SizedBox(
                      width: 200,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_outline_outlined,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ]),
        ));
  }
}
