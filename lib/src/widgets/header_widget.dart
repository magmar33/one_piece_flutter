import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
   const HeaderWidget({super.key});
  final titleTextStyle = const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white );
  final subtitleTextStyle = const TextStyle(
                fontSize: 17,
                color: Colors.white );

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: EdgeInsets.all(25),
      height: 170.0,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 41, 40, 39)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("One piece", style: titleTextStyle ),
              Text("serie", style: subtitleTextStyle ),
            ],
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.1),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){},),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.1),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: IconButton(icon: Icon(Icons.notifications, color: Colors.white,), onPressed: (){},),
              )
            ],
          )
        ]),
      
    );
  }
}