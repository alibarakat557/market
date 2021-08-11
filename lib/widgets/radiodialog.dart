import 'package:flutter/material.dart';
import 'package:emarket/Resorses/string_resourc.dart';
import 'package:emarket/Resorses/resources.dart';

Widget diag(context) {
  showDialog(
      context: context,
      builder: (BuildContext) {
        double dh = MediaQuery.of(context).size.height * .3160;
        double dw = MediaQuery.of(context).size.width * .100;
        double bth = MediaQuery.of(context).size.height * .0519;
        double btw = MediaQuery.of(context).size.width * .2916;
        double ci = MediaQuery.of(context).size.width * .63;
        double btnm = MediaQuery.of(context).size.height * .0623;
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Container(
            height: dh,
            width: 10,
            child: Center(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: ci),
                    child: IconButton(
                        icon: Icon(
                          Icons.close,
                          color: gray,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }),
                  ),
                  Container(
                      child: Text(
                    '$str_boxparagraph \n   $str_boxparagraph2',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Stc',
                        fontSize: 16,
                        color: blac,
                        fontWeight: FontWeight.w500),
                  )),
                  Container(
                    margin: EdgeInsets.only(top: btnm),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: bth,
                          width: btw,
                          child: RaisedButton(
                            color: ongo,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(radius),
                            ),
                            child: Text(
                              str_signup,
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: stc_font,
                                color: white,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          width: 20,
                        ),
                        Container(
                            height: bth,
                            width: btw,
                            child: RaisedButton(
                              //elevation: 0,
                              color: white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(radius),
                                side: BorderSide(color: ongo),
                              ),
                              child: Text(
                                str_signin,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: stc_font,
                                    color: ongo),
                              ),
                              onPressed: () {},
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      });
}
