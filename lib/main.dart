import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VERSION21',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

final Shader linearGradient = LinearGradient(
  colors: <Color>[
    Color.fromRGBO(210, 209, 213, 1),
    Color.fromRGBO(155, 155, 155, 1)
  ],
).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.fromLTRB(50, 80, 0, 0),
            child: Image(image: AssetImage('lib/images/cmd.png'), height: 50),
          ),
          Container(
              padding: const EdgeInsets.only(left: 50, top: 30),
              child: Text("VERSION'21",
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()..shader = linearGradient),
                  ))),
          Container(
              margin: const EdgeInsets.only(left: 50, top: 20, right: 10),
              child: Container(
                  height: 14,
                  width: 70,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[
                        Color.fromRGBO(218, 213, 245, 1),
                        Color.fromRGBO(186, 146, 246, 1)
                      ],
                    ),
                  ))),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.only(left: 50, top: 70),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WebView(
                                      initialUrl:
                                          'https://www.facebook.com/versionmeet',
                                      javascriptMode:
                                          JavascriptMode.unrestricted,
                                    )));
                      },
                      child: Image(
                          image: AssetImage('lib/images/fb.png'), height: 40))),
              Container(
                  margin: EdgeInsets.only(left: 15, top: 70),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WebView(
                                      initialUrl:
                                          'https://www.youtube.com/c/VersionNITTrichy',
                                      javascriptMode:
                                          JavascriptMode.unrestricted,
                                    )));
                      },
                      child: Image(
                          image: AssetImage('lib/images/yt.png'), height: 40))),
              Container(
                  margin: EdgeInsets.only(left: 15, top: 70),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WebView(
                                      initialUrl:
                                          'https://www.instagram.com/version_nit_trichy/',
                                      javascriptMode:
                                          JavascriptMode.unrestricted,
                                    )));
                      },
                      child: Image(
                          image: AssetImage('lib/images/insta.png'),
                          height: 40))),
              Container(
                  margin: EdgeInsets.only(left: 15, top: 70),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WebView(
                                      initialUrl:
                                          'https://www.linkedin.com/company/version-mca-nit-trichy',
                                      javascriptMode:
                                          JavascriptMode.unrestricted,
                                    )));
                      },
                      child: Image(
                          image: AssetImage('lib/images/linkedin.png'),
                          height: 40))),
              Container(
                  margin: EdgeInsets.only(left: 15, top: 70),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WebView(
                                      initialUrl:
                                          'https://discord.com/invite/dcKbGm8m',
                                      javascriptMode:
                                          JavascriptMode.unrestricted,
                                    )));
                      },
                      child: Image(
                          image: const AssetImage('lib/images/wechat.png'),
                          height: 40))),
            ],
          ),
          Container(
              margin: EdgeInsets.only(top: 70, left: 30, right: 10),
              child: Text("Theme Introduction",
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(226, 110, 98, 1),
                  )))),
          Container(
              margin: const EdgeInsets.only(top: 40, left: 30, right: 10),
              child: Text(
                  "Decentralized means they are independent, and no one can control them as a group. Deterministic ie., they perform the same function irrespective of the environment they are excecuted.",
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.normal,
                          color: Colors.white)))),
          Center(
              child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Text("About US",
                style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.normal,
                  color: Color.fromRGBO(179, 123, 31, 1),
                ))),
          )),
          Container(
              margin: const EdgeInsets.only(top: 40, left: 30, right: 10),
              child: Text(
                  "Version is an annual all India meet conducted by the students of MCA at NIT, Trichy. Since its conception in 1991, Version has aimed to bring the best students from MCA all over India to NITT, to compete against each other. Version includes a variety of events which aims to challenge students to think outside the box and be creative. Version is the star event for MCA at NIT, Trichy.",
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.normal,
                          color: Colors.white)))),
          Container(
              margin: EdgeInsets.only(top: 30, left: 30),
              child: Text("Technologies Used (Themes)",
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(226, 110, 98, 1),
                  )))),
          Container(
              margin: const EdgeInsets.only(top: 40, left: 30),
              child: Text("Whizcon <-> Knotryx <-> Qubykon <-> Visnoetic",
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)))),
          Container(
              margin: const EdgeInsets.only(top: 15, left: 30),
              child: Text("Witaura <-> Capextremis <-> Crewcite",
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)))),
          Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
              child: Container(
                height: 2.0,
                width: MediaQuery.of(context).size.width - 40,
                color: Color.fromRGBO(101, 125, 137, 1),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Image(
                      image: AssetImage('lib/images/contact.png'), height: 30),
                  SizedBox(width: 15),
                  Text("Fest : Version'21",
                      style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)))
                ],
              )),
          Container(
              margin: EdgeInsets.only(left: 30, top: 6),
              child: Row(
                children: [
                  Image(
                      image: AssetImage('lib/images/contact.png'), height: 30),
                  SizedBox(width: 15),
                  Text("Theme : Deconsentro",
                      style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)))
                ],
              )),
          Container(
              margin: EdgeInsets.only(left: 30, top: 6),
              child: Row(
                children: [
                  Image(image: AssetImage('lib/images/person.png'), height: 30),
                  SizedBox(width: 15),
                  Text("Email : contact@version21.in",
                      style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)))
                ],
              )),
          Container(
              margin: EdgeInsets.only(left: 30, top: 6),
              child: Row(
                children: [
                  Image(image: AssetImage('lib/images/mail.png'), height: 30),
                  SizedBox(width: 15),
                  Text("Location : NIT Trichy",
                      style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)))
                ],
              )),
          Container(
              margin: EdgeInsets.only(left: 30, top: 6),
              child: Row(
                children: [
                  Image(image: AssetImage('lib/images/home.png'), height: 30),
                  SizedBox(width: 15),
                  Text("Department : Computer Application",
                      style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)))
                ],
              )),
          Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
              child: Container(
                height: 2.0,
                width: MediaQuery.of(context).size.width - 40,
                color: Color.fromRGBO(101, 125, 137, 1),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Thanks for scrolling,",
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white))),
                          Text(" that's all folks.",
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(158, 163, 176, 1))))
            ],
          ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(left: 0, top: 20),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WebView(
                                      initialUrl:
                                          'https://www.facebook.com/versionmeet',
                                      javascriptMode:
                                          JavascriptMode.unrestricted,
                                    )));
                      },
                      child: Image(
                          image: AssetImage('lib/images/fb.png'), height: 40))),
              Container(
                  margin: EdgeInsets.only(left: 15, top: 20),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WebView(
                                      initialUrl:
                                          'https://www.youtube.com/c/VersionNITTrichy',
                                      javascriptMode:
                                          JavascriptMode.unrestricted,
                                    )));
                      },
                      child: Image(
                          image: AssetImage('lib/images/yt.png'), height: 40))),
              Container(
                  margin: EdgeInsets.only(left: 15, top: 20),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WebView(
                                      initialUrl:
                                          'https://www.instagram.com/version_nit_trichy/',
                                      javascriptMode:
                                          JavascriptMode.unrestricted,
                                    )));
                      },
                      child: Image(
                          image: AssetImage('lib/images/insta.png'),
                          height: 40))),
              Container(
                  margin: EdgeInsets.only(left: 15, top: 20),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WebView(
                                      initialUrl:
                                          'https://www.linkedin.com/company/version- mca-nit-trichy',
                                      javascriptMode:
                                          JavascriptMode.unrestricted,
                                    )));
                      },
                      child: Image(
                          image: AssetImage('lib/images/linkedin.png'),
                          height: 40))),
              Container(
                  margin: EdgeInsets.only(left: 15, top: 20),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WebView(
                                      initialUrl:
                                          'https://discord.com/invite/dcKbGm8m',
                                      javascriptMode:
                                          JavascriptMode.unrestricted,
                                    )));
                      },
                      child: Image(
                          image: const AssetImage('lib/images/wechat.png'),
                          height: 40))),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top:20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Developed by EEC (Version'21)  ",
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(91, 150, 203, 1)))),
                            Text("♥",
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(158, 163, 176, 1))))
              ],
            ),
          ),
          SizedBox(height:20)
        ]),
      ),
    );
  }
}
