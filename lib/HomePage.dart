import 'package:flutter/material.dart';

class SCard extends StatefulWidget {
  const SCard({Key? key}) : super(key: key);

  @override
  State<SCard> createState() => _CardState();
}

class _CardState extends State<SCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 14, 3, 46),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.list,
              color: Colors.black,
              size: 32,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications, color: Colors.black, size: 25))
        ],
      ),
      body: ListView(padding: EdgeInsets.zero, children: [
        Container(
          color: Colors.white,
          height: 300,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 32.0, left: 15.0, right: 15.0, bottom: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        /*  Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const ;
                      }
                      ));*/
                      },
                      child: const Text(
                        'View Card',
                        style: TextStyle(
                          color: Color.fromARGB(255, 14, 3, 46),
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SCard(),
            ],
          ),
        ),
      ]),
    );
  }

  Widget SCard() {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 216,
      width: 380,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 216, 228, 202),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Name: ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Universty ID: ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ID: ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Laifah Sanad",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "39#######",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "11########",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                )
              ],
            ),
            /*  Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 70,
                  child: Image.asset("assets/icons/mqu.png"),
                )
              ],
            )*/
          ]),
    );
  }
}
