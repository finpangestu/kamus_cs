// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kamus_cs/views/widgets/list_kamus_card.dart';

class ListKamusCS extends StatefulWidget {
  const ListKamusCS({Key key}) : super(key: key);

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
          color: Color.fromARGB(254, 0, 174, 255),
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
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(30, 20, 30, 20),
            child: TextField(
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                color: Colors.black,
              ),
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
                  borderSide: BorderSide.none,
                ),
              ),
              onChanged: (value) {
                setState(() {});
              },
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
          ListCard(
            title: 'Saya gak mau pake expedisi ###',
            description:
                'Baik kak, kalau boleh tahu kenapa ya kak? supaya saya bantu cari ekspedisi lain',
          ),
          ListCard(
            title: 'Kok cepet banget diskonnya berakhir? gak jadi deh!',
            description:
                'Sebenta kakak, memang promonya sudah berakhir minggu kemarin. Namun besok ada promo baru lagi lho. Klo besok sudah launching, bisa saya kontak lagi kak?',
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
