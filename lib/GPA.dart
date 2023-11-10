import 'package:flutter/material.dart';
import 'package:quapp/serves.dart';

class GPA_Page extends StatefulWidget {
  const GPA_Page({Key? key}) : super(key: key);

  @override
  State<GPA_Page> createState() => _GPAState();
}

class _GPAState extends State<GPA_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 0, 168, 171),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Services()));
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 32,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications, color: Colors.black, size: 25))
        ],
      ),
      body: Container(
        // androidlarge1fiw (1:2)
        width: double.infinity,
        height: 800,
        decoration: BoxDecoration(
          color: Color(0xff163151),
        ),
        child: Stack(
          children: [
            Positioned(
              // rectangle1ZZR (1:3)
              left: 10,
              top: 114,
              child: Align(
                child: SizedBox(
                  width: 340.79,
                  height: 594,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(21.1012420654),
                      border: Border.all(color: Color(0xff000000)),
                      color: Color(0xffd9d9d9),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // ellipse1SNK (1:7)
              left: 0,
              top: 0,
              child: Align(
                child: SizedBox(
                  width: 433,
                  height: 344,
/*  child:  
Image.network(
  [Image url]
  width:  433,
  height:  344,
),*/
                ),
              ),
            ),
            Positioned(
              // gpa9nX (1:8)
              left: 116,
              top: 28,
              child: Align(
                child: SizedBox(
                  width: 126,
                  height: 73,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        height: 1.2102272511,
                        color: Color(0xffffffff),
                      ),
                      children: [
                        TextSpan(
                          text: 'GPA',
                          style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.w600,
                            height: 1.2125,
                            fontStyle: FontStyle.italic,
                            color: Color(0xffffffff),
                          ),
                        ),
                        TextSpan(
                          text: ' ',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            height: 1.2125,
                            fontStyle: FontStyle.italic,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // calculatorp1V (1:13)
              left: 108,
              top: 95,
              child: Align(
                child: SizedBox(
                  width: 142,
                  height: 37,
                  child: Text(
                    'calculator',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      height: 1.2125,
                      fontStyle: FontStyle.italic,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
