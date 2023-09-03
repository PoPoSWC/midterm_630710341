// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:cpsu_midterm_1_2023_starter/widgest/button.dart';

// TODO: ใส่รหัสนักศึกษาที่ค่าสตริงนี้
const studentId = '630710341';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const List quoteList = [
    ["1", "อะไรมีสี่ขา", "คน", "ไก่", "แกะ", "ปลา", 0, 0, 1, 0],
    ["2", "อะไรหูยาว", "แมว", "ค้างคาว", "แพะ", "กระต่าย", 0, 0, 0, 1],
    ["3", "ดินสีอะไร", "น้ำตาล", "เขียว", "ส้ม", "น้ำตาล", 1, 0, 0, 0]
  ];

  var pointer = 1;
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_colorful.jpg"),
              opacity: 0.6,
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Good Morning',
                  textAlign: TextAlign.center, style: textTheme.headlineMedium),
              Text(studentId,
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black87)),
              Spacer(),
              _buildQuizView(),
              Spacer(),
              _buildButtonPanel(),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }

  _buildQuizView() {
    // TODO: build UI
    return Center(
      child: Column(
        children: [buildContainer(quoteList[pointer])],
      ),
    );
  }

  _buildButtonPanel() {
    // TODO: build UI
    return Center(
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:[Container(width: 200,
        height: 50,
        child:ElevatedButton(
        onPressed: () {
          setState(() {
            pointer--;
            if(pointer<0){
              pointer=2;
            }
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text('<'),
        ),
      ),),
        Container(width: 200,
          height: 50,
          child:ElevatedButton(
            onPressed: () {
              setState(() {
                pointer++;
                if(pointer>2){
                  pointer=0;
                }
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('>'),
            ),
          ),),
      ],
    ));
  }

  Container buildContainer(quoteList) {
    return Container(
      width: 400,
      height: 470,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(40))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Question ",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                Text(
                  quoteList[0],
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                Text(
                  "of 3",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Container(
              width: 280,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        quoteList[1],
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 20.0,right: 20.0,bottom: 8.0),
            child: Row(
              children: [Expanded(
                child: Button(texttype:"A",text:quoteList[2],num: quoteList[6],
                ),
              ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 20.0,right: 20.0,bottom: 8.0),
            child: Row(
              children: [Expanded(
                child: Button(texttype:"B",text:quoteList[3],num: quoteList[7],
                ),
              ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 20.0,right: 20.0,bottom: 8.0),
            child: Row(
              children: [Expanded(
                child: Button(texttype:"C",text:quoteList[4],num: quoteList[8],
                ),
              ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 20.0,right: 20.0,bottom: 8.0),
            child: Row(
              children: [Expanded(
                child: Button(texttype:"D",text:quoteList[5],num: quoteList[9],
                ),
              ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
