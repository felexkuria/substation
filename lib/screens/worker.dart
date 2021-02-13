import 'package:flutter/material.dart';
import 'package:substation/widgets/result_card.dart';

class Worker extends StatefulWidget {
  Worker({@required this.result660, this.result1980, this.result, this.date});
  final String result660;
  final String result1980;
  final String result;
  final String date;

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
          Text(
            widget.result660.substring(0, 6),
            style: TextStyle(
              fontFamily: 'Quicksand',
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
              color: Color(0xFF20BFA9),
            ),
            overflow: TextOverflow.ellipsis,
          ),
          ResultCard(
            date: widget.date,
            result: '1',
          ),
          ResultCard(
            date: widget.date,
            result: widget.result,
          ),
          ResultCard(
            date: widget.date,
            result: widget.result,
          ),
        ],
      ),
    );
  }
}
