import 'package:flutter/material.dart';
import 'package:linkit_app/dimension.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * .5,
                child: Stack(
                  children: [
                    Container(
                      height: height * .4,
                      color: Colors.deepPurple,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: Dimensions.height10),
                      child: Row(
                        children: [
                          SizedBox(
                            width: Dimensions.width15,
                          ),
                          Container(
                            height: Dimensions.height10 * 7,
                            width: Dimensions.height10 * 7,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: Dimensions.width10,
                          ),
                          Text(
                            "Hello, Gin\nHow are you today?",
                            style: TextStyle(fontSize: Dimensions.font16 * 1.3),
                          ),
                          SizedBox(
                            width: Dimensions.width10 * 7,
                          ),
                          Icon(
                            Icons.notifications,
                            size: Dimensions.font20 * 2,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    Positioned(
                      top: height * .12,
                      left: Dimensions.width15,
                      child: Container(
                        height: Dimensions.screenHeight * .35,
                        width: Dimensions.screenWidth * .92,
                        padding: EdgeInsets.all(Dimensions.height10),
                        child: Padding(
                          padding: EdgeInsets.all(Dimensions.height10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.account_balance_wallet),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Default Account",
                                        style: TextStyle(
                                            fontSize: Dimensions.font20 * 1.1),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: Dimensions.height15,
                                    width: Dimensions.width15,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(
                                          Dimensions.radius20 * 2.5),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'i',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontStyle: FontStyle.italic),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              SizedBox(height: Dimensions.height20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Account Number",
                                    style:
                                        TextStyle(fontSize: Dimensions.font20),
                                  ),
                                  Text(
                                    "12122",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepPurple,
                                        fontSize: Dimensions.font20),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: Dimensions.height10 / 2,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Balance",
                                    style:
                                        TextStyle(fontSize: Dimensions.font20),
                                  ),
                                  Text(
                                    "\$12,500",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepPurple,
                                        fontSize: Dimensions.font20),
                                  )
                                ],
                              ),
                              SizedBox(height: Dimensions.height20 * 4),
                              Row(
                                children: [
                                  Container(
                                    height: Dimensions.height10 * 5,
                                    width: width * .38,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.deepPurple,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          "ADD",
                                          style: TextStyle(
                                              fontSize: Dimensions.font20,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: Dimensions.width10,
                                  ),
                                  Container(
                                    height: Dimensions.height10 * 5,
                                    width: width * .38,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.deepPurple,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.monetization_on_outlined,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          "WITHDRAW",
                                          style: TextStyle(
                                              fontSize: Dimensions.font20,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          //color: Colors.grey[300],
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius15),
                          // boxShadow: [
                          //   BoxShadow(
                          //       color: Colors.grey.shade500,
                          //       blurRadius: 15,
                          //       offset: const Offset(5, 5)),
                          //   const BoxShadow(
                          //       color: Colors.white,
                          //       blurRadius: 15,
                          //       offset: Offset(-5, -5))
                          // ]
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: Dimensions.height20),
              Padding(
                padding: EdgeInsets.only(
                    left: Dimensions.width15, right: Dimensions.width15),
                child: Text(
                  "Recently Transaction\n22 Feb 2020",
                  style: TextStyle(fontSize: Dimensions.font20),
                ),
              ),
              SizedBox(
                height: Dimensions.height10,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: Dimensions.width15, right: Dimensions.width15),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(Dimensions.radius20 / 2),
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(Dimensions.height10 * .8),
                        child: Row(
                          children: [
                            Icon(Icons.account_balance_wallet),
                            SizedBox(
                              width: Dimensions.width10 / 2,
                            ),
                            Text(
                              "Default Account",
                              style:
                                  TextStyle(fontSize: Dimensions.font20 * 1.1),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '+\$50 USD',
                        style: TextStyle(
                            fontSize: Dimensions.font20 * 1.1,
                            color: Colors.deepPurple),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: Dimensions.width15, right: Dimensions.width15),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(Dimensions.radius20 / 2),
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(Dimensions.height10 * .8),
                        child: Row(
                          children: [
                            Icon(Icons.account_balance_wallet),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Allen Walker",
                              style:
                                  TextStyle(fontSize: Dimensions.font20 * 1.1),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '+\$20 USD',
                        style: TextStyle(
                            fontSize: Dimensions.font20 * 1.1,
                            color: Colors.deepPurple),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: Dimensions.height20,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: Dimensions.width15, right: Dimensions.width15),
                child: Text(
                  "22 Feb 2020",
                  style: TextStyle(fontSize: Dimensions.font20),
                ),
              ),
              Divider(
                indent: 20,
                endIndent: 20,
              ),
              SizedBox(
                height: Dimensions.height10,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: Dimensions.width15, right: Dimensions.width15),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(Dimensions.radius20 / 2),
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(Dimensions.height10 * .8),
                        child: Row(
                          children: [
                            Icon(Icons.account_balance_wallet),
                            SizedBox(
                              width: Dimensions.width10 / 2,
                            ),
                            Text(
                              "Allen Walker",
                              style:
                                  TextStyle(fontSize: Dimensions.font20 * 1.1),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '+\$20 USD',
                        style: TextStyle(
                            fontSize: Dimensions.font20 * 1.1,
                            color: Colors.deepPurple),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
