import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Container(
        color: Colors.blue,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(height: 40),
            avatarAndName(),
            SizedBox(height: 40),
            // avatarAndName()
          ],
        ),
      ),
    );
  }

  Container avatarAndName() {
    return Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  width: 78,
                  height: 78,
                  decoration: BoxDecoration(
                    color: Color(0xff979797),
                    shape: BoxShape.circle
                  ),
                  child: Image.asset(
                    'assets/images/avatar.png',
                    width: 72,
                    height: 72,
                  ),
                ),
                SizedBox(height: 18),
                Text(
                  'Itunuoluwa Abidoye',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  'Itunuoluwa@petra.africa',
                  style: TextStyle(
                    color: Color(0xffABABAB),
                    fontSize: 14,
                    fontWeight: FontWeight.normal
                  ),
                ),
              ],
            ),
          );
  }

  AppBar appBar() {
    return AppBar(
      title: Text(
        "Bio-data",
        style: TextStyle(
          color: Colors.black,
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
      ),
      backgroundColor: Colors.green,
      centerTitle: true,
      leading: Container(
        margin: EdgeInsets.all(16),
        child: SvgPicture.asset('assets/icons/left-arrow.svg'),
      ),
    );
  }
}