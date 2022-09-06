// ignore_for_file: unnecessary_null_comparison, non_constant_identifier_names, prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kamus_cs/views/widgets/list_kamus_card.dart';

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
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          iconSize: 25,
          padding: const EdgeInsets.only(left: 20),
          icon: const Icon(Icons.arrow_back_ios),
          color: const Color.fromARGB(254, 0, 174, 255),
          onPressed: () {},
        ),
        title: const Text(
          'List Kamus CS',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(30, 20, 30, 20),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(0),
                fillColor: Colors.lightBlue[50],
                filled: true,
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                hintText: 'Search',
                hintStyle: const TextStyle(
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
            margin: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
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
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
          ListCard(
            title: 'Saya gak mau pake expedisi ###',
            description:
                'Baik kak, kalau boleh tahu kenapa ya kak? supaya saya bantu cari ekspedisi lain',
          ),
        ],
      ),
    );
  }
}
