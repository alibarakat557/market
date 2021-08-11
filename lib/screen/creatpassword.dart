//-----------Create password---------//--------page6---------//

import 'package:emarket/Resorses/resources.dart';
import 'package:flutter/material.dart';
import 'package:emarket/Resorses/string_resourc.dart';
import 'package:emarket/widgets/field.dart';
import 'package:emarket/conttroller/userconttroller.dart';
import 'package:emarket/conttroller/databasehelper.dart';
import 'package:flutter/services.dart';
import 'forgetpassword.dart';
import 'login.dart';

class Password extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PasswordState();
  }
}

class _PasswordState extends State<Password> {
  Emarket db = Emarket();
  //--------conttroller-----------//
  final _password = TextEditingController();
  final _cpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //-----------size%------------//
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamedAndRemoveUntil(
                '/Forgetpassword', (Route<dynamic> route) => false);
          },
          icon: Image.asset(
            'assets/images/left-arrow.png',
            color: blue,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Center(
        child: new Column(
          children: [
            //---------------Text-----------//
            Container(
                margin: EdgeInsets.only(top: size.height * .13),
                child: new Text(str_cnpassword,
                    style: TextStyle(
                      fontFamily: stc_font,
                      color: blue,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ))),
            //------------text--------//
            Container(
              margin: EdgeInsets.only(top: size.height * .018),
              child: new Text(str_enpassword,
                  style: TextStyle(
                    fontFamily: stc_font,
                    color: agray,
                    fontSize: 16,
                  )),
            ),
            //--------icon photo --------//
            Container(
              margin: EdgeInsets.only(top: size.height * .05),
              //-----size---------//
              width: size.width * .38,
              height: size.height * .21,
              //-------image------//
              child: Image.asset('assets/images/icon2.png'),
            ),
            //-------textfield(paswword)-------//
            Padding(padding: EdgeInsets.only(top: size.height * .07)),
            textField2(context, _password, str_npassword, 0),

            Padding(padding: EdgeInsets.only(top: size.height * .02)),
            textField2(context, _cpassword, str_cnpassword, 0),
            Container(
              margin: EdgeInsets.only(top: size.height * .05),
              height: size.height * .07,
              width: size.width * .76,
              // ignore: deprecated_member_use
              child: RaisedButton(
                  child: Text(
                    str_t_changepass,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: ongo,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  onPressed: () async {
                    if (_password.text.trim().isNotEmpty &&
                        _cpassword.text.trim().isNotEmpty) {
                      if ((_password.text.trim()) == (_cpassword.text.trim())) {
                        db
                            .reset(tok, _password.text.trim(),
                                _cpassword.text.trim())
                            .whenComplete(() {
                          print(_password.text);
                          print(_cpassword.text);
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
                    width: size.width * .8357,
                    height: size.height * .3716,
                    color: Color(0xfff8f9ff),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: size.height * .07),
                          alignment: Alignment.center,
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            //Center Column contents vertically,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              new Text(
                                str_suucsse,
                                style: TextStyle(
                                    color: Color(0xff8a9cc0),
                                    //fontWeight: FontWeight.bold,
                                    fontSize: ((size.width * .0483) > 20)
                                        ? 20
                                        : (size.width * .047)),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  new Text(
                                    str_suucsse2,
                                    style: TextStyle(
                                        color: Color(0xff8a9cc0),
                                        fontSize: ((size.width * .0483) > 20)
                                            ? 20
                                            : (size.width * .047)),
                                  ),
                                  GestureDetector(
                                    child: Text(
                                      str_signin,
                                      style: TextStyle(
                                          color: ongo,
                                          decoration: TextDecoration.underline,
                                          decorationColor: ongo),
                                    ),
                                    onTap: () {
                                      Navigator.of(context)
                                          .pushNamed('/Signin');
                                    },
                                  )
                                ],
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
