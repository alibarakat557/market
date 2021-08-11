import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_state.dart';
import '../model/status.dart';
import 'package:emarket/Resorses/resources.dart';

class StatusWidget extends StatelessWidget {
  final Status status;
  const StatusWidget({Key key, this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    final appState = Provider.of<AppState>(context);
    final isSelected = appState.selectedStatusId == status.statusId;

    return GestureDetector(
      onTap: () {
        if (!isSelected) {
          appState.updateStatusId(status.statusId);
        }
      },
      child: Padding(
        padding: EdgeInsets.only(
          left: w * 0.033,
        ),
        child: Container(
          height: h * 0.169,
          width: w * 0.2101,
          decoration: BoxDecoration(
            color: isSelected ? ongo : Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[200],
                  blurRadius: 10.0,
                  offset: Offset(0.0, 5.0)),
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(75.0),
            ),
          ), //boxDeco

          child: Padding(
            padding: EdgeInsets.only(
              left: w * 0.016,
              right: w * 0.016,
              top: h * 0.0125,
              bottom: h * 0.0359,
            ),
            child: Column(
              children: <Widget>[
                Container(
                  height: w * 0.147,
                  width: w * 0.147,
                  padding: EdgeInsets.symmetric(vertical: w * 0.038),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isSelected ? Colors.white : bl1,
                  ),
                  child: Image.asset('images/${status.icon}.png'),
                ), //cntnr

                Padding(
                  padding: EdgeInsets.only(
                    top: 5.0,
                  ),
                ),
                Text(
                  //'All',
                  status.name,
                  style: TextStyle(
                    // color: isSelected ? Colors.white : dark,
                    fontSize: 12.8,
                    fontFamily: "stc",
                  ),
                ),
              ],
            ), //clmn
          ), //pdng
        ), //cntnr
      ),
    );
  }
}
