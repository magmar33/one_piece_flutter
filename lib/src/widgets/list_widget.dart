import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:one_piece_list/src/pages/detail_page.dart';

class ListCharacters extends StatefulWidget {
  const ListCharacters({super.key});
  @override
  State<ListCharacters> createState() => _ListCharactersState();
}

class _ListCharactersState extends State<ListCharacters> {
  final titleStyleText = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white);
  //sacar el ancho total
  double screenWidth = 0;
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width - 50;
    return Expanded(
      child: ListView(
        padding: EdgeInsets.all(25),
        children: [
          Text(
            "Portadas",
            style: titleStyleText,
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              blocksFrontPage("p1.jpg", "title", "2018"),
              SizedBox(
                width: screenWidth * 0.03,
              ),
              blocksFrontPage("p2.jpg", "title", "2022"),
              SizedBox(
                width: screenWidth * 0.03,
              ),
              blocksFrontPage("p3.jpg", "title", "2023")
            ],
          ),
          Divider(
            thickness: 1,
            color: Colors.white70,
          ),
          SizedBox(
            height: 20,
          ),
          blockCharacter("Brook", 0xff4913c4, "o1"),
          blockCharacter("Luffy", 0xfff82a2d, "o2"),
          blockCharacter("Portgas D. Ace", 0xffffcb28, "o3"),
          blockCharacter("Boa Hancock", 0xfffe4649, "o4"),
          blockCharacter("Boa Hancock 2", 0xffdf1c6a, "o5"),
          blockCharacter("Roronoa Zoro", 0xff21e295, "o6"),
        ],
      ),
    );
  }

  Widget blockCharacter(String name, int color, String image) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(CupertinoPageRoute(builder: (context) => DetailPage(color: color, image: image,name: name,)));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromARGB(66, 43, 43, 43),
        ),
        height: 65,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        blurRadius: 8,
                        offset: Offset(0, 5),
                        spreadRadius: 0.0,
                        blurStyle: BlurStyle.normal,
                        color: Color(color))
                  ], borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.all(8),
                  child: Hero(tag: name,child: Image.asset("assets/$image.png")),
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  name,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                )
              ],
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert_rounded,
                  color: Colors.grey,
                ))
          ],
        ),
      ),
    );
  }

  Widget blocksFrontPage(String image, String title, String subtitle) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.asset(
            "assets/$image",
            width: screenWidth * 0.31,
            height: 110,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        RichText(
            text: TextSpan(
                text: title,
                style: TextStyle(color: Colors.white70, fontSize: 14),
                children: [
              TextSpan(
                text: subtitle,
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                    fontSize: 12),
              )
            ]))
      ],
    );
  }
}
