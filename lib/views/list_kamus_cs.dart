// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ListKamusCS extends StatefulWidget {
  const ListKamusCS({Key? key}) : super(key: key);

  @override
  State<ListKamusCS> createState() => _ListKamusCSState();
}

class _ListKamusCSState extends State<ListKamusCS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          iconSize: 25,
          padding: EdgeInsets.only(left: 20),
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.blue,
          onPressed: () {},
        ),
        title: Text(
          'List Kamus CS',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(30, 20, 20, 30),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(0),
                fillColor: Colors.lightBlue[50],
                filled: true,
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                hintText: 'Search',
                hintStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hasil',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Berikut kumpulan CS seperti penolakan yang sering ditemui dan cara menjawabnya',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
