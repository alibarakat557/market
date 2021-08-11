import 'package:flutter/material.dart';
import '../screen/solgul2.dart';

class ProductsWidget extends StatelessWidget {
  final String name, image;
  final int num;

  ProductsWidget({this.name, this.image, this.num});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (ccontext) => DetailsWidget(
                    colors: 'clr',
                    image1: 'details',
                    image2: image,
                    image3: 'details',
                    description: '',
                  ))),
      child: Container(
        height: 300,
        width: w * 0.283,
        margin: EdgeInsets.only(right: w * 0.047),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
        ), //boxdeco

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: h * 0.1128,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/$image'),
                  fit: BoxFit.cover,
                ), //deco_img
                borderRadius: BorderRadius.circular(12.0),
              ), //boxdeco
            ), //cntnr
            Padding(
              padding: EdgeInsets.only(top: h * 7 / 709),
            ),
            Text(
              '$name',
              style: TextStyle(
                color: Color(0xff3a3939),
                fontSize: 16.0,
                fontFamily: "stc",
              ),
            ),
            Text(
              '(x$num)',
              style: TextStyle(
                color: Color(0xff3a3939),
                fontSize: 16.0,
                fontFamily: "stc",
              ),
            ),
          ],
        ), //clmn
      ),
    );
  }
}
