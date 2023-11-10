import 'package:flutter/material.dart';
import 'package:quapp/GPA.dart';
import 'package:quapp/signup.dart';
import 'package:quapp/forgetpass.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 0, 168, 171),
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
      backgroundColor: Color.fromARGB(255, 14, 3, 46),
      body: ListView(padding: EdgeInsets.zero, children: [
        Upper(),
        MyList(),
        //  taps(),
      ]),
    );
  }

  Widget Upper() {
    return Container(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      height: 200,
      width: double.infinity,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(100),
            bottomRight: Radius.circular(100),
          ),
          color: Color.fromARGB(255, 0, 168, 171) // Colors.cyan,
          ),
      child: Column(
        children: [
          Text(
            "Academic services",
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: Colors.white),
          )
        ],
      ),
    );
  }

  Widget MyList() {
    List<IconData> IconsItems = [
      Icons.account_balance,
      Icons.indeterminate_check_box,
    ];

    List<String> Titles = [
      "GPA",
      "RULES",
    ];

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        color: Colors.white,
      ),
      height: 450,
      width: 50,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.1,
          mainAxisSpacing: 25,
        ),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 2,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              if (index == 0) {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const GPA_Page()),
                );
              } else if (index == 1) {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const password()),
                );
              }
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(90, 0, 168, 171),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Icon(IconsItems[index]),
                  Text(Titles[index]),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
