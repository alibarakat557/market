import 'package:flutter/material.dart';

import '../model/myOrders.dart';
import 'package:emarket/Resorses/resources.dart';
import 'package:emarket/widgets/app_state.dart';
import '../model/status.dart';
import 'package:emarket/screen/29.dart';

class OrderWidget extends StatelessWidget {
  final MyOrder myOrder;

  const OrderWidget({Key key, this.myOrder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
        left: w * 0.066,
        right: w * 0.069,
        bottom: h * 0.017,
      ),
      child: Container(
        height: h * 0.153,
        width: w * 0.86,
        decoration: BoxDecoration(
          color: Colors.white, //white
          boxShadow: [
            BoxShadow(
                color: Colors.grey[200],
                blurRadius: 80.0,
                offset: Offset(0.0, 0.0)),
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ), //box deco

        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                left: w * 0.038,
                right: w * 0.033,
                top: h * 0.034,
                bottom: h * 0.026,
              ),
              child: Container(
                height: h * 0.092,
                width: w * 0.163,
                decoration: BoxDecoration(
                  color: bl4,
                  borderRadius: BorderRadius.all(
                    Radius.circular(6.0),
                  ),
                ),
                child: Center(
                  child: Text('N°${myOrder.number}',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: bl3,
                        fontFamily: "stc",
                      )),
                ),
              ), //cntnr
            ), //pdng

            Padding(
              padding: EdgeInsets.only(
                top: h * 0.028,
                bottom: h * 0.026,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '${myOrder.address}',
                    style: TextStyle(
                      color: bl2,
                      fontSize: 13.0,
                      fontFamily: "stc",
                    ),
                  ), //txt    ""
                  Text(
                    'Price: ${myOrder.price}\$',
                    style: TextStyle(
                      color: bl2,
                      fontSize: 13.0,
                      fontFamily: "stc",
                    ),
                  ), //txt
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '${myOrder.date}',
                        style: TextStyle(
                          color: bl2,
                          fontSize: 13.0,
                          fontFamily: "stc",
                        ),
                      ), //txt
                      Padding(
                        padding: EdgeInsets.only(
                          left: w * 0.12,
                        ),
                      ), //pink

                      myOrder.status == 'Delivered'
                          ? Container(
                              height: h * 0.0328,
                              width: w * 0.196,
                              decoration: BoxDecoration(
                                color: bgd,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  ' ${myOrder.status} ',
                                  style: TextStyle(
                                    color: ongo,
                                    fontSize: 13.0,
                                    fontFamily: "stc",
                                  ),
                                ), //txt
                              ), //cntr
                            )
                          : myOrder.status == 'Shipped'
                              ? Container(
                                  height: h * 0.0328,
                                  width: w * 0.196,
                                  decoration: BoxDecoration(
                                    color: bgs,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10.0),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      ' ${myOrder.status} ',
                                      style: TextStyle(
                                        color: ts,
                                        fontSize: 13.0,
                                        fontFamily: "stc",
                                      ),
                                    ), //txt
                                  ), //cntr
                                )
                              : Container(
                                  height: h * 0.0328,
                                  width: w * 0.196,
                                  decoration: BoxDecoration(
                                    color: bgp,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10.0),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      ' ${myOrder.status} ',
                                      style: TextStyle(
                                        color: tp,
                                        fontSize: 13.0,
                                        fontFamily: "stc",
                                      ),
                                    ), //txt
                                  ), //cntr
                                ), //cntnr
                    ],
                  ), //row
                ],
              ), //clmn
            ), //pdng

            Padding(
              padding: EdgeInsets.only(
                left: w * 0.002,
              ),
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward_ios_outlined),
              onPressed: () {},
            ), //icnbtn
          ],
        ), //row
      ), //cntnr
    );
  }
}
