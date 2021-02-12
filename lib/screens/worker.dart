import 'package:flutter/material.dart';

class Worker extends StatefulWidget {
  Worker({@required this.result660, this.result1980, this.result});
  final String result660;
  final String result1980;
  final String result;
  @override
  _WorkerState createState() => _WorkerState();
}

class _WorkerState extends State<Worker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF232228),
      appBar: AppBar(
        backgroundColor: Color(0xFF070707),
        title: Text('Readings'),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Hero(
                tag: 'wanyama',
                child: CircleAvatar(
                  radius: 120.0,
                  backgroundImage: AssetImage("assets/images/wycliffe.jpg"),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0), color: Colors.black),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Reading Time',
                  //widget.result1980.substring(0, 7),
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                      color: Color(0xFFFFFFFF)),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  'data',
                  //widget.result660.substring(0, 7),
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                      color: Color(0xFFFFFFFF)),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  // 'data',
                  widget.result.substring(0, 7),
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                      color: Color(0xFFFFFFFF)),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
