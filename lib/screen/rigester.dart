import 'package:emarket/Resorses/resources.dart';
import 'package:emarket/Resorses/string_resourc.dart';
import 'package:emarket/widgets/background.dart';
import 'package:emarket/widgets/field.dart';
import 'package:flutter/material.dart';
import 'package:emarket/conttroller/databasehelper.dart';
// import 'package:appstore/conttroller/userconttroler.dart';

class SingUp extends StatefulWidget {
  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  DatabaseHelper databaseHelper = new DatabaseHelper();
  String msgstatus = '';
  final _namecontrolr = new TextEditingController();
  final _emailcontrolr = new TextEditingController();
  final _phonecontrolr = new TextEditingController();
  final _passwordcontrolr = new TextEditingController();
  final _c_password = new TextEditingController();
  final _adresscontroller = new TextEditingController();
  // ignore: unused_field
  final _code = new TextEditingController();

  bool _obscureText1 = true;
  bool _obscureText2 = true;

  TextEditingController get text => null;
  @override
  Widget build(BuildContext context) {
    double mgr1 = MediaQuery.of(context).size.height * .02;
    var size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Background(),
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          backgroundColor: Colors.transparent,
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: size.height * .05),
                    height: 550.0,
                    width: 400.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      elevation: 5.0,
                      color: white,
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(left: 16, right: 16),
                        child: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.only(
                                top: mgr1,
                              )),
                              textField(
                                context,
                                _namecontrolr,
                                str_name,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                top: mgr1,
                              )),
                              textField(context, _emailcontrolr, str_Email),
                              Padding(
                                  padding: EdgeInsets.only(
                                top: mgr1,
                              )),
                              textFieldnum(
                                context,
                                _phonecontrolr,
                                str_phone,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                top: mgr1,
                              )),
                              //password
                              TextField(
                                style: TextStyle(color: blue),
                                obscureText: _obscureText1,
                                decoration: InputDecoration(
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _obscureText1 = !_obscureText1;
                                      });
                                    },
                                    child: Icon(
                                      _obscureText1
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                      semanticLabel: _obscureText1
                                          ? 'show password'
                                          : 'hide password',
                                      color: bl,
                                    ),
                                  ),
                                  hintText: str_password,
                                  hintStyle: TextStyle(
                                    fontFamily: stc_font,
                                    //------color(open resource page)------//
                                    color: bl,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: bl),
                                      borderRadius: BorderRadius.circular(8.0)),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                    borderSide: BorderSide(color: bl),
                                  ),
                                ),
                                controller: _passwordcontrolr,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                top: mgr1,
                              )),
                              //confirm password
                              Container(
                                child: TextFormField(
                                  style: TextStyle(color: blue),
                                  obscureText: _obscureText2,
                                  decoration: InputDecoration(
                                    hintText: str_cnpassword,
                                    hintStyle: TextStyle(
                                      fontFamily: stc_font,
                                      //------color(open resource page)------//
                                      color: bl,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: bl),
                                        borderRadius:
                                            BorderRadius.circular(radius)),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8.0)),
                                      borderSide: BorderSide(color: blue),
                                    ),
                                    suffixIcon: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _obscureText2 = !_obscureText2;
                                        });
                                      },
                                      child: Icon(
                                        _obscureText2
                                            ? Icons.visibility_off
                                            : Icons.visibility,
                                        semanticLabel: _obscureText2
                                            ? 'show password'
                                            : 'hide password',
                                        color: bl,
                                      ),
                                    ),
                                  ),
                                  controller: _c_password,
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                top: mgr1,
                              )),
                              textField(
                                context,
                                _adresscontroller,
                                str_adress,
                              ),

                              Container(
                                //----margin rised botton about flatbuttom------//
                                margin: EdgeInsets.only(top: size.height * .03),
                                //--------size Rised Buttom-------//
                                height: size.height * .07,
                                width: size.width * .74,
                                // ignore: deprecated_member_use
                                child: RaisedButton(
                                    //------text(open string page)---------//
                                    child: Text(str_signup,
                                        //-----------style text----------//
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontFamily: stc_font)),
                                    //------color(open resource page)------//
                                    color: ongo,
                                    //------color(open resource page)------//
                                    textColor: white,
                                    //------border radius---------//
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    //-------onpresed raised button-------//
                                    onPressed: () {
                                      if (_namecontrolr.text
                                              .trim()
                                              .isNotEmpty &&
                                          _emailcontrolr.text
                                              .trim()
                                              .isNotEmpty &&
                                          _passwordcontrolr.text
                                              .trim()
                                              .isNotEmpty &&
                                          _c_password.text.trim().isNotEmpty) {
                                        if (_passwordcontrolr.text.trim() ==
                                            _c_password.text.trim()) {
                                          databaseHelper
                                              .registerData(
                                                  _namecontrolr.text.trim(),
                                                  _emailcontrolr.text
                                                      .trim()
                                                      .toLowerCase(),
                                                  _passwordcontrolr.text.trim(),
                                                  _c_password.text.trim())
                                              .whenComplete(() {
                                            if ((databaseHelper.status) ==
                                                true) {
                                              _showdialog(_code, size);
                                            } else {
                                              print(databaseHelper.msg);
                                              showdial(
                                                  context, databaseHelper.msg);
                                            }
                                          });
                                        } else {
                                          showdial(context,
                                              "Passwords do not mutch");
                                        }
                                      } else {
                                        showdial(
                                            context, "All fields are required");
                                      }
                                    }),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: size.height * .02)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        str_ready,
                        style: TextStyle(
                            color: blue, fontSize: 16, fontFamily: stc_font),
                      ),
                      TextButton(
                        onPressed: () =>
                            // ignore: sdk_version_set_literal
                            {},
                        child: Text(
                          str_signin,
                          style: TextStyle(
                            color: white,
                            fontSize: 16,
                            fontFamily: stc_font,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    // margin: EdgeInsets.only(top: size.height*.056),
                    child: Text(
                      str_develebors,
                      style: TextStyle(
                          color: Color(0xffa2aece),
                          fontFamily: stc_font,
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  _showdialog(TextEditingController text, var size) async {
    showDialog(
        context: context,
        builder: (
          BuildContext context,
        ) {
          return AlertDialog(
              backgroundColor: Color(0xfff8f9ff),
              content: SingleChildScrollView(child: StatefulBuilder(
                  builder: (BuildContext context, StateSetter setState) {
                return new Center(
                  child: Container(
                    width: size.width * .8357,
                    height: size.height * .54,
                    color: Color(0xfff8f9ff),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: size.width * .60),
                          child: Positioned(
                              left: 10,
                              top: 20,
                              child: IconButton(
                                icon: Icon(Icons.close),
                                onPressed: () {},
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: size.height * .07),
                          alignment: Alignment.center,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              new Text(
                                str_entercode,
                                style: TextStyle(
                                  color: blue,
                                  fontFamily: stc_font,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: size.height * .0351),
                          width: size.width * .32,
                          // height: size.height*.05,
                          child: TextField(
                              style: TextStyle(color: blue),
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(top: 20.0),
                                fillColor: blue,
                              ),
                              controller: _code),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: size.height * .0580),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: size.width * .29,
                                height: size.height * .05,
                                // margin: EdgeInsets.only(right: size.width * .04),
                                child: RaisedButton(
                                    child: Text(
                                      str_confirm,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    color: ongo,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        var tok = _code.text;
                                        print(tok);
                                      });
                                      Navigator.of(context)
                                          .pushNamed('/Signin');
                                    }),
                              ),
                              Container(
                                width: size.width * .06,
                              ),
                              Container(
                                  //margin: EdgeInsets.only(right: size.width * .06),
                                  width: size.width * .29,
                                  height: size.height * .05,
                                  child: RaisedButton(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                      side: BorderSide(color: ongo),
                                    ),
                                    onPressed: () => Navigator.pop(context),
                                    child: Text(
                                      str_resend,
                                      style: TextStyle(
                                        color: ongo,
                                        fontFamily: stc_font,
                                      ),
                                    ),
                                  )),
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
