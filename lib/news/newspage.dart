import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'apikey.dart';
import 'webview.dart';
import 'package:skin_ML/Homepage/BottomNavigationBar.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {

  getnews() async {
    var url =
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=$apikey&category=health';

    var response = await http.get(url);
    var result = jsonDecode(response.body);
    List<News> newslist = List<News>();
    for (var article in result['articles']) {
      News news = News(article['title'], article['urlToImage'], article['url'],
          article['description']);
      newslist.add(news);
    }
    return newslist;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Health News", textAlign: TextAlign.center,),
        backgroundColor: Color.fromRGBO(14, 49, 80, 1),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            FutureBuilder(
                future: getnews(),
                builder: (BuildContext context, dataSnapshot) {
                  if (!dataSnapshot.hasData) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: dataSnapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: EdgeInsets.all(15),
                          width: MediaQuery.of(context).size.width,
                          child: Container(
                            decoration: BoxDecoration(
                              color: new Color.fromRGBO(255, 250, 250, 0.8),
                              boxShadow: [
                                new BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 3.0,
                                  offset: Offset(
                                    4.0, // Move to right 10  horizontally
                                    4.0, // Move to bottom 5 Vertically
                                  ),
                                ),
                              ],
                            ),
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    dataSnapshot.data[index].title,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                if (dataSnapshot.data[index].image != null)
                                  Image(
                                    image: NetworkImage(
                                        dataSnapshot.data[index].image),
                                    fit: BoxFit.fill,
                                  ),
                                SizedBox(
                                  height: 5,
                                ),
                                RaisedButton(
                                  disabledColor: Colors.purpleAccent,
                                  padding: EdgeInsets.all(1.0),
                                  elevation: 10,
                                  color: Color.fromRGBO(14, 49, 80, 1),
                                  splashColor: Colors.cyan[200],
                                  colorBrightness: Brightness.dark,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => ViewWeb(
                                                dataSnapshot
                                                    .data[index].url)));
                                  },
                                  child: Text(
                                    "Read More",
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                )
                              ],
                            ),
                          ),
                        );
                      });
                })
          ],
        ),
      ),
      bottomNavigationBar: MyNavBar(),
    );
  }
}

class News {
  final String title;
  final String image;
  final String url;
  final String description;

  News(this.title, this.image, this.url, this.description);
}