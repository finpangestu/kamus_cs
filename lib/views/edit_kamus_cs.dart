// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';

class EditKamusCS extends StatefulWidget {
  const EditKamusCS({Key? key}) : super(key: key);

  @override
  State<EditKamusCS> createState() => _EditKamusCSState();
}

class _EditKamusCSState extends State<EditKamusCS> {
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
          color: Color.fromARGB(254, 0, 174, 255),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Edit Kamus CS',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kamus CS',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 5, 0, 20),
              child: TextField(
                maxLines: 5,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: 'Enter a message... .',
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onChanged: (value) {
                  setState(() {});
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Simpan',
                  style: TextStyle(fontFamily: 'Poppins'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
