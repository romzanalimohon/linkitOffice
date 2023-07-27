// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:linkit_app/step_three_page.dart';

// class StepTwoPage extends StatefulWidget {
//   const StepTwoPage({Key? key}) : super(key: key);

//   @override
//   State<StepTwoPage> createState() => _StepTwoPageState();
// }

// class _StepTwoPageState extends State<StepTwoPage> {
//   var roleController;
//   TextEditingController userNameController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: Colors.grey[300],
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                     Container(
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(50),
//                       ),
//                       child: Icon(
//                         Icons.chevron_left_sharp,
//                         size: 42,
//                       ),
//                     ),
//                     SizedBox(
//                       width: 80,
//                     ),
//                     Text(
//                       "Step 2",
//                       style: TextStyle(fontSize: 32),
//                     )
//                   ],
//                 ),
//                 Container(
//                   child: SingleChildScrollView(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 14.0),
//                           child: Text(
//                             "Enter your\npayout page",
//                             style: TextStyle(fontSize: 28),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 14.0),
//                           child: TextFormField(
//                             controller: userNameController,
//                             decoration: InputDecoration(
//                                 hintText: 'Algeria',
//                                 filled: true,
//                                 fillColor: Colors.white,
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide.none,
//                                 )),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 14.0),
//                           child: TextFormField(
//                             controller: emailController,
//                             decoration: InputDecoration(
//                                 hintText: 'Address line 1',
//                                 filled: true,
//                                 fillColor: Colors.white70,
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide.none,
//                                 )),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 14.0),
//                           child: TextFormField(
//                             controller: passwordController,
//                             obscureText: true,
//                             decoration: InputDecoration(
//                                 hintText: 'Address line 2',
//                                 filled: true,
//                                 fillColor: Colors.white70,
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide.none,
//                                 )),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 14.0),
//                           child: TextFormField(
//                             controller: userNameController,
//                             decoration: InputDecoration(
//                                 hintText: 'City',
//                                 filled: true,
//                                 fillColor: Colors.white,
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide.none,
//                                 )),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 14.0),
//                           child: TextFormField(
//                             controller: emailController,
//                             decoration: InputDecoration(
//                                 hintText: 'State/Province',
//                                 filled: true,
//                                 fillColor: Colors.white70,
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide.none,
//                                 )),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 14.0),
//                           child: TextFormField(
//                             controller: passwordController,
//                             obscureText: true,
//                             decoration: InputDecoration(
//                                 hintText: 'Zip code/Postal Code',
//                                 filled: true,
//                                 fillColor: Colors.white70,
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide.none,
//                                 )),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         GestureDetector(
//                           onTap: () {
//                             Get.to(() => StepThreePage());
//                           },
//                           child: Center(
//                             child: Padding(
//                               padding: const EdgeInsets.only(top: 14.0),
//                               child: Container(
//                                 height: size.height * .07,
//                                 width: size.width * .9,
//                                 decoration: BoxDecoration(
//                                   color: Colors.deepPurple,
//                                   borderRadius: BorderRadius.circular(50),
//                                 ),
//                                 child: Center(
//                                     child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Text(
//                                       'Next',
//                                       style: TextStyle(
//                                           fontSize: 25, color: Colors.white),
//                                     ),
//                                     SizedBox(
//                                       width: 5,
//                                     ),
//                                     Icon(
//                                       Icons.arrow_forward_ios,
//                                       color: Colors.white,
//                                     )
//                                   ],
//                                 )),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
