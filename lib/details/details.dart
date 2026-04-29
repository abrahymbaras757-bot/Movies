import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({
    super.key,
    required this.title,
    required this.sub,
    this.desc = '',
    required this.like,
  });
  final String title;
  final String sub;
  final String? desc;
  final double like;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie Details'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(199, 0, 101, 114),
        foregroundColor: Colors.white,
      ),

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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 7),
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(61, 0, 101, 114),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 5.0,
                            horizontal: 10,
                          ),
                          child: Text(
                            sub,
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 101, 114),
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        "تقييم الفيلم",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 7),
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(61, 0, 101, 114),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 5.0,
                            horizontal: 10,
                          ),
                          child: Text(
                            '⭐ ${like}',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 101, 114),
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15),
              Text(desc!, style: TextStyle(fontSize: 17, color: Colors.black)),

              Spacer(),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(199, 0, 101, 114),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'Go Back',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
