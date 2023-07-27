import 'package:flutter/material.dart';
import 'package:linkit_app/first_page.dart';
import 'package:linkit_app/second_page.dart';
import 'package:slide_switcher/slide_switcher.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int switcherIndex1 = 0;
  int switcherIndex2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: switcherIndex1 == 0
          ? Colors.white10.withOpacity(0.27)
          : Colors.white10.withOpacity(0.2),
      body: ListView(
        shrinkWrap: true,
        children: [
          const SizedBox(height: 50),
          SlideSwitcher(
            children: [
              Text(
                'First',
                style: TextStyle(
                  fontWeight:
                      switcherIndex2 == 0 ? FontWeight.w500 : FontWeight.w400,
                  color: switcherIndex2 == 0 ? Colors.deepPurple : Colors.white,
                ),
              ),
              Text(
                'Second',
                style: TextStyle(
                  fontWeight:
                      switcherIndex2 == 1 ? FontWeight.w500 : FontWeight.w400,
                  color: switcherIndex2 == 1 ? Colors.deepPurple : Colors.white,
                ),
              ),
            ],
            containerColor: Colors.deepPurple,
            onSelect: (int index) => setState(() {
              switcherIndex2 = index;
            }),
            containerHeight: 40,
            containerWight: 350,
          ),
          // SizedBox(
          //   height: MediaQuery.of(context).size.height * 1.3,
          //   child: SingleChildScrollView(
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [switcherIndex2 == 1 ? SecondPage() : FirstPage()],
          //     ),
          //   ),
          // )

          SizedBox(
            height: MediaQuery.of(context).size.height * 2,
            child: Container(
              child: switcherIndex2 == 1 ? SecondPage() : FirstPage(),
            ),
          )
        ],
      ),
    );
  }
}

// class ContainerOne extends StatelessWidget {
//   const ContainerOne({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.green,
//       child: const Text("container one", style: TextStyle(fontSize: 20)),
//     );
//   }
// }

// class ContainerTwo extends StatelessWidget {
//   const ContainerTwo({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.red,
//       child: const Text("container two", style: TextStyle(fontSize: 20)),
//     );
//   }
// }
