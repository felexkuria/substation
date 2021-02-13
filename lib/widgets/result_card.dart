import 'package:flutter/material.dart';
import 'package:substation/models/panels.dart';

class ResultCard extends StatelessWidget {
  ResultCard({this.result, this.date});
  final String result;
  final String date;
  List<Panels> panels = [
    Panels(names: 'N1'),
    Panels(names: 'N2 Active'),
    Panels(names: 'N2 Reactive'),
    Panels(names: 'N3 Active'),
    Panels(names: 'N3 Reactive'),
    Panels(names: 'N6'),
    Panels(names: 'N7'),
    Panels(names: 'N9'),
    Panels(names: 'N10'),
    Panels(names: 'N1'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: Colors.black),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            date,
            //widget.result1980.substring(0, 7),
            style: TextStyle(
              fontFamily: 'Quicksand',
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
              color: Color(0xFF20BFA9),
            ),
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            width: 20.0,
          ),
          Text(
            'Panel No',
            //widget.result660.substring(0, 7),
            style: TextStyle(
              fontFamily: 'Quicksand',
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
              color: Color(0xFF20BFA9),
            ),
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            width: 20.0,
          ),
          Text(
            result,
            //widget.result.substring(0, 7),
            style: TextStyle(
              fontFamily: 'Quicksand',
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
              color: Color(0xFF20BFA9),
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
