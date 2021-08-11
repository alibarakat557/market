import 'package:emarket/widgets/background.dart';
import 'package:emarket/Resorses/resources.dart';
import 'package:emarket/Resorses/string_resourc.dart';
// ignore: unused_import
import 'package:emarket/conttroller/databasehelper.dart';
import 'package:emarket/conttroller/userconttroller.dart';
import 'package:emarket/widgets/field.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:emarket/screen/rigester.dart';
// ignore: unused_import
import 'package:emarket/screen/forgetpassword.dart';
// ignore: unused_import
import 'package:emarket/screen/bottmbar.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  Emarket db = Emarket();
  //---------conttroller---------------//
  final _emailcontrolr = TextEditingController();
  final _passwordcontrolr = TextEditingController();
//----------iconpassword----------------//
  bool _obscureText1 = true;

  Widget build(BuildContext context) {
    //---------size%------------------//
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        //-------------background---------//
        Background(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: size.height * .06),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: size.height * .02),
                        width: size.width * .70,
                        height: size.height * .24,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                              'images/6893891b-a0f5-4fa9-a294-b00fcebecada-1.5x.png'),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: size.height * .25),
                        height: size.height * .58,
                        width: size.width * .83,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 5.0,
                          color: white,
                          child: SingleChildScrollView(
                            child: Column(
                              children: <Widget>[
                                //email

                                textField2(
                                    context, _emailcontrolr, str_Email, 10),
                                Container(
                                  //------margin password in email--------//
                                  margin:
                                      EdgeInsets.only(top: size.height * .02),
                                  //--------size textfield--------//
                                  width: size.width * .76,
                                  height: size.height * .08,
                                  child: TextField(
                                    style: TextStyle(color: blue),
                                    cursorColor: blue,
                                    //-------keyboardtype-----------//
                                    keyboardType: TextInputType.text,
                                    //-----controller-----//
                                    controller: _passwordcontrolr,
                                    //--------hint text to password-------//
                                    obscureText: _obscureText1,
                                    decoration: InputDecoration(
                                      //---hintText (open stringpage)-----//
                                      hintText: str_password,
                                      hintStyle: TextStyle(
                                          color: bl, fontFamily: stc_font),
                                      fillColor: Color(0xff61f1f7fd),
                                      //--------Icon show stars--------//
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
                                      // obscureText: true,
                                      filled: true,
                                      //----theme to text field-------//
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(radius),
                                        //------color(open resource page)------//
                                        borderSide: BorderSide(color: bl),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(radius)),
                                        borderSide: BorderSide(color: bl),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 250.0),
                                  child:
                                      //------forgt password flatBotton-----//
                                      // ignore: deprecated_member_use
                                      FlatButton(
                                    //----------onpressed--------//

                                    onPressed: () => {
                                      Navigator.of(context)
                                          .pushNamed('/Forgetpassword')
                                    },
                                    //--------text-------//
                                    child: Text(
                                      //-----(open stringpage)------//
                                      str_forg,
                                      //--------style---------//
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: stc_font,
                                          //------color(open resource page)------//
                                          color: blue),
                                    ),
                                  ),
                                ),
/////////////////////////////////////////////////signin botton
                                Container(
                                  //----margin rised botton about flatbuttom------//
                                  margin:
                                      EdgeInsets.only(top: size.height * .07),
                                  //--------size Rised Buttom-------//
                                  height: size.height * .07,
                                  width: size.width * .76,
                                  // ignore: deprecated_member_use
                                  child: RaisedButton(
                                    //------text(open string page)---------//
                                    child: Text(str_signin,
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
                                    onPressed: () => {
                                      Navigator.of(context)
                                          .pushNamedAndRemoveUntil(
                                              '/BottomNavBar',
                                              (Route<dynamic> route) => false)
                                    },
                                    //  async {
                                    //   setState(() {
                                    //     if (_emailcontrolr.text
                                    //             .trim()
                                    //             .toLowerCase()
                                    //             .isNotEmpty &&
                                    //         _passwordcontrolr.text
                                    //             .trim()
                                    //             .isNotEmpty) {
                                    //       db
                                    //           .loginData(
                                    //               _emailcontrolr.text
                                    //                   .trim()
                                    //                   .toLowerCase(),
                                    //               _passwordcontrolr.text
                                    //                   .trim())
                                    //           .whenComplete(() {
                                    //         if (db.status) {
                                    //           Navigator.of(context)
                                    //               .pushNamedAndRemoveUntil(
                                    //                   '/BottomNavBar',
                                    //                   (Route<dynamic>
                                    //                           route) =>
                                    //                       false);
                                    //         } else {
                                    //           showdial(context, db.msg);
                                    //         }
                                    //       });
                                    //     } else {
                                    //       showdial(context,
                                    //           "All field are required");
                                    //     }
                                    //   });
                                    // }
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    //----------margin row about card------------//
                    margin: EdgeInsets.only(top: size.height * .04),
                    //-----------row (text and flatButton)-------//
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //----------text(open string page)-----------//
                        Text(str_account,
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: blue,
                                fontSize: 16.0,
                                fontFamily: stc_font)),
                        //---------flatbutton-----------//
                        // ignore: deprecated_member_use
                        TextButton(
                          //---------on presed to sign up-------//
                          onPressed: () =>
                              // ignore: sdk_version_set_literal
                              {Navigator.of(context).pushNamed('/SingUp')},
                          child: Text(
                            //----------text(open string text)-------//
                            str_signup,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: stc_font,
                              decoration: TextDecoration.underline,
                              //------color(open resource page)------//
                              color: white,
                            ),
                          ),
                        ),
                      ],
                    ),
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
}
//end page
                                          