import 'package:flutter/cupertino.dart';

class RowList extends StatelessWidget{
  String titre1;
  String value1;

  RowList({Key? key, required this.titre1, required this.value1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Text(titre1),
            ],
          ),
        ),
        SizedBox(width: 20,),
        Expanded(
          child: Column(
            children: [
              Text(value1),
            ],
          ),
        ),
      ],
    );
  }

}