//-----------change password--------//---------page25--------//
import 'dart:ui';

import 'package:emarket/conttroller/userconttroller.dart';
import 'package:flutter/material.dart';
import 'package:emarket/Resorses/resources.dart';
import 'package:emarket/Resorses/string_resourc.dart';
import 'package:emarket/widgets/field.dart';

class Creat extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CreatState();
  }
}

class CreatState extends State<Creat> {
  Emarket db = Emarket();
  //controller
  final _currentpassword = new TextEditingController();
  final _newpassword = new TextEditingController();
  final _confirmpassword = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamedAndRemoveUntil(
                '/Signin', (Route<dynamic> route) => false);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: blac,
          ),
        ),
      ),
      body: new Container(
        alignment: Alignment.center,
        child: new Column(
          children: [
            //text(open string page for edit)
            Text(str_t_changepass,
                style: TextStyle(
                    //style(color,fonts)
                    fontFamily: "Stc",
                    color: blac,
                    fontSize: 22,
                    fontWeight: FontWeight.bold)),
            Container(
              // margin image about text
              margin: EdgeInsets.only(top: size.height * .09),
              //size image width +highet=139
              width: size.width * .38,
              height: size.height * .21,
              // file image
              child: Image.asset('images/icon2.png'),
            ),
            //currentpassword

            Container(
              // margin textfield about image
              margin: EdgeInsets.only(top: size.height * .08),
              // size
            ),
            textField(
              context,
              _currentpassword,
              str_wordcurrent,
            ),

            Container(
              // margin between text field
              margin: EdgeInsets.only(top: size.height * .02),
            ),

            textField(
              context,
              _newpassword,
              str_npassword,
            ),

            Container(
              // margin between texts field
              margin: EdgeInsets.only(top: size.height * .02),
            ),
            textField(
              context,
              _confirmpassword,
              str_cnpassword,
            ),

            Container(
              // margin rised button about text field
              margin: EdgeInsets.only(top: size.height * .05),
              // size
              height: size.height * .07,
              width: size.width * .76,
              // ignore: deprecated_member_use
              child: RaisedButton(
                  // text (open string page for Edit)
                  child: Text(
                    str_t_changepass,
                    // style(color+fonts)
                    style: TextStyle(
                        fontFamily: "Stc",
                        color: white,
                        fontWeight: FontWeight.bold,
                        fontSize: 19.0),
                  ),
                  // color rised button
                  color: ongo,
                  // theme border
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  onPressed: () async {
                    if (_currentpassword.text.trim().isNotEmpty &&
                        _newpassword.text.trim().isNotEmpty &&
                        _confirmpassword.text.trim().isNotEmpty) {
                      if ((_newpassword.text.trim()) ==
                          (_confirmpassword.text.trim())) {
                        db
                            .reset(tok, _newpassword.text.trim(),
                                _confirmpassword.text.trim())
                            .whenComplete(() {
                          print(_newpassword.text);
                          print(_confirmpassword.text);
                          print(db.msg);
                          if ((db.msg) == "success") {
                            _showdialog(size);
                          } else {
                            showdial(context, db.msg);
                          }
                        });
                      } else {
                        showdial(context, 'Passwords do not mutch');
                      }
                    } else {
                      showdial(context, 'All field are required ');
                    }
                  }),
            ),
            Container(
              margin: EdgeInsets.only(top: size.height * .056),
              child: Text(
                str_develebors,
                style: TextStyle(
                    color: Color(0xffa2aece),
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _showdialog(var size) {
    showDialog(
        context: context,
        builder: (
          BuildContext context,
        ) {
          return AlertDialog(
              backgroundColor: Color(0xfff8f9ff),
              content: SingleChildScrollView(child: StatefulBuilder(
                  builder: (BuildContext context, StateSetter setState) {
                return Scaffold(
                  appBar: AppBar(
                    leading: IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            '/Creat', (Route<dynamic> route) => false);
                      },
                      icon: Icon(Icons.close),
                    ),
                  ),
                  body: new Container(
                    width: size.width * .7757,
                    height: size.height * .2796,
                    color: Color(0xfff8f9ff),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: size.height * .07),
                          alignment: Alignment.center,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              new Text(
                                str_suucsse,
                                style: TextStyle(
                                    color: Color(0xff8a9cc0),
                                    fontSize: ((size.width * .0483) > 20)
                                        ? 20
                                        : (size.width * .047)),
                              ),
                              new Text(
                                str_suucsse2,
                                style: TextStyle(
                                    color: Color(0xff8a9cc0),

                                    //fontWeight: FontWeight.bold,
                                    fontSize: ((size.width * .0483) > 20)
                                        ? 20
                                        : (size.width * .047)),
                              ),
                              Container(
                                margin:
                                    EdgeInsets.only(top: size.height * .0502),
                                height: size.width * .2147,
                                width: size.width * .2147,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/icon3.png'))),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              })));
        });
  }
}
