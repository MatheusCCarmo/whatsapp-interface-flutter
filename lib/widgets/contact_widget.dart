import 'package:flutter/material.dart';
import 'package:whats/model/user.dart';
import 'package:whats/util/custom_colors.dart';

class ContactWidget extends StatelessWidget {
  User _user;
  ContactWidget(this._user);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
            child: ClipOval(
                child: SizedBox(
                    width: 60,
                    height: 60,
                    child: Image.asset(
                      _user.imageSrc == null
                          ? 'assets/images/avatar.png'
                          : _user.imageSrc,
                      fit: BoxFit.cover,
                    ))),
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
                          _user.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          _user.platform.toUpperCase(),
                          style: TextStyle(
                              color: CustomColors().lightGreen,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(_user.description,
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 18,
                        )),
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
