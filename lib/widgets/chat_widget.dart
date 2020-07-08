import 'package:flutter/material.dart';
import 'package:whats/util/custom_colors.dart';

//aaaaaaaaaaaaa
class ChatWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: 90,
            margin: EdgeInsets.only(bottom: 10),
            child: CircleAvatar(
              radius: 32,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(right: 15),
              margin: EdgeInsets.only(top: 8),
              child: Container(
                height: 90,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'John of the nike',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          '11:48 AM',
                          style: TextStyle(
                              color: CustomColors().lightGreen,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Sabe onde eu to, mano?',
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 18,
                            )),
                        Container(
                          margin: EdgeInsets.only(right: 6),
                          child: CircleAvatar(
                            child: Text(
                              '2',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            radius: 12,
                            backgroundColor: CustomColors().lightGreen,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
