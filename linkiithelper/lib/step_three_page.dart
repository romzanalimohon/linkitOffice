// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:linkit_app/demopage.dart';

// class StepThreePage extends StatefulWidget {
//   const StepThreePage({Key? key}) : super(key: key);

//   @override
//   State<StepThreePage> createState() => _StepThreePageState();
// }

// class _StepThreePageState extends State<StepThreePage> {
//   var roleController;
//   TextEditingController userNameController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();

//   String _selected = 'Company';
//   List<String> _items = ['Company', 'Individual'];

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: Colors.grey[300],
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                     children: [
//                       GestureDetector(
//                         onTap: () {
//                           Get.to(() => StepTwoPage());
//                         },
//                         child: Container(
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(50),
//                           ),
//                           child: Icon(
//                             Icons.chevron_left_sharp,
//                             size: 42,
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 80,
//                       ),
//                       Text(
//                         "Step 3",
//                         style: TextStyle(fontSize: 32),
//                       )
//                     ],
//                   ),
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
//                           padding: const EdgeInsets.all(8.0),
//                           child: Text(
//                             "Enter your\npayout account\ndetails",
//                             style: TextStyle(fontSize: 28),
//                           ),
//                         ),

//                         GestureDetector(
//                           onTap: () => showModal(context),
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Container(
//                               height: 50,
//                               width: size.width * .911,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10),
//                                   color: Colors.white),
//                               child: Padding(
//                                 padding: const EdgeInsets.all(10.0),
//                                 child: Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Text(
//                                       _selected,
//                                       style: TextStyle(fontSize: 22),
//                                     ),
//                                     Icon(
//                                       Icons.arrow_drop_down_sharp,
//                                       size: 32,
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: TextFormField(
//                             controller: passwordController,
//                             obscureText: true,
//                             decoration: InputDecoration(
//                                 hintText: 'Company name',
//                                 filled: true,
//                                 fillColor: Colors.white70,
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide.none,
//                                 )),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: TextFormField(
//                             controller: userNameController,
//                             decoration: InputDecoration(
//                                 hintText: 'Routing number',
//                                 filled: true,
//                                 fillColor: Colors.white,
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide.none,
//                                 )),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: TextFormField(
//                             controller: emailController,
//                             decoration: InputDecoration(
//                                 hintText: 'Account number',
//                                 filled: true,
//                                 fillColor: Colors.white70,
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide.none,
//                                 )),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: TextFormField(
//                             controller: passwordController,
//                             obscureText: true,
//                             decoration: InputDecoration(
//                                 hintText: 'Confirm account number',
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
//                         // Padding(
//                         //   padding: const EdgeInsets.all(8.0),
//                         //   child: ElevatedButton(
//                         //       onPressed: () {},
//                         //       style: ElevatedButton.styleFrom(
//                         //         primary: Color(0xFF42117A),
//                         //         minimumSize: const Size.fromHeight(50),

//                         //       ),
//                         //       child: Text(
//                         //         "Sign Up",
//                         //         style: TextStyle(fontSize: 18),
//                         //       )),
//                         // ),

//                         Center(
//                           child: Container(
//                             height: size.height * .07,
//                             width: size.width * .9,
//                             decoration: BoxDecoration(
//                               color: Colors.deepPurple,
//                               borderRadius: BorderRadius.circular(50),
//                             ),
//                             child: Center(
//                                 child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Text(
//                                   'Next',
//                                   style: TextStyle(
//                                       fontSize: 25, color: Colors.white),
//                                 ),
//                                 SizedBox(
//                                   width: 5,
//                                 ),
//                                 Icon(
//                                   Icons.arrow_forward_ios,
//                                   color: Colors.white,
//                                 )
//                               ],
//                             )),
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

//   // void generateRole(role) {
//   //   switch (dropdownvalue) {
//   //     case 'Student':
//   //       {
//   //         role = 1;
//   //       }
//   //       break;

//   //     case 'Teacher':
//   //       {
//   //         role = 2;
//   //       }
//   //       break;

//   //     default:
//   //       {
//   //         role = 3;
//   //       }
//   //       break;
//   //   }

//   //   roleController = role;
//   // }

//   void showModal(context) {
//     showModalBottomSheet(
//         context: context,
//         builder: (context) {
//           return Container(
//             padding: EdgeInsets.all(8),
//             height: 100,
//             alignment: Alignment.center,
//             child: ListView.separated(
//                 itemCount: _items.length,
//                 separatorBuilder: (context, int) {
//                   return Divider();
//                 },
//                 itemBuilder: (context, index) {
//                   return GestureDetector(
//                       child: Text(
//                         _items[index],
//                         style: TextStyle(fontSize: 22),
//                       ),
//                       onTap: () {
//                         setState(() {
//                           _selected = _items[index];
//                         });
//                         Navigator.of(context).pop();
//                       });
//                 }),
//           );
//         });
//   }
// }
