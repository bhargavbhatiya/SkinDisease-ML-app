import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skin_ML/Homepage/BottomNavigationBar.dart';
import 'package:skin_ML/Homepage/drawer.dart';
import 'package:skin_ML/Homepage/23DiseasesDataPage.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:skin_ML/Homepage/DiseasesInfoPage.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:skin_ML/Homepage/DailyProblemsInfoPage.dart';
import 'package:skin_ML/Homepage/DailyProblemsPage.dart';
import 'package:skin_ML/login.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      loadingText: Text("Loading"),
      seconds: 5,
      backgroundColor: Color.fromRGBO(14, 49, 80, 1),
      image: Image.asset(
        'assets/SkinShine with text.png',
        alignment: Alignment.bottomCenter,
      ),
      photoSize: 165,
      loaderColor: Colors.white,
      navigateAfterSeconds: Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => login()),
      )
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // var color3 = Color.fromRGBO(247, 233, 227, 1);
  // var color1 = Color.fromRGBO(14, 49, 80, 1); //Dark purple
  var color3 = Color.fromRGBO(224, 140, 255, 0.2);
  // var color4 = Color.fromRGBO(255, 241, 243, 1);

  // ignore: non_constant_identifier_names
  row_of_two_diseses_list(String _disesesName, int _index) {
    List<String> diseaseData = [
      _disesesName,
      dieses[_index][0],
      dieses[_index][1],
      dieses[_index][2],
      dieses[_index][3]
    ];
    return Card(
      child: InkWell(
        child: Container(
          padding: EdgeInsets.all(0),
          // height: 50.0,
          width: MediaQuery.of(this.context).size.width - 20,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                _disesesName,
                style: GoogleFonts.ptSans(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: Color.fromRGBO(229, 33, 103, 0.52),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onTap: () {
          Navigator.push(
            this.context,
            // ignore: missing_return
            MaterialPageRoute(
              builder: (context) => DiseasesInfoPage(),
              settings: RouteSettings(arguments: diseaseData),
            ),
          );
        },
      ),
    );
  }

  // ignore: non_constant_identifier_names
  page_of_daily_problems(String _dailyProblemName, int _index) {
    var _cardColor;
    if (_index % 3 == 0) {
      _cardColor = Color.fromRGBO(250, 200, 223, 1); //light pink
    } else if (_index % 3 == 1) {
      _cardColor = Color.fromRGBO(229, 233, 199, 1); //light green
    } else {
      _cardColor = Color.fromRGBO(217, 221, 248, 1); //light green
    }
    List dailyProblemData = [_dailyProblemName, dailyproblems[_index]];
    return Card(
      color: _cardColor,
      child: InkWell(
          child: Container(
            padding: EdgeInsets.all(0),
            height: 20.0,
            width: 160.0,
            child: Center(
              child: Text(
                _dailyProblemName,
                textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: _cardColor,
            ),
          ),
          onTap: () {
            Navigator.push(
              this.context,
              // ignore: missing_return
              MaterialPageRoute(
                builder: (context) => DailyProblemsPage(),
                settings: RouteSettings(arguments: dailyProblemData),
              ),
            );
          }),
    );
  }

  Map<int, bool> countToValue = <int, bool>{};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(14, 49, 80, 1),
        centerTitle: true,
        // title: appLogo,
        title: Text(
          "SKINSHINE",
          style: GoogleFonts.barlow(
              fontSize: 27,
              color: Colors.white,
              fontWeight: FontWeight.w500,
              letterSpacing: 3),
          textAlign: TextAlign.left,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: color3),
          child: Column(
            children: <Widget>[
              //Image.asset('assets/opening.jpg'),
              Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 10),
                      CarouselSlider(
                          //height: 400.0,
                          initialPage: 0,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          reverse: false,
                          enableInfiniteScroll: true,
                          autoPlayInterval: Duration(seconds: 5),
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 3000),
                          pauseAutoPlayOnTouch: Duration(seconds: 10),
                          scrollDirection: Axis.horizontal,
                          onPageChanged: (index) {
                            setState(() {});
                          },
                          items: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                    image: AssetImage('assets/Images/img1.jpg'),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                    image: AssetImage('assets/Images/img2.jpg'),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                    image: AssetImage('assets/Images/img3.jpg'),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                    image: AssetImage('assets/Images/img4.jpg'),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                    image: AssetImage('assets/Images/img5.jpg'),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                    image: AssetImage('assets/Images/img7.jpg'),
                                    fit: BoxFit.cover,
                                  )),
                            )
                          ]),
                    ]),
              ),
              SizedBox(height: 10),
              Text(
                "Solve your everyday problems: ",
                style: GoogleFonts.robotoSlab(
                    fontSize: 22,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              Container(
                // decoration: BoxDecoration(color: Colors.white),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  height: 60.0,
                  child: Center(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        SizedBox(width: 15),
                        page_of_daily_problems("Scars", 0),
                        SizedBox(width: 10),
                        page_of_daily_problems("Wrinkles", 1),
                        SizedBox(width: 10),
                        page_of_daily_problems("Dark Circles", 2),
                        SizedBox(width: 10),
                        page_of_daily_problems("Acne breakouts", 3),
                        SizedBox(width: 10),
                        page_of_daily_problems("Dry/Irritated skin", 4),
                        SizedBox(width: 10),
                        page_of_daily_problems("Folliculitis", 5),
                        SizedBox(width: 10),
                        page_of_daily_problems("Prickly heat", 6),
                        SizedBox(width: 10),
                        page_of_daily_problems("Sunburn", 7),
                        SizedBox(width: 10),
                        page_of_daily_problems("Sun allergy", 8),
                        SizedBox(width: 10),
                        page_of_daily_problems("Varicose veins", 9),
                        SizedBox(width: 10),
                        page_of_daily_problems("White spots", 10),
                        SizedBox(width: 10),
                        page_of_daily_problems("Stretch marks", 11),
                        SizedBox(width: 10),
                        page_of_daily_problems("Swimmer’s itch", 12),
                        SizedBox(width: 10),
                        page_of_daily_problems("Dandruff", 13),
                        SizedBox(width: 15),
                      ],
                    ),
                  ),
                ),
              ),
              // Text(
              //   "Facing an issue: \n Scan your image and get instant results"),
              Container(
                padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset("assets/opening.jpg"),
                ),
              ),
              Text(
                "Clear your doubts here..",
                style: GoogleFonts.robotoSlab(
                    fontSize: 22,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 15),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Card(
                      child: Container(
                        height: 70.0,
                        width: MediaQuery.of(context).size.width / 2.8,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            SizedBox(height: 3),
                            Text(
                              "Scan Your Image",
                              style: GoogleFonts.robotoSlab(
                                  // fontSize: 28,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold),
                            ),
                            //   style: TextStyle(
                            //       color: Colors.black,
                            //       fontWeight: FontWeight.bold,),
                            // ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(85, 233, 199, 1),
                          // color: Color.fromRGBO(9, 17, 55, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Card(
                      child: Container(
                        height: 70.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person,
                              color: Colors.black,
                            ),
                            SizedBox(height: 3),
                            Text(
                              "Contact to Us",
                              style: GoogleFonts.robotoSlab(
                                  // fontSize: 28,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold),
                              // style: TextStyle(
                              //   color: Colors.white,
                              // ),
                            ),
                          ],
                        ),
                        width: MediaQuery.of(context).size.width / 2.8,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(173, 182, 248, 1),
                          // color: Color.fromRGBO(229, 33, 103, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: MediaQuery.of(context).size.width - 10,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.blueGrey,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Text(
                          "Skin Diseases List",
                          style: GoogleFonts.robotoSlab(
                              fontSize: 28,
                              color: Color.fromRGBO(14, 49, 80, 1),
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      row_of_two_diseses_list("Acne and Rosacea", 0),
                      row_of_two_diseses_list(
                          "Actinic Keratosis Basal Cell Carcinoma and other Malignant Lesions",
                          1),
                      row_of_two_diseses_list("Atopic Dermatitis", 2),
                      row_of_two_diseses_list("Bullous Disease", 3),
                      Container(
                        height: 35,
                        padding: EdgeInsets.all(0),
                        width: MediaQuery.of(context).size.width - 20,
                        child: FlatButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DiseasesList()),
                            );
                          },
                          child: Text(
                            "See More",
                            style: GoogleFonts.ptSans(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Image.asset("assets/opening.jpg"),
              SizedBox(height: 20),
              Text(
                "Stay Updated with latest news",
                style: GoogleFonts.robotoSlab(
                    fontSize: 22,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 20),
              // Container(child: ,),
              SizedBox(height: 20.0),
              Container(
                // decoration: BoxDecoration(color: Colors.white54),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  height: 100.0,
                  child: Center(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          width: 160.0,
                          child: Text(
                            "Acne",
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(254, 163, 162, 1),
                          ),
                        ),
                        SizedBox(width: 30),
                        Container(
                          width: 160.0,
                          height: 30.0,
                          child: Text(
                            "Acne",
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(162, 207, 254, 1),
                          ),
                        ),
                        SizedBox(width: 30),
                        Container(
                          width: 160.0,
                          height: 30.0,
                          child: Text(
                            "Acne",
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(254, 162, 207, 1),
                          ),
                        ),
                        SizedBox(width: 30),
                        Container(
                          width: 160.0,
                          height: 30.0,
                          child: Text(
                            "Acne",
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(162, 253, 254, 1),
                          ),
                        ),
                        Container(
                          width: 30.0,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.0),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyNavBar(),
    );
  }
}
