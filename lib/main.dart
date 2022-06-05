import 'dart:math';

import 'package:bacakomik/SettingPage.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:bacakomik/warna.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'avenir',
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> imageList = [
    "https://doms2cents.com/wp-content/uploads/2021/12/71goH8p2ENL-e1638802830439-990x1206.jpg",
    "https://picfiles.alphacoders.com/116/thumb-116992.jpg",
    "https://picfiles.alphacoders.com/401/thumb-401396.jpg",
    "https://i.pinimg.com/originals/df/c9/38/dfc938339185dc25f764d7e080899d24.jpg",
    "https://static.wikia.nocookie.net/berserk/images/2/26/Manga_V1_Cover.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: abu800,
      appBar: AppBar(
        elevation: 100,
        backgroundColor: abu900,
        title: Container(
          child: Row(
            children: <Widget>[
              Text(
                "BACA",
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.w900, color: putih),
              ),
              Column(
                children: <Widget>[
                  Text(
                    "K",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w900,
                      color: putih,
                    ),
                  ),
                  Container(
                    height: 3,
                    width: 15,
                    color: putih,
                  )
                ],
              ),
              Text(
                "OMIK",
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.w900, color: putih),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Icon(Icons.search, size: 28, color: putih),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20, left: 5),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => SettingPage(), maintainState: false));
              },
              child: Row(
                children: [
                  Icon(Icons.settings, size: 28, color: putih),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(15),
            child: Stack(
              children: <Widget>[
                Container(
                  child: CarouselSlider(
                    items: imageList
                        .map((e) => ClipRRect(
                              borderRadius: BorderRadius.circular(6),
                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  Image.network(
                                    e,
                                    height: 230,
                                    width: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ))
                        .toList(),
                    options: CarouselOptions(
                        height: 230,
                        viewportFraction: 0.44,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                        autoPlay: true),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10, left: 10),
            child: Text(
              '🔥Hot Released🔥',
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.w900, color: merah),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            width: double.infinity,
            child: Row(
              children: [
                Container(
                  child: Row(
                    children: [
                      Image.network(
                        "https://w0.peakpx.com/wallpaper/455/146/HD-wallpaper-my-hero-academia-anime-manga-japanese-book-anime-cover.jpg",
                        height: 110,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Boku No Hero Academia ",
                              style: TextStyle(
                                  color: putih,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Chapter 348",
                              style: TextStyle(
                                  color: putih,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Chapter 347",
                              style: TextStyle(
                                  color: putih,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Chapter 346",
                              style: TextStyle(
                                  color: putih,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            width: double.infinity,
            child: Row(
              children: [
                Container(
                  child: Row(
                    children: [
                      Image.network(
                        "https://pbs.twimg.com/media/E0OP0hOWEAIlEIS.jpg",
                        height: 110,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Jujutsu Kaisen",
                              style: TextStyle(
                                  color: putih,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Chapter 179",
                              style: TextStyle(
                                  color: putih,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Chapter 178",
                              style: TextStyle(
                                  color: putih,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Chapter 176",
                              style: TextStyle(
                                  color: putih,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            width: double.infinity,
            child: Row(
              children: [
                Container(
                  child: Row(
                    children: [
                      Image.network(
                        "https://cdn.archonia.com/images/1-104047489-1-1-original1/black-clover-vol-27-gn-manga.jpg",
                        height: 110,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Black Clover",
                              style: TextStyle(
                                  color: putih,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Chapter 327",
                              style: TextStyle(
                                  color: putih,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Chapter 326",
                              style: TextStyle(
                                  color: putih,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Chapter 325",
                              style: TextStyle(
                                  color: putih,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
