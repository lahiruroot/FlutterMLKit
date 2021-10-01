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
                              width: 200,
                              height:  50,
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(20),
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