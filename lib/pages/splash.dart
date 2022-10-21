part of 'pages.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        (() => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Dashboard()))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [lightGreen, midGreen, darkgreenColor],
        )),
        child: Center(
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 125, 0, 0),
            child: Column(
              children: [
                Image.asset(
                  'images/splashlogo.png',
                  width: 300,
                  height: 200,
                ),
                const SizedBox(
                  height: 200,
                ),
                const CircularProgressIndicator(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
