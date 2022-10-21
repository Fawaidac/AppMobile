import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kepuharjoapp/Screen/Login.dart';
import 'package:kepuharjoapp/shared/shared.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';

class Register extends StatefulWidget {
  const Register({Key key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final countryPicker = const FlCountryCodePicker();
  CountryCode countryCode;
  bool _isChecked = false;
  TextEditingController nikController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController namaController = TextEditingController();
  TextEditingController tlpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [lightGreen, midGreen, darkgreenColor],
              )),
              child: SingleChildScrollView(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // SizedBox(
                    //   height: 35,
                    // ),
                    Image.asset(
                      'images/splashlogo.png',
                      height: 170,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      // padding: EdgeInsets.fromLTRB(0, 0, 0, 25),
                      height: 500,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(143, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Registrasi',
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
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            borderSide: BorderSide.none),
                                        filled: true,
                                        fillColor: Colors.white,
                                        hintText: "NIK",
                                        // prefixIcon: Icon(
                                        //   Icons.person,
                                        //   color: Colors.grey.shade600,
                                        // )
                                      ),
                                    ),
                                  ])),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    TextField(
                                      obscureText: false,
                                      controller: namaController,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            borderSide: BorderSide.none),
                                        filled: true,
                                        fillColor: Colors.white,
                                        hintText: "Nama Lengkap",
                                        // prefixIcon: Icon(
                                        //   Icons.person_sharp,
                                        //   color: Colors.grey.shade600,
                                        // )
                                      ),
                                    ),
                                  ])),
                          SizedBox(
                            height: 10,
                          ),

                          Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    TextFormField(
                                      keyboardType: TextInputType.number,
                                      controller: tlpController,
                                      textInputAction: TextInputAction.done,
                                      maxLines: 1,
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              borderSide: BorderSide.none),
                                          filled: true,
                                          fillColor: Colors.white,
                                          // hintText: "No.Telepon",
                                          prefixIcon: Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 6, vertical: 5),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                GestureDetector(
                                                  onTap: () async {
                                                    final code =
                                                        await countryPicker
                                                            .showPicker(
                                                                context:
                                                                    context);
                                                    setState(() {
                                                      countryCode = code;
                                                    });
                                                  },
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                10, 0, 5, 0),
                                                        child:
                                                            countryCode != null
                                                                ? countryCode
                                                                    .flagImage
                                                                : null,
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      Container(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 8,
                                                                vertical: 5),
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                color:
                                                                    blackColor,
                                                                width: 1),
                                                            color: Colors
                                                                .transparent,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5)),
                                                        child: Text(
                                                          countryCode
                                                                  ?.dialCode ??
                                                              "+62",
                                                          style: whiteTextStyle
                                                              .copyWith(
                                                                  color:
                                                                      blackColor),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                          // prefixIcon: Icon(
                                          //   Icons.telephone,
                                          //   color: Colors.grey.shade600,
                                          // )
                                          ),
                                    ),
                                  ])),
                          SizedBox(
                            height: 10,
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
                                            borderRadius:
                                                BorderRadius.circular(15),
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
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(30, 0, 25, 0),
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
                                            width: 1.5, color: darkgreenColor)),
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
                                  "Saya setuju syarat dan ketentuan",
                                  style: whiteTextStyle.copyWith(
                                      color: blackColor, fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 25,
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
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        )),
                                    onPressed: () {},
                                    child: Text(
                                      'Daftar',
                                      style: whiteTextStyle.copyWith(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    )),
                              ),
                            ],
                          ),
                          // SizedBox(
                          //   height: ,
                          // ),
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
                                TextButton(
                                  child: Text(
                                    "Login",
                                    style: whiteTextStyle.copyWith(
                                        color: darkgreenColor, fontSize: 14),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => loginKids()));
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
