import 'package:flutter/material.dart';

class StoryItemPlus extends StatelessWidget {
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
                  color: Colors.grey[300],
                  border: Border.all(color: Colors.white, width: 3),
                ),
              ),
              Icon(
                Icons.add,
                size: 40,
              )
            ],
          ),
          SizedBox(height: 5),
          Text('New')
        ],
      ),
    );
  }
}
