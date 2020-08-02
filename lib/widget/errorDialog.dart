import 'package:flutter/material.dart';
import 'package:subgroup/animation/errorDialogAnimation.dart';

Dialog custom = Dialog(
  child: Container(
      width: 200.0,
      height: 200.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        children: <Widget>[
          CircularProgressIndicator(),
          SizedBox(
            height: 10.0,
          ),
          Text("Logging in"),
        ],
      )),
);

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = Center(
    child: FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    ),
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    title: Text("Authentication Error"),
    content: Text("Entered ID or PW is incorrect"),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return ErrorDialogAnimation(
        child: alert,
        forward: true,
      );
    },
  );
}
