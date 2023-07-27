import 'package:flutter/material.dart';

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
                    Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Hello, Gin\nHow are you today?",
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Icon(
                          Icons.notifications,
                          size: 40,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Positioned(
                      top: height * .12,
                      left: 15,
                      child: Container(
                        height: 300,
                        width: 350,
                        padding: const EdgeInsets.all(12),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
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
                                        style: TextStyle(fontSize: 22),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(50),
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
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Account Number",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    "12122",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepPurple,
                                        fontSize: 20),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Balance",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    "\$12,500",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepPurple,
                                        fontSize: 20),
                                  )
                                ],
                              ),
                              SizedBox(height: 80),
                              Row(
                                children: [
                                  Container(
                                    height: 50,
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
                                              fontSize: 20,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 50,
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
                                              fontSize: 20,
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
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade500,
                                  blurRadius: 15,
                                  offset: const Offset(5, 5)),
                              const BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 15,
                                  offset: Offset(-5, -5))
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15),
                child: Text(
                  "Recently Transaction\n22 Feb 2020",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.account_balance_wallet),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Default Account",
                              style: TextStyle(fontSize: 22),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '+\$50 USD',
                        style:
                            TextStyle(fontSize: 22, color: Colors.deepPurple),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.account_balance_wallet),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Allen Walker",
                              style: TextStyle(fontSize: 22),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '+\$20 USD',
                        style:
                            TextStyle(fontSize: 22, color: Colors.deepPurple),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15),
                child: Text(
                  "22 Feb 2020",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Divider(
                indent: 20,
                endIndent: 20,
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.account_balance_wallet),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Allen Walker",
                              style: TextStyle(fontSize: 22),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '+\$20 USD',
                        style:
                            TextStyle(fontSize: 22, color: Colors.deepPurple),
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
