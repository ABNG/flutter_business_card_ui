import 'package:flutter/material.dart';
import 'nm_box.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mC,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NMButton(icon: Icons.arrow_back),
                      NMButton(icon: Icons.menu),
                    ],
                  ),
                  AvatarImage(),
                  SizedBox(height: 15),
                  Text(
                    'Abu Bakar',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'Pakistani',
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Mobile App Developer and Game Designer',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 35),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      NMButton(icon: FontAwesomeIcons.facebookF),
                      SizedBox(width: 25),
                      NMButton(icon: FontAwesomeIcons.twitter),
                      SizedBox(width: 25),
                      NMButton(icon: FontAwesomeIcons.instagram),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: <Widget>[
                      SocialBox(
                          icon: FontAwesomeIcons.dribbble,
                          count: '35',
                          category: 'shots'),
                      SizedBox(width: 15),
                      SocialBox(
                          icon: FontAwesomeIcons.userAlt,
                          count: '1.2k',
                          category: 'followers'),
                    ],
                  ),
                  SizedBox(height: 5.0),
                  Row(
                    children: <Widget>[
                      SocialBox(
                          icon: FontAwesomeIcons.heart,
                          count: '5.1k',
                          category: 'likes'),
                      SizedBox(width: 15),
                      SocialBox(
                          icon: FontAwesomeIcons.user,
                          count: '485',
                          category: 'following'),
                    ],
                  ),
                  SizedBox(height: 5.0),
                  Row(
                    children: <Widget>[
                      SocialBox(
                          icon: FontAwesomeIcons.glassWhiskey,
                          count: '97',
                          category: 'buckets'),
                      SizedBox(width: 15),
                      SocialBox(
                          icon: FontAwesomeIcons.folderOpen,
                          count: '7',
                          category: 'projects'),
                    ],
                  ),
                  SizedBox(height: 5.0),
                ],
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.07,
              minChildSize: 0.07,
              maxChildSize: 0.5,
              builder: (BuildContext context, scroll) {
                return Container(
                  decoration: nMbox,
                  child: ListView(
                    controller: scroll,
                    children: <Widget>[
                      Center(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Icon(Icons.share, color: fCL),
                            ),
                            Text(
                              'Share',
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(height: 15),
                            Text(
                              'Credits to Planet X on Dribbble\nfor this design',
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 35),
                            Container(
                              width: 225,
                              padding: EdgeInsets.all(10),
                              decoration: nMboxInvert,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                    FontAwesomeIcons.facebookF,
                                    color: Colors.blue,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.twitter,
                                    color: Colors.blueAccent,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.instagram,
                                    color: Colors.redAccent,
                                  ),
                                  Icon(FontAwesomeIcons.whatsapp,
                                      color: Colors.green),
                                ],
                              ),
                            ),
                            SizedBox(height: 25),
                            FaIcon(
                              FontAwesomeIcons.copy,
                              color: Colors.pink.shade800,
                            ),
                            Text(
                              'Copy link',
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class NMButton extends StatelessWidget {
  final IconData icon;
  const NMButton({this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: nMbox,
      child: Icon(
        icon,
        color: Colors.blue,
      ),
    );
  }
}

class AvatarImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      padding: EdgeInsets.all(8),
      decoration: nMbox,
      child: Container(
        decoration: nMbox,
        padding: EdgeInsets.all(3),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('images/img.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

class SocialBox extends StatelessWidget {
  final IconData icon;
  final String count;
  final String category;

  const SocialBox({this.icon, this.count, this.category});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: nMboxInvert,
        child: Row(
          children: <Widget>[
            FaIcon(icon, color: Color(0xFFee4300), size: 20),
            SizedBox(width: 8),
            Text(
              count,
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            SizedBox(width: 3),
            Text(
              category,
            ),
          ],
        ),
      ),
    );
  }
}
