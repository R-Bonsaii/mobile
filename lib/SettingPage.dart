import 'package:flutter/material.dart';
import 'package:bacakomik/main.dart';
import 'package:bacakomik/warna.dart';
import 'package:bacakomik/home.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);
  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: abu800,
        appBar: AppBar(
          elevation: 100,
          backgroundColor: abu900,
          title: Container(
            child: Row(
              children: <Widget>[
                Text(
                  "Setting",
                  style: TextStyle(
                      fontSize: 23, fontWeight: FontWeight.w600, color: putih),
                ),
              ],
            ),
          ),
          leading: GestureDetector(
            child: Icon(Icons.arrow_back, color: putih),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => MyHomePage()));
            },
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(Icons.pages, size: 28, color: putih),
                  ],
                ),
              ),
            ),
          ],
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "General",
                  style: TextStyle(
                      fontSize: 27, color: putih, fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.pages, size: 40, color: putih),
                          Text("Pages",
                              style: TextStyle(fontSize: 20, color: putih))
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      GestureDetector(
                        onTap: () {
                          if (abu == Colors.grey) {
                            setState(() {
                              abu900 = Colors.red;
                              abu800 = Colors.white;
                              abu = Colors.black;
                              putih = Colors.grey[900];
                              putihGelap = Colors.white60;
                            });
                          } else {
                            setState(() {
                              abu900 = Colors.grey[900];
                              abu800 = Colors.grey[800];
                              abu = Colors.grey;
                              putih = Colors.white;
                              putihGelap = Colors.white10;
                            });
                          }
                        },
                        child: Row(
                          children: [
                            Icon(Icons.dark_mode, size: 40, color: putih),
                            Text(
                              "Switch Theme",
                              style: TextStyle(fontSize: 20, color: putih),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
