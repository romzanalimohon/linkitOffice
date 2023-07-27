import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';
import 'package:draggable_home/draggable_home.dart';

String read_more =
    "In the wake of their first home burning down, Nasa and Tsukasa Yuzaki are seeking temporary shelter at the Arisugawas' bathhouse. Though they have only been married for a short time, their relationship has only become sweeter by the day.";

class StackPage extends StatefulWidget {
  StackPage({Key? key}) : super(key: key);

  @override
  State<StackPage> createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  bool moreThanTwoLines = false;
  double height = .35;

  @override
  Widget build(BuildContext context) {
    return DraggableHome(
      backgroundColor: Colors.grey[100],
      leading: Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
      ),
      title: Text(
        "Writing",
        style: TextStyle(
            fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
      ),

      headerExpandedHeight: height,
      centerTitle: false,
      headerWidget: headerWidget(context),
      //headerBottomBar: headerBottomBarWidget(),
      body: [
        listView(),
      ],
      fullyStretchable: true,
      physics: AlwaysScrollableScrollPhysics(),
      expandedBody: Container(),
      //backgroundColor: Colors.white,
      appBarColor: Colors.white,
    );
  }

  // Row headerBottomBarWidget() {
  Widget headerWidget(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.blue,
          child: Center(
            child: Image.network(
              "https://img.freepik.com/free-photo/paper-butterflies-scattered-table_23-2148081709.jpg?w=900&t=st=1686635059~exp=1686635659~hmac=196ec57b3bb7579b5d57ead81adca5c07e8526fb1f2da878dc440ce64e99075e",
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * .4,
            ),
          ),
        ),
        Positioned(
            top: 30,
            left: 20,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.white),
              child: Icon(
                Icons.chevron_left_sharp,
                size: 30,
              ),
            )),
        Positioned(
          top: 150,
          left: 20,
          child: Text(
            "Writing",
            style: TextStyle(
                fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        Positioned(
          top: 160,
          left: 20,
          child: Text(
            "_____",
            style: TextStyle(
                fontSize: 32, fontWeight: FontWeight.bold, color: Colors.green),
          ),
        ),
        Positioned(
            top: 200,
            left: 20,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .8,
              child: ReadMoreText(
                read_more,
                style: TextStyle(color: Colors.white),
                trimLines: 2,
                colorClickableText: Colors.pink,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Show more',
                trimExpandedText: 'Show less',
                moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
                callback: (TrimMode) {
                  moreThanTwoLines = TrimMode;
                  print(moreThanTwoLines);
                  setState(() {
                    if (moreThanTwoLines == true) {
                      height = .34;
                    } else {
                      height = .38;
                    }
                  });
                },
              ),
            )),
      ],
    );
  }

  ListView listView() {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 0),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      shrinkWrap: true,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
          ),
          child: ListTile(
            leading: Container(
              // height: 150,
              // width: 150,
              // decoration: BoxDecoration(
              //     borderRadius: BorderRadius.only(
              //         topLeft: Radius.circular(20),
              //         bottomRight: Radius.circular(20)),
              //     image: DecorationImage(
              //         image: NetworkImage(
              //             "https://png.pngtree.com/png-vector/20230131/ourmid/pngtree-apple-logo-icon-png-image_6578228.png"),
              //         fit: BoxFit.fill)),
              child: Image.network(
                  height: 100,
                  width: 100,
                  "https://png.pngtree.com/png-vector/20230131/ourmid/pngtree-apple-logo-icon-png-image_6578228.png"),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Writing",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  "Min hr: 5hr(s)",
                  style: TextStyle(fontSize: 17, color: Colors.black26),
                ),
                SizedBox(
                  height: 17,
                ),
                Text(
                  "\$8.99/hr",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ],
            ),
            trailing: Padding(
              padding: EdgeInsets.only(top: 28),
              child: Container(
                height: 30,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                    child: Text(
                  "Add",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
