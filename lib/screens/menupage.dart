import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutterml/screens/displaycard.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mlkit/mlkit.dart';

const String TEXT_SCANNER = 'TEXT_SCANNER';
const String BARCODE_SCANNER = 'BARCODE_SCANNER';
const String LABEL_SCANNER = 'LABEL_SCANNER';
const String FACE_SCANNER = 'FACE_SCANNER';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  static const String CAMERA_SOURCE = 'CAMERA_SOURCE';
  static const String GALLERY_SOURCE = 'GALLERY_SOURCE';

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  File? _file;
  String _selectedScanner = TEXT_SCANNER;
  List<Widget> columns = [];
  List<Widget> buildColumns(){
    columns = [];
    columns.add(DisplayCard(
      text: 'Text Scanner',
      onPressed: (){
        //add navigation
      },
    ));
    columns.add(SizedBox(height: 20,));
    columns.add(DisplayCard(
      text: 'Barcode Scanner',
      onPressed: (){
        //add navigation
      },
    ));
    columns.add(SizedBox(height: 20,));
    columns.add(DisplayCard(
      text: 'Label Scanner',
      onPressed: (){
        //add navigation
      },
    ));
    columns.add(SizedBox(height: 20,));
    columns.add(DisplayCard(
      text: 'Face Scanner',
      onPressed: (){
        //add navigation
      },
    ));
    columns.add(SizedBox(height: 20,));
    return columns;
    }
  @override
  Widget build(BuildContext context) {
    
 

    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Flutter ML'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: buildColumns()
          ),
        ));
  }
}
