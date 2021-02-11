import 'package:flutter/material.dart';
import 'package:substation/services/sign_in.dart';
import 'dashboard.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  // String time = 'loading';
  void loadLogin() async {}

  @override
  void initState() {
    super.initState();
    // print('object in Init State');
    // worldTime.getTime();
    //loadLogin();
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
