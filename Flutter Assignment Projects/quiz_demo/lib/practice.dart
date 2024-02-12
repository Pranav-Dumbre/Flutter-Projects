import 'package:flutter/material.dart';

class Spotify extends StatefulWidget {
  const Spotify({super.key});
  @override
  State createState() => _SpotifyState();
}

class _SpotifyState extends State<Spotify> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWKq2m8Pbk8RBERXzdpsmJ7GRdC1ycg0N75pPiwlR_-3YJ5Mvw8Q0z4uxc5baRtTmc6BU&usqp=CAU"),
        title: const Text(
          "Spotify",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
        ),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            " Good Morning",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 60,
                width: 200,
                color: Colors.pink,
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.favorite_rounded),
                      Text(
                        "Liked Songs",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      )
                    ]),
              ),
              Container(
                height: 60,
                width: 200,
                color: Colors.green,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.network(
                          "https://cdns-images.dzcdn.net/images/cover/8139fc6191e8f102e693c83f35093b59/500x500.jpg"),
                      const Text(
                        "Bollywood",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ]),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 60,
                width: 200,
                color: Colors.amber,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.network(
                          "https://i.pinimg.com/736x/5b/79/4e/5b794ee6d023618e9a84039595245c38.jpg"),
                      Text(
                        "Hollywood",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      )
                    ]),
              ),
              Container(
                height: 60,
                width: 200,
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.network(
                        "https://c.saavncdn.com/459/Papa-Meri-Jaan-From-ANIMAL-Hindi-2023-20231114011003-500x500.jpg"),
                    const Text(
                      "Animal",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 60,
                width: 200,
                color: Colors.purple,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR07NdUReoUVt4RA2qEJdwemL1eVVhmv1vbbcX1eVj_dzT6E8XMCICi8EoD1pKd5Sys2jU&usqp=CAU"),
                      Text(
                        "Marathi",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      )
                    ]),
              ),
              Container(
                height: 60,
                width: 200,
                color: Colors.yellow,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.network(
                          "https://e-cdn-images.dzcdn.net/images/cover/5e7df4daa63fef57a4adaed5ce9ae000/500x500-000000-80-0-0.jpg"),
                      const Text(
                        "Patriotic",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ]),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            " Charts",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                //Spacer(),
                SizedBox(
                  height: 300,
                  width: 250,
                  child: Column(children: [
                    Image.network(
                      "https://i.scdn.co/image/ab67616d00001e0290ea1f0a4ade9d2787a631a1",
                      height: 250,
                      width: 250,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Arijit Singh , Pritam, Anirudh Ravichandran...",
                      style: TextStyle(fontSize: 18),
                    ),
                  ]),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 350,
                  width: 250,
                  child: Column(children: [
                    Image.network(
                      "https://i.scdn.co/image/ab67706f000000029b6b827913a29a7aee530f05",
                      height: 250,
                      width: 250,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Anirudh Ravichandran , hesham Abdul Wahab...",
                      style: TextStyle(fontSize: 18),
                    ),
                  ]),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 300,
                  width: 250,
                  child: Column(children: [
                    Image.network(
                      "https://i.scdn.co/image/ab67706f00000002a7fefe95829dc8e91a9abd6a",
                      height: 250,
                      width: 250,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Ariana Grande , Taylor Swift , Shakira...",
                      style: TextStyle(fontSize: 18),
                    ),
                  ]),
                ),
              ],
            ),
          ),
          const Text(
            " Trending",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          //second -------------------------------------------------------------
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                //Spacer(),
                SizedBox(
                  height: 400,
                  width: 250,
                  child: Column(children: [
                    Image.network(
                      "https://i.scdn.co/image/ab67706f000000029f401bcf1a8acc0c1aada8b8",
                      height: 250,
                      width: 250,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Arijit Singh , Pritam, Anirudh Ravichandran...",
                      style: TextStyle(fontSize: 18),
                    ),
                  ]),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 400,
                  width: 250,
                  child: Column(children: [
                    Image.network(
                      "https://i.scdn.co/image/ab67706c0000da8490892ba1d64d481f9ae5c35f",
                      height: 250,
                      width: 250,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Anirudh Ravichandran , hesham Abdul Wahab...",
                      style: TextStyle(fontSize: 18),
                    ),
                  ]),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 400,
                  width: 250,
                  child: Column(children: [
                    Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-d2iG_3wMSSePvdYlNTnUNSHdbeDiK_Fo9XELizHsVdylpy5-1iaiFLsZNiyI4mB37Zo&usqp=CAU",
                      height: 250,
                      width: 250,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Ariana Grande , Taylor Swift , Shakira...",
                      style: TextStyle(fontSize: 18),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
