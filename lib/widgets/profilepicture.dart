import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.purple, Colors.amber]),
                  borderRadius: BorderRadius.circular(60),
                )),
            Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://img2.beritasatu.com/cache/beritasatu/960x620-3/1638344098.jpg'),
                      fit: BoxFit.cover),
                  border: Border.all(color: Colors.white, width: 3),
                  borderRadius: BorderRadius.circular(60),
                  color: Colors.blue,
                )),
          ],
        )
      ],
    );
  }
}
