import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/InfoItem.dart';
import 'package:instagram_clone/widgets/StoryItem.dart';
import 'package:instagram_clone/widgets/StoryItemPlus.dart';
import 'package:instagram_clone/widgets/TabItem.dart';
import 'package:instagram_clone/widgets/profilepicture.dart';
import 'package:instagram_clone/widgets/BottomNavigation.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Row(
          children: [
            Text(
              'Username',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.add_box_outlined),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.menu),
            color: Colors.black,
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                ProfilePicture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoItem("Posts", "0,000"),
                      InfoItem("FOllowers", "0,000"),
                      InfoItem("Following", "0,000"),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Fachri Ghiffary',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              text: TextSpan(
                  text:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industri ",
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                        text: '#hastag', style: TextStyle(color: Colors.blue))
                  ]),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Link Goes Here',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: OutlinedButton(
                onPressed: () {},
                child: Text(
                  'Edit Profile',
                  style: TextStyle(color: Colors.black),
                ),
                style: OutlinedButton.styleFrom(primary: Colors.white),
              )),
          SizedBox(
            height: 10,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    StoryItem('Story 1'),
                    StoryItem('Story 2'),
                    StoryItem('Story 3'),
                    StoryItem('Story 3'),
                    StoryItem('Story 3'),
                    StoryItem('Story 3'),
                    StoryItem('Story 3'),
                    StoryItemPlus(),
                  ],
                ),
              )),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TabItem(true, Icons.grid_on_outlined),
              TabItem(false, Icons.person_pin_outlined),
            ],
          ),
          GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 213,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
              itemBuilder: (context, index) => Image.network(
                    'https://picsum.photos/id/873/536/534',
                    fit: BoxFit.cover,
                  ))
        ],
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
