import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kepuharjoapp/Screen/Dashboard.dart';
import 'package:kepuharjoapp/Screen/Register.dart';
import 'package:kepuharjoapp/Screen/pengajuansurat.dart';
import 'package:kepuharjoapp/shared/shared.dart';

class loginKids extends StatefulWidget {
  const loginKids({Key key}) : super(key: key);

  @override
  State<loginKids> createState() => _loginKidsState();
}

class _loginKidsState extends State<loginKids> {
  bool _isChecked = false;
  TextEditingController nikController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [lightGreen, midGreen, darkgreenColor],
            )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // SizedBox(
                //   height: 100,
                // ),
                Image.asset(
                  'images/splashlogo.png',
                  height: 170,
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 380,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(143, 255, 255, 255),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        'LOGIN',
                        style: whiteTextStyle.copyWith(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextField(
                                  keyboardType: TextInputType.number,
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.allow(
                                        RegExp(r'[0-9]')),
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  controller: nikController,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: BorderSide.none),
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: "No. NIK",
                                    // prefixIcon: Icon(
                                    //   Icons.person,
                                    //   color: Colors.grey.shade600,
                                    // )
                                  ),
                                ),
                              ])),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextField(
                                  obscureText: true,
                                  controller: passwordController,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: BorderSide.none),
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: "Password",
                                    // prefixIcon: Icon(
                                    //   Icons.key,
                                    //   color: Colors.grey.shade600,
                                    // )
                                  ),
                                ),
                              ])),
                      Padding(
                        padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                        child: Row(
                          children: [
                            Container(
                              width: 10,
                              height: 10,
                              child: Checkbox(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                side: MaterialStateBorderSide.resolveWith(
                                    (states) => BorderSide(
                                        width: 1.5, color: Colors.black)),
                                tristate: false,
                                activeColor: Colors.transparent,
                                value: _isChecked,
                                checkColor: Colors.black,
                                onChanged: (value) {
                                  setState(() {
                                    _isChecked = value;
                                  });
                                },
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Ingatkan saya",
                              style: whiteTextStyle.copyWith(
                                  color: blackColor, fontSize: 14),
                            ),
                            Spacer(),
                            TextButton(
                              child: Text(
                                "Lupa password ?",
                                style: whiteTextStyle.copyWith(
                                    color: blackColor, fontSize: 14),
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 45,
                            width: 120,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFF2BAE82),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    )),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Dashboard()));
                                },
                                child: Text(
                                  'Masuk',
                                  style: whiteTextStyle.copyWith(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Belum memiliki akun ?",
                              style: whiteTextStyle.copyWith(
                                  color: blackColor, fontSize: 14),
                            ),
                            // SizedBox(
                            //   width: 5,
                            // ),
                            TextButton(
                              child: Text(
                                "Register",
                                style: whiteTextStyle.copyWith(
                                    color: darkgreenColor, fontSize: 14),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Register()));
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
