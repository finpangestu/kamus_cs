// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:kamus_cs/views/edit_kamus_cs.dart';

class ListCard extends StatelessWidget {
  final String question;
  final String answer;

  ListCard({
    Key key,
    @required this.question,
    @required this.answer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: ValueKey(0),

      endActionPane: ActionPane(
        motion: DrawerMotion(),
        children: [
          SlidableAction(
              flex: 1,
              onPressed: null,
              backgroundColor: Color.fromARGB(254, 125, 125, 125),
              foregroundColor: Colors.white,
              icon: Icons.copy),
          SlidableAction(
            flex: 1,
            onPressed: (context) {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return EditKamusCS();
              }));
            },
            backgroundColor: Color.fromARGB(254, 54, 153, 255),
            foregroundColor: Colors.white,
            icon: Icons.edit_note,
          ),
          SlidableAction(
            flex: 1,
            onPressed: null,
            backgroundColor: Color.fromARGB(254, 37, 211, 102),
            foregroundColor: Colors.white,
            icon: Icons.whatsapp,
          ),
        ],
      ),

      //box
      child: Container(
        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 20, 10),
              child: Text(
                question,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  color: Color.fromARGB(254, 159, 159, 185),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 20, 10),
              child: Text(
                answer,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
            Divider(
              thickness: 1,
              color: Color.fromARGB(253, 204, 204, 207),
              height: 0,
            ),
          ],
        ),
      ),
    );
  }
}
