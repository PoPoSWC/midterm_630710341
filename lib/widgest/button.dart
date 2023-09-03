import 'package:flutter/material.dart';
class Button extends StatelessWidget {
  final String text;
  final String texttype;
  final int num;
  const Button({
    super.key,
    required this.text,
    required this.texttype,
    required this.num,


  });

  @override
  Widget build(BuildContext context) {
    if(num==0){
      return buildContainer1();
    }else{
      return buildContainer2();
    }
  }

  Container buildContainer1() {
    return Container(
    decoration: BoxDecoration(
      color:  Colors.white,
      borderRadius: BorderRadius.circular(10.0),
      border: Border.all(color: Colors.black, width: 1),
    ),
    child: Row(
      children: [
        Container(
          width: 30,
        height: 30,
          margin: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(6)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(
              texttype,
              style: TextStyle(color:Colors.black,fontSize: 20 ),
            ),],
          ),
        ),
         Text(
           text,
          style: TextStyle(color:Colors.black ),
        ),
      ],
    ),
  );

  }
  Container buildContainer2() {
    return Container(

      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Colors.black, width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
          Container(
            width: 30,
            height: 30,
            margin: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(color: Colors.black, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(6)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(
                texttype,
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              ],
            ),
          ),
            Text(
              text,
              style: TextStyle(color: Colors.black),
            ),],),

          Icon(Icons.check_circle_outline,
            color: Colors.green,)
           
        ],
      ),
    );
  }
}
