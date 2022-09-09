// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, library_prefixes, missing_return, missing_required_param

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:kamus_cs/models/kamus_data.dart';
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
          FutureBuilder(
            future: ReadJsonData(),
            builder: ((context, data) {
              if (data.hasError) {
                return Center(
                  child: Text('${data.error}'),
                );
              } else if (data.hasData) {
                var items = data.data as List<KamusData>;
                return ListView.builder(
                  itemCount: items.length,
                  itemBuilder: ((context, index) {
                    return ListCard(
                        question: items[index].question.toString(),
                        answer: items[index].answer.toString());
                  }),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
          ),
        ],
      ),
    );
  }

  Future<List<KamusData>> ReadJsonData() async {
    final jsondata =
        await rootBundle.rootBundle.loadString('jsonfile/kamuslist.json');
    final list = json.decode(jsondata) as List<dynamic>;

    return list.map((e) => KamusData.fromJson(e)).toList();
  }
}
