import 'package:flutter/material.dart';
import 'package:movie/details/details.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
    required this.title,
    required this.sub,
    this.desc,
    required this.like,
  });
  final String title;
  final String sub;
  final String? desc;
  final double like;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Details(
                      title: title,
                      sub: sub,
                      desc: desc ?? '',
                      like: like,
                    ),
                  ),
                );
              },
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromARGB(90, 0, 101, 114),
                ),
                child: Icon(
                  Icons.movie,
                  size: 28,
                  color: Color.fromARGB(199, 0, 101, 114),
                ),
              ),
            ),
            SizedBox(width: 15),
            // 2
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(sub, style: TextStyle(fontSize: 14)),
              ],
            ),
            Spacer(),
            //SizedBox(width: 100),
            // 3
            Padding(
              padding: const EdgeInsets.only(top: 35.0, right: 10),
              child: Text(
                '⭐$like',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
