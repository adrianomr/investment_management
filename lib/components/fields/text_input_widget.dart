import 'package:flutter/material.dart';

class TextInputWidget extends StatelessWidget {
  String _label;
  Function? callback;
  EdgeInsets? padding;
  bool? primary;
  String value;
  bool mandatory;

  TextInputWidget(this._label,
      {Key? key,
      this.callback,
      this.value = "",
      this.padding,
      this.mandatory = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: padding,
        child: TextFormField(
          decoration: InputDecoration(
            labelText: _label,
          ),
          initialValue: value,
          onChanged: (text) {
            callback!(text);
          },
          validator: (value) {
            if (value!.isEmpty && mandatory) {
              return 'Campo obrigatório';
            }
            return null;
          },
        ));
  }
}
