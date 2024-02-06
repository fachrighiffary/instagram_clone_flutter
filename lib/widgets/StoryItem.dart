import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  StoryItem(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Colors.grey[300])),
              Container(
                height: 77,
                width: 77,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.blue,
                    border: Border.all(color: Colors.white, width: 3),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://img2.beritasatu.com/cache/beritasatu/960x620-3/1638344098.jpg'),
                        fit: BoxFit.cover)),
              ),
            ],
          ),
          SizedBox(height: 5),
          Text(title)
        ],
      ),
    );
  }
}
