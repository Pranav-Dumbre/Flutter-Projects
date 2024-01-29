import 'package:flutter/material.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});
  @override
  State<Portfolio> createState() {
    return _PortfolioState();
  }
}

class _PortfolioState extends State<Portfolio> {
  int count = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Portfolio"),
        backgroundColor: const Color.fromARGB(255, 0, 54, 148),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: const Icon(Icons.add_rounded),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://i.pinimg.com/564x/01/50/af/0150afa24b80b0a16a78fdf31b357701.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Center(
              child: Column(
                children: [
                  (count >= 0)
                      ? const Text(
                          "Name : Pranav Dumbre",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      : const SizedBox(height: 20),
                  const SizedBox(
                    height: 10,
                  ),
                  (count >= 1)
                      ? Image.network(
                          'https://pbs.twimg.com/profile_images/1504876739293429761/2QwhVdGn_400x400.jpg',
                          height: 200,
                          width: 200,
                        )
                      : const SizedBox(
                          height: 200,
                          width: 200,
                        ),
                  const SizedBox(
                    height: 10,
                  ),
                  (count >= 2)
                      ? const Text(
                          "College : SKNCOE",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      : const SizedBox(height: 20),
                  const SizedBox(
                    height: 10,
                  ),
                  (count >= 3)
                      ? Image.network(
                          'https://images.collegedunia.com/public/college_data/images/logos/1616602798Logo.jpg',
                          height: 200,
                          width: 200,
                        )
                      : const SizedBox(
                          height: 200,
                          width: 200,
                        ),
                  const SizedBox(
                    height: 10,
                  ),
                  (count >= 4)
                      ? const Text(
                          "Dream Company : Adobe",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      : const SizedBox(height: 20),
                  const SizedBox(
                    height: 10,
                  ),
                  (count >= 5)
                      ? Image.network(
                          'https://yt3.googleusercontent.com/ytc/AIf8zZQA2w4fmXeD_Y0GKWtDKSHEF5sM_W6--6FfFKXxsQ=s900-c-k-c0x00ffffff-no-rj',
                          height: 200,
                          width: 200,
                        )
                      : const SizedBox(
                          height: 200,
                          width: 200,
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
