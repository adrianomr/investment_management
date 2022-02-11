import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:investment_management/util/colors_util.dart';

class SubmitWidget extends StatelessWidget {
  Function _execute;
  Function? validate;
  String text;
  bool primary;
  Function? afterDialogPop;

  SubmitWidget(this._execute,
      {this.text = "", this.primary: true, this.validate, this.afterDialogPop});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      height: 75,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: RaisedButton(
              color: primary
                  ? Theme.of(context).primaryColor
                  : ColorsUtil.secondary,
              textColor: primary
                  ? ColorsUtil.secondary
                  : Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              onPressed: () {
                if (this.validate == null || this.validate!())
                  Dialogs.showLoadingDialog(context, _execute, afterDialogPop);
              },
              child: Text(text),
            ),
          ),
        ],
      ),
    );
  }
}

class Dialogs {
  static Future<void> showLoadingDialog(
      BuildContext context, Function execute, Function? afterDialogPop) async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return SimpleDialog(backgroundColor: Colors.white, children: <Widget>[
            Center(
              child: Column(children: [
                CircularProgressIndicator(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Please Wait....",
                  style: TextStyle(color: Colors.blueAccent),
                )
              ]),
            )
          ]);
        });
    Future.delayed(Duration(milliseconds: 1000), () => execute())
        .then((value) => Dialogs.close(context, afterDialogPop));
    return null;
  }

  static void close(BuildContext context, Function? afterDialogPop) {
    print("close dialog");
    Navigator.of(context, rootNavigator: true).pop();
    if (afterDialogPop != null) {
      afterDialogPop();
    }
  }
}
