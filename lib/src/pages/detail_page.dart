import 'package:flutter/material.dart';
import 'package:one_piece_list/src/animations/fade_animation.dart';
import 'package:one_piece_list/src/widgets/blur_container.dart';
import 'package:one_piece_list/src/widgets/infotitle_widget.dart';

class DetailPage extends StatefulWidget {
  const DetailPage(
      {super.key,
      required this.color,
      required this.image,
      required this.name});

  final int color;
  final String image;
  final String name;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  double heightPage = 0;

  @override
  Widget build(BuildContext context) {
    heightPage = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(widget.color), Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 12),
                  child: SizedBox(
                    height: heightPage*.6,
                    child: Hero(
                        tag: widget.name, child: Image.asset("assets/${widget.image}.png")),
                  ),
                ),
                Positioned(
                    bottom: 10,
                    left: 10,
                    child: FadeAnimation(
                      intervalEnd: 0.8,
                      child: BlurContainer(
                          child: Container(
                        width: 160,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white.withOpacity(0.1)),
                        child: Text(
                          widget.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      )),
                    ))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: FadeAnimation(
                intervalStart: 0.3,
                child: Text(
                  "${widget.name} #personaje",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: FadeAnimation(
                intervalStart: 0.35,
                child: Text(
                  "One piece",
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: FadeAnimation(
                intervalStart: 0.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InfoTitle(title: "Eiichiró Oda", subtitle: "Creador"),
                    InfoTitle(title: "Japón", subtitle: "País"),
                  ],
                ),
              ),
            ),
            Spacer(),
            FadeAnimation(
              intervalStart: 0.6,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(widget.color),
                  ),
                  child: Text(
                    "Volver",
                    style: TextStyle(
                        color: Colors.white60,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
