import 'package:flutter/material.dart';
import 'package:movie/home/widget/container_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie Explorer'),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 20),
          Icon(Icons.more_vert),
          SizedBox(width: 10),
        ],
        backgroundColor: const Color.fromARGB(199, 0, 101, 114),
        foregroundColor: Colors.white,
        toolbarHeight: 65,
      ),
      drawer: Column(),

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(173, 200, 234, 238),
              Color.fromARGB(131, 148, 240, 252),
              Color.fromARGB(153, 200, 234, 238),
              Color.fromARGB(131, 148, 240, 252),
            ],
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              color: Color.fromARGB(29, 0, 101, 114),
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 10),
                child: Text(
                  "Popular Movies",
                  style: TextStyle(
                    color: Color.fromARGB(199, 0, 101, 114),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // 1
                      ContainerWidget(
                        title: 'Inception',
                        sub: 'Sci-Fi . 2010',
                        like: 9.0,
                        desc:
                            'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.',
                      ),
                      // 2
                      ContainerWidget(
                        title: 'The Martix',
                        sub: 'Sci-Fi . 1999',
                        like: 8.0,
                        desc:
                            'When a beautiful stranger leads computer hacker Neo to a forbidding underworld, he discovers the shocking truth--the life he knows is the elaborate deception of an evil cyber-intelligence.',
                      ),
                      // 3
                      ContainerWidget(
                        title: 'Interstellar',
                        sub: 'Sci-Fi . 2014',
                        like: 6.3,
                        desc:
                            'A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival.',
                      ),
                      // 4
                      ContainerWidget(
                        title: 'Inception',
                        sub: 'Sci-Fi . 2025',
                        like: 9.9,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
