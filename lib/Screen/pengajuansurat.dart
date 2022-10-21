import 'package:flutter/material.dart';
import 'package:kepuharjoapp/shared/shared.dart';
import 'package:flutter/services.dart';

class PSurat extends StatefulWidget {
  @override
  State<PSurat> createState() => _PSuratState();
}

class _PSuratState extends State<PSurat> {
  TextEditingController nikController = TextEditingController();
  TextEditingController namaController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Pengajuan Surat',
          style: whiteTextStyle.copyWith(
              fontSize: 20, fontWeight: FontWeight.bold),
        ),
        flexibleSpace: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    lightGreen,
                    midGreen,
                  ],
                ))),
      ),
      body: GridView.count(
        padding: EdgeInsets.fromLTRB(25, 25, 25, 0),
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
            child: Card(
              margin: EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return StatefulBuilder(builder:
                          (BuildContext context, StateSetter setState) {
                        return Wrap(
                          children: [
                            Container(
                              color: Colors.transparent,
                              child: Container(
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(40),
                                        topLeft: Radius.circular(40))),
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 40),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 30,
                                      ),
                                      SingleChildScrollView(
                                        child: Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Silahkan Lengkapi data berikut : ",
                                                  style:
                                                      whiteTextStyle.copyWith(
                                                          fontSize: 16,
                                                          color: blackColor),
                                                )
                                              ],
                                            ),
                                            const Spacer(),
                                            Center(
                                              child: InkWell(
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Image.asset(
                                                  "images/close.png",
                                                  height: 20,
                                                  width: 20,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      TextField(
                                        inputFormatters: <TextInputFormatter>[
                                          FilteringTextInputFormatter.allow(
                                              RegExp(r'[0-9]')),
                                          FilteringTextInputFormatter.digitsOnly
                                        ],
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          hintText: "Input your Nik",
                                          labelText: "NIK",
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          hintText: "Input Your Name",
                                          labelText: "Nama Lengkap",
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          hintText: "Input Your Number",
                                          labelText: "No.Telepon",
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          hintText: "Input your password",
                                          labelText: "Password",
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 50,
                                      ),
                                      Container(
                                        // alignment: Alignment.center,
                                        height: 50,
                                        width:
                                            MediaQuery.of(context).size.width -
                                                0 * defaultMargin,
                                        child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Color(0xFF19CC2A),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
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
                                ),
                              ),
                            )
                          ],
                        );
                      });
                    },
                  );
                },

                // splashColor: greenColor,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.list_alt,
                        size: 50,
                        color: blackColor,
                      ),
                      Text(
                        "SKCK",
                        style: whiteTextStyle.copyWith(
                            color: blackColor, fontSize: 16),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
