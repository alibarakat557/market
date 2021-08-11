import 'package:flutter/material.dart';
import 'package:emarket/Resorses/resources.dart';
import 'package:emarket/Resorses/string_resourc.dart';

Widget divider(context) {
  return Divider(
    height: 1,
    thickness: 1,
    endIndent: 23,
    indent: 23,
  );
}

Widget w_text(context, String t, double m, onPressed) {
  double m5 = MediaQuery.of(context).size.width * .0546;
  return Container(
    margin: EdgeInsets.only(top: m),
    child: Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(
              left: m5,
            ),
            child: Text(
              t,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: stc_font,
              ),
            ),
          ),
        ),
        Container(
          child: IconButton(
            icon: Image.asset(
              'assets/images/next234.png',
              scale: 3,
            ),
            onPressed: onPressed,
          ),
        ),
      ],
    ),
  );
}

Widget backicon() {
  return Container(
    margin: EdgeInsets.only(bottom: 20),
    child: IconButton(
      icon: Icon(
        Icons.arrow_back_rounded,
        color: white,
      ),
      onPressed: () {},
    ),
  );
}

Widget header(context, String t, TextEditingController search) {
  double apph = MediaQuery.of(context).size.height * .20;
  double m1 = MediaQuery.of(context).size.height * .04;
  double tfheight = MediaQuery.of(context).size.height * .0563;
  double tfwidth = MediaQuery.of(context).size.width * .7777;
  return Stack(
    children: [
      Container(
          height: apph,
          child: Image.asset(
            'assets/images/header3.png',
            fit: BoxFit.cover,
          )),
      Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /*Container(
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.arrow_back_outlined,color: white,),
                  ),
                ),*/
              Container(
                margin: EdgeInsets.only(top: m1),
                child: Text(t,
                    style: TextStyle(
                      fontFamily: stc_font,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: white,
                    )),
              ),
              Container(
                alignment: Alignment.center,
                height: tfheight,
                width: tfwidth,
                child: TextField(
                  controller: search,
                  //textAlign: TextAlign.center,

                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    prefixIcon: Icon(
                      Icons.search,
                      color: white,
                      size: 27,
                    ),
                    hintText: str_search,
                    hintStyle: TextStyle(
                      fontFamily: stc_font,
                      color: whites,
                      fontWeight: FontWeight.w600,
                    ),
                    //prefixText:str_search ,
                    filled: true,
                    fillColor: whitet,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(radius)),
                      borderSide: BorderSide(
                        color: white,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(radius)),
                      borderSide: BorderSide(
                        color: white,
                      ),
                    ),
                  ),
                ),
              ),
            ]),
      ),
    ],
  );
}

Widget icon(context, String iconname) {
  double iw = MediaQuery.of(context).size.width * .1305;
  return Column(
    children: [
      Container(
        width: iw,
        height: iw,
        decoration: BoxDecoration(
          color: white,
          boxShadow: [
            BoxShadow(
              color: bshaow,
              spreadRadius: 0,
              blurRadius: 1,
              offset: Offset(0, 0),
            )
          ],
          borderRadius: BorderRadius.all(Radius.circular(radius2)),
          border: Border.all(
            color: ic,
          ),
        ),
        child: IconButton(
            onPressed: () {
              String s = 'this is a string';
              print('${s[0].toUpperCase()}${s.substring(1)}');
            },
            icon: Image.asset(
              'assets/images/$iconname.png',
              scale: 4,
            )),
      ),
      Container(
        margin: EdgeInsets.only(top: 5),
        child: Text(
          '${iconname[0].toUpperCase()}${iconname.substring(1)}',
          style: TextStyle(
              fontWeight: FontWeight.w400, color: blue, fontFamily: stc_font),
        ),
      )
    ],
  );
}

class salediscount extends StatefulWidget {
  @override
  bool f;
  salediscount(this.f);

  State<StatefulWidget> createState() {
    return salediscountstate();
  }
}

class salediscountstate extends State<salediscount> {
  @override
  Widget build(BuildContext context) {
    double imgh = MediaQuery.of(context).size.height * .13;
    double imgw = MediaQuery.of(context).size.width * .3555;
    double widh = MediaQuery.of(context).size.height * .071;
    bool payed = false;
    int _value = 1;
    bool fav = false;
    return Container(
      width: imgw,
      height: (imgh + widh), //wid
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(radius),
            topLeft: Radius.circular(radius),
            topRight: Radius.circular(radius),
            bottomRight: Radius.circular(radius),
          ),
          // color: Colors.white,
          boxShadow: [
            BoxShadow(
              spreadRadius: 0,
              blurRadius: 5,
              offset: Offset(0, 2),
              color: Color(0xff47a8b9cd),
            )
          ]),
      margin: EdgeInsets.only(left: 20),
      child: Column(
        children: [
          Container(
              //color:Colors.red,
              // color:Colors.amber,
              child: Stack(
            children: [
//////////////////////////////////////////////////////////////////////imqges
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(radius),
                    topLeft: Radius.circular(radius)),
                child: Image.asset(
                  'assets/images/img2.png',
                  width: imgw,
                  height: imgh,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 0, top: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: (widget.f)
                          ? Image.asset(
                              'assets/images/like2.png',
                              scale: 5,
                            )
                          : Image.asset(
                              'assets/images/unlike23.png',
                              scale: 5,
                            ),
                      onPressed: () {
                        setState(() {
                          fav = !fav;
                          widget.f = !widget.f;
                        });
                      },
                    ),
                    Stack(
                      children: [
                        Image.asset(
                          'assets/images/coupon.png',
                          scale: 5,
                        ),
                        Text(
                          str_coupn,
                          style: TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.w400,
                            color: white,
                            fontFamily: stc_font,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
          Expanded(
            child: Container(
                margin: EdgeInsets.only(left: 12),
                child: Stack(alignment: Alignment.bottomLeft, children: [
                  Container(
                    width: imgw,
                    height: widh,
                    decoration: BoxDecoration(
                      //color: Colors.red,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(radius),
                        bottomRight: Radius.circular(radius),
                      ),
                    ),

                    //right:( MediaQuery.of(context).size.width*45/100),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        //  mainAxisAlignment: MainAxisAlignment.spaceAround,

                        children: [
                          Text(
                            str_prname,
                            style: TextStyle(
                              fontFamily: stc_font,
                              fontSize: 14.5,
                              color: blac,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(str_price,
                              style: TextStyle(
                                fontFamily: stc_font,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: dark,
                              )),
                        ]),
                  ),
                  Container(
                      // padding: EdgeInsets.only(top: 10),
                      child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Text(str_price,
                              style: TextStyle(
                                fontFamily: stc_font,
                                fontSize: 9,
                                fontWeight: FontWeight.w400,
                                color: dark,
                              )),
                        ),
                        GestureDetector(
                          //color: Colors.green,
                          child: (payed)
                              ? Image.asset(
                                  'assets/images/home-chariot-blue.png',
                                  scale: 6,
                                )
                              : Image.asset(
                                  'assets/images/home-chariot-blue-2.png',
                                  scale: 6),
                          onDoubleTap: () {
                            setState(() {
                              payed = !payed;
                            });
                            print(payed);
                          },
                        ),
                      ],
                    ),
                  )),
                ])),
          ),
        ],
      ),
    );
  }
}

class mostpopular extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return mostpopularstate();
  }
}

class mostpopularstate extends State<mostpopular> {
  @override
  Widget build(BuildContext context) {
    double widh = MediaQuery.of(context).size.height * .0765;
    double imgh = MediaQuery.of(context).size.height * .1513;
    double imgw = MediaQuery.of(context).size.width * .35;
    bool payed = false;
    int _value = 1;
    bool fav = false;
    return Container(
      width: imgw,
      height: (imgh + widh), //wid
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(radius),
            topLeft: Radius.circular(radius),
            topRight: Radius.circular(radius),
            bottomRight: Radius.circular(radius),
          ),
          // color: Colors.white,
          boxShadow: [
            BoxShadow(
              spreadRadius: 0,
              blurRadius: 5,
              offset: Offset(0, 2),
              color: Color(0xff47a8b9cd),
            )
          ]),
      margin: EdgeInsets.only(right: 12, left: 12),
      child: Column(
        children: [
          Container(
              //color:Colors.red,
              // color:Colors.amber,
              child: Stack(
            children: [
//////////////////////////////////////////////////////////////////////imqges
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(radius),
                    topLeft: Radius.circular(radius)),
                child: Image.asset(
                  'assets/images/img2.png',
                  width: imgw,
                  height: imgh,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 120, top: 0),
                child: IconButton(
                  icon: (fav)
                      ? Image.asset(
                          'assets/images/like2.png',
                          scale: 5,
                        )
                      : Image.asset(
                          'assets/images/unlike23.png',
                          scale: 5,
                        ),
                  onPressed: () {
                    setState(() {
                      fav = !fav;
                    });
                  },
                ),
              ),
            ],
          )),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 12),
              child: Stack(
                children: [
                  Container(
                    width: imgw,
                    height: widh,
                    decoration: BoxDecoration(
                      //color: Colors.red,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(radius),
                        bottomRight: Radius.circular(radius),
                      ),
                    ),

                    //right:( MediaQuery.of(context).size.width*45/100),
                    child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //  mainAxisAlignment: MainAxisAlignment.spaceAround,

                        children: [
                          Container(
                            child: Text(
                              str_prname,
                              style: TextStyle(
                                fontFamily: stc_font,
                                fontSize: 14.5,
                                color: blac,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ]),
                  ),
                  Container(
                      // padding: EdgeInsets.only(top: 10),
                      child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Text(str_price,
                              style: TextStyle(
                                fontFamily: stc_font,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: ongo,
                              )),
                        ),
                        GestureDetector(
                          //color: Colors.green,
                          child: (payed)
                              ? Image.asset(
                                  'assets/images/big-chariot-orange-2.png',
                                  scale: 6)
                              : Image.asset(
                                  'assets/images/big-chariot-orange.png',
                                  scale: 6,
                                ),
                          onDoubleTap: () {
                            print(payed);

                            setState(() {
                              payed = true;
                            });
                            print(payed);
                          },
                        ),
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class newarrival extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return newstate();
  }
}

class newstate extends State<newarrival> {
  @override
  Widget build(BuildContext context) {
    double widh = MediaQuery.of(context).size.height * .0593;
    double imgh = MediaQuery.of(context).size.height * .1546;
    double imgw = MediaQuery.of(context).size.width * .4333;
    bool payed = false;
    int _value = 1;
    bool fav = false;
    return Container(
      width: imgw,
      height: (imgh + widh), //wid
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(radius),
            topLeft: Radius.circular(radius),
            topRight: Radius.circular(radius),
            bottomRight: Radius.circular(radius),
          ),
          // color: Colors.white,
          boxShadow: [
            BoxShadow(
              spreadRadius: 0,
              blurRadius: 5,
              offset: Offset(0, 2),
              color: Color(0xff47a8b9cd),
            )
          ]),
      margin: EdgeInsets.only(right: 12, left: 12),
      child: Column(
        children: [
          Container(
              //color:Colors.red,
              // color:Colors.amber,
              child: Stack(
            children: [
//////////////////////////////////////////////////////////////////////imqges
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(radius),
                    topLeft: Radius.circular(radius)),
                child: Image.asset(
                  'assets/images/img2.png',
                  width: imgw,
                  height: imgh,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 120, top: 0),
                child: IconButton(
                  icon: (fav)
                      ? Image.asset(
                          'assets/images/like2.png',
                          scale: 5,
                        )
                      : Image.asset(
                          'assets/images/unlike23.png',
                          scale: 5,
                        ),
                  onPressed: () {
                    setState(() {
                      fav = !fav;
                    });
                  },
                ),
              ),
            ],
          )),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 12),
              child: Stack(
                children: [
                  Container(
                    width: imgw,
                    height: widh,
                    decoration: BoxDecoration(
                      //color: Colors.red,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(radius),
                        bottomRight: Radius.circular(radius),
                      ),
                    ),

                    //right:( MediaQuery.of(context).size.width*45/100),
                    child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //  mainAxisAlignment: MainAxisAlignment.spaceAround,

                        children: [
                          Container(
                            child: Text(
                              str_prname,
                              style: TextStyle(
                                fontFamily: stc_font,
                                fontSize: 14.5,
                                color: blac,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ]),
                  ),
                  Container(
                      // padding: EdgeInsets.only(top: 10),
                      child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Text(str_price,
                              style: TextStyle(
                                fontFamily: stc_font,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: ongo,
                              )),
                        ),
                        GestureDetector(
                          //color: Colors.green,
                          child: (payed)
                              ? Image.asset(
                                  'assets/images/home-chariot-blue.png',
                                  scale: 6,
                                )
                              : Image.asset(
                                  'assets/images/home-chariot-blue-2.png',
                                  scale: 6),
                          onDoubleTap: () {
                            print(payed);

                            setState(() {
                              payed = true;
                            });
                            print(payed);
                          },
                        ),
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
