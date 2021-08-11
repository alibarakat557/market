//----------Forgetpassword------//-----page4-------//
import 'package:emarket/Resorses/resources.dart';
import 'package:flutter/material.dart';
import 'package:emarket/Resorses/string_resourc.dart';
import 'package:flutter/rendering.dart';
import 'package:emarket/conttroller/databasehelper.dart';
import 'package:emarket/conttroller/userconttroller.dart';
import 'rigester.dart';

class Forgetpassword extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ForgetpasswordState();
  }
}

class ForgetpasswordState extends State<Forgetpassword> {
  Emarket db = Emarket();
//-------------conttroller--------//
  final _email = new TextEditingController();

  final _code = new TextEditingController();
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
          icon: Image.asset(
            'assets/images/left-arrow.png',
            color: blue,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: new Container(
        alignment: Alignment.center,
        child: new Column(
          children: [
            //-------Text-----------//
            Container(
              //--------margin the text about top page------------//
              margin: EdgeInsets.only(top: size.height * .16),
              child: new Text(
                //---------text(open string page)------------//
                str_forgettop,
                //-------------style text----------------//
                style: TextStyle(
                  //-------color text(open resorce page for edit)----------//
                  color: blue,
                  //-----------fonts------------//
                  fontFamily: stc_font,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            //--------Text---------//
            Container(
              //---------------margin between the texts----------//
              margin: EdgeInsets.only(top: size.height * .014),
              child: new Text(
                //--------text(openstring page for edit)------------//
                str_Enteremail,
                //------style----//
                style: TextStyle(
                  //-------color(opene resource for edit)---------//
                  color: agray,
                  //-------fonts-------//
                  fontSize: 16.0,
                  fontFamily: stc_font,
                ),
              ),
            ),
            //------Text------//
            Container(
              margin: EdgeInsets.only(top: size.height * .014),
              child: new Text(
                //-------text(open string page for edit)-------//
                str_acode,
                //----style----//
                style: TextStyle(
                  //------color text(open resource page for edit)------//
                  color: agray,
                  //---------fonts----//
                  fontSize: 16.0,
                  fontFamily: stc_font,
                ),
              ),
            ),
            //--------icone photo-----//
            Container(
              //---------margin photo about texts --------//
              margin: EdgeInsets.only(top: size.height * .05),
              //--------size photo (width+height=139)------//
              width: size.width * .38,
              height: size.height * .21,
              //-----file photo--------//
              child: Image.asset('assets/images/icon1.png'),
            ),
            //---------textfieldemail------//
            Container(
              //--------margin text field about photo--------//
              margin: EdgeInsets.only(top: size.height * .08),
              //---------size text field------------//
              width: size.width * .76,
              height: size.height * .08,
              child: new TextFormField(
                //---------keyboardtybe------------/
                keyboardType: TextInputType.emailAddress,
                controller: _email,
                style: TextStyle(color: blue),
                decoration: InputDecoration(
                  //----text(open string page for edit)-------//
                  hintText: str_Email,
                  //--------style-----//
                  hintStyle: TextStyle(
                    //-----textcolor(open resoursce page for edit)-----//
                    color: bl,
                    //------fonts------//
                    fontStyle: FontStyle.normal,
                    fontFamily: stc_font,
                  ),

                  fillColor: Color(0xff61f1f7fd),
                  filled: true,
                  //-------theme+bordeRadious-------//
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: bl),
                      borderRadius: BorderRadius.circular(6.0)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    borderSide: BorderSide(color: dark),
                  ),
                ),
                autofocus: false,
              ),
            ),
            Container(
              //------margin risedbutton about texteield------//
              margin: EdgeInsets.only(top: size.height * .03),
              //---------size RisedButton----------//
              height: size.height * .07,
              width: size.width * .76,
              // ignore: deprecated_member_use
              child: RaisedButton(
                child: Text(
                  //------text(open string page for edit)-------//
                  str_risedsendcode,
                  style: TextStyle(
                    //color text
                    color: Colors.white,
                    fontFamily: stc_font,
                    //-----fonts----//
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //-----color rised buttom(open resource page for edit )-------//
                color: ongo,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                onPressed: () async {
                  await db.forgot(_email.text.trim().toLowerCase());
                  if ((db.msg) == "check your email") {
                    _showAlert(context, _code, size);
                  } else {
                    Navigator.of(context).pushNamed('/Create');
                  }
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: size.height * .098),
              child: Text(
                str_develebors,
                style: TextStyle(
                    color: Color(0xffa2aece),
                    fontWeight: FontWeight.w400,
                    fontFamily: stc_font,
                    fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _showAlert(context, TextEditingController txt, var size) {
    double boxheight = MediaQuery.of(context).size.height * .2878;
    double boxwidth = MediaQuery.of(context).size.width * .8916;
    showDialog(
        context: context,
        builder: (
          BuildContext context,
        ) {
          return AlertDialog(
              backgroundColor: Color(0xfff8f9ff),
              content: SingleChildScrollView(child: StatefulBuilder(
                  builder: (BuildContext context, StateSetter setState) {
                return new Container(
                  width: size.width * .8357,
                  height: size.height * .54,
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
                            style: TextStyle(color: Colors.black),
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 20.0),
                              fillColor: dark,
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
                                      tok = _code.text;
                                      print(tok);
                                    });
                                    Navigator.of(context)
                                        .pushNamed('/Password');
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
                                        color: ongo, fontFamily: stc_font),
                                  ),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              })));
        });
  }
}
