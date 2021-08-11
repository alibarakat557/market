import 'package:emarket/Resorses/resources.dart';
import 'package:flutter/material.dart';

Widget textField(
  BuildContext context,
  TextEditingController _namecontrolr,
  String txt,
) {
  var size = MediaQuery.of(context).size;
  return Container(
    // margin: EdgeInsets.only(top: size.height * (margin / 100)),
    width: size.width * .74,
    height: size.height * .07,
    child: new TextField(
      style: TextStyle(color: blue),
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        // contentPadding: EdgeInsets.only(top: 19),
        hintStyle: TextStyle(color: bl, fontFamily: stc_font),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: bl),
          borderRadius: BorderRadius.circular(6.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: bl),
        ),
        hintText: '$txt',
      ),
      controller: _namecontrolr,
    ),
  );
}

Widget textField2(BuildContext context, TextEditingController _namecontrolr,
    String txt, double margin) {
  var size = MediaQuery.of(context).size;
  return Container(
    margin: EdgeInsets.only(top: size.height * (margin / 100)),
    width: size.width * .76,
    height: size.height * .08,
    child: new TextField(
      style: TextStyle(color: blue),
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xff61f1f7fd),
          hintStyle: TextStyle(color: bl, fontFamily: stc_font),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: bl),
            borderRadius: BorderRadius.circular(6.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: bl),
          ),
          hintText: '$txt'),
      controller: _namecontrolr,
    ),
  );
}

Widget textFieldnum(
  BuildContext context,
  TextEditingController _namecontrolr,
  String txt,
) {
  var size = MediaQuery.of(context).size;
  return Container(
    //  margin: EdgeInsets.only(top: size.height * (margin / 100)),
    width: size.width * .74,
    height: size.height * .07,
    child: new TextField(
      style: TextStyle(color: blue),
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 19),
          hintStyle: TextStyle(color: bl, fontFamily: stc_font),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: bl),
            borderRadius: BorderRadius.circular(6.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: bl),
          ),
          prefixIcon: Icon(
            Icons.flag,
            color: bl,
          ),
          hintText: '$txt'),
      controller: _namecontrolr,
    ),
  );
}

Widget showdial(BuildContext context, String mess) {
  showDialog(
      context: context,
      builder: (
        BuildContext context,
      ) {
        var size = MediaQuery.of(context).size;
        return AlertDialog(
            backgroundColor: Color(0xfff8f9ff),
            content: SingleChildScrollView(child: StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
              return GestureDetector(
                  child: Container(
                      width: size.width * .8357,
                      height: size.height * .18,
                      color: Color(0xfff8f9ff),
                      child: Center(
                        child: Text(
                          '$mess',
                          style: TextStyle(
                              color: blue, fontSize: 18, fontFamily: stc_font),
                        ),
                      )),
                  onTap: () {
                    Navigator.pop(context);
                  });
            })));
      });
}
