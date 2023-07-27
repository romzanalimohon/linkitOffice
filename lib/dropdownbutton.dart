import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/state_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:wc_form_validators/wc_form_validators.dart';

class dropdownPage extends StatefulWidget {
  @override
  State<dropdownPage> createState() => _dropdownPageState();
}

class _dropdownPageState extends State<dropdownPage> {
  final userdata = GetStorage();
  var selectedId;
  List data = [];
  Future getAllName() async {
    var response = await http
        .get(Uri.parse("http://165.232.173.5/api/categories/"), headers: {
      "Accept": "application/json",
      "Authorization": "token 77db6129b4662db8ab5844ac507d6de306b3e87c"
    });

    // print(jsonDecode(response.body)['category']);

    try {
      data = jsonDecode(response.body)['category'];
      // print('dfssssssssssssssssssssssssssssssssssss');
      // print(data);
      // print(data[0]['categoryName']);
    } catch (error) {
      print(error);
    }
  }

  int i = 0;
  TextEditingController dateInputController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAllName();
  }

  final passwordController = TextEditingController();

  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  int dropdownValue = 1;

  @override
  Widget build(BuildContext context) {
    var textValue = passwordController;
    var c;
    return Scaffold(
        body: RefreshIndicator(
      color: Colors.white,
      backgroundColor: Colors.blue,
      onRefresh: () async {
        setState(() {
          getAllName();
        });
      },
      child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              FutureBuilder(
                  future: getAllName(),
                  builder: (context, snapshot) {
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: DropdownButton(
                        value: selectedId,
                        hint: Text("select name"),
                        items: data.map(
                          (list) {
                            return DropdownMenuItem(
                              child: Text(list['categoryName']),
                              value: list['id'],
                            );
                          },
                        ).toList(),
                        onChanged: (value) {
                          setState(() {
                            //dynamic value;
                            selectedId = value as dynamic;
                            print(selectedId);
                          });
                        },
                      ),
                    );
                  }),
              Container(
                height: 200,
                width: 300,
                padding: const EdgeInsets.all(12),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Name:"),
                          Text(
                            "Asif Rahman",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple),
                          )
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Account Number:"),
                          Text(
                            "12122",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Routing Number:"),
                          Text(
                            "12122",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple),
                          )
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Country:"),
                          Text(
                            "USA",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("City:"),
                          Text(
                            "Dhaka",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Zip Code:"),
                          Text(
                            "1216",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple),
                          )
                        ],
                      ),
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
              SizedBox(
                height: 20,
              ),
              // Container(
              //   child: Image.network(
              //       "http://165.232.173.5/media/images/pngtree-user-vector-avatar-png-image_1541962.jpg"),
              // )

              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Date',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1)),
                ),
                controller: dateInputController,
                readOnly: true,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1950),
                      lastDate: DateTime(2050));

                  if (pickedDate != null) {
                    dateInputController.text = pickedDate.toString();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
