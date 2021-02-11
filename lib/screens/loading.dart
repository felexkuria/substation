import 'package:flutter/material.dart';
import 'dashboard.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  // String time = 'loading';
  void loadLogin() async {
    // signInWithGoogle().whenComplete(() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          // return null;
          return DashBoard();
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    // print('object in Init State');
    // worldTime.getTime();
    loadLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[100],
      body: SafeArea(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
