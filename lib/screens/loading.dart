import 'package:flutter/material.dart';
import 'package:substation/services/sign_in.dart';
import 'dashboard.dart';
import 'reading_screen.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  // String time = 'loading';
  void setUpWorldTime() async {
    await signInWithGoogle()
        .whenComplete(() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            // return null;
            return DashBoard();
          },
        ),
      );
    });
  }







  @override
  void initState() {
    super.initState();
    // print('object in Init State');
    // worldTime.getTime();
    setUpWorldTime();
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
