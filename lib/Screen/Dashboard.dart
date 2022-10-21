import 'package:flutter/material.dart';
import 'package:kepuharjoapp/shared/shared.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(300),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          title: Container(
            padding: EdgeInsets.all(25),
            // margin: EdgeInsets.all(20),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'images/lambange.png',
                  fit: BoxFit.cover,
                  height: 50,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Kepuharjo App",
                  style: appTextStyle.copyWith(
                      fontSize: 20, fontWeight: FontWeight.bold),
                )
                // Container(
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.start,
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Text(
                //         "Kepuharjo App",
                //         style: appTextStyle.copyWith(
                //             fontSize: 20, fontWeight: FontWeight.bold),
                //       )
                //     ],
                //   ),
                // )
              ],
            ),
          ),
          flexibleSpace: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [lightGreen, midGreen, darkgreenColor],
                  ))),
        ),
      ),
    );
  }
}
