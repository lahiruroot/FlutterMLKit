import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
// Add this line to import WonderPush at the top of the file
import 'package:wonderpush_flutter/wonderpush_flutter.dart';


class _ExtraState extends State<Extra> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Texrtapp',),
      ),
      
    );
  }
}

void main() {
  runApp(MyApp());
  // Add this line to trigger a push notifications prompt on iOS and subscribe users on Android.
  WonderPush.subscribeToNotifications();
}
class Extra extends StatefulWidget {
  const Extra({ Key? key }) : super(key: key);

  @override
  _ExtraState createState() => _ExtraState();
}
