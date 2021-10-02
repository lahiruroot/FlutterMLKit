import 'package:flutter/material.dart';

class DisplayCard extends StatelessWidget {
  const DisplayCard({ 
    this.text,
    this.onPressed,
  });
  final text;
  final onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                            onTap:onPressed
                            ,
                            child: Container(
                              width: 555,
                              height:  90,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Center(
                                child: Text(
                                  text
                                ),
                              ),
                            ),
                          );
  }
}
