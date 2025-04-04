import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Container(
        color: Color(0xffF9F9F9),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(height: 40),
            avatarAndName(),
            SizedBox(height: 40),
            firstNameField(),
            SizedBox(height: 20),
            lastNameField(),
            SizedBox(height: 20),
            phoneNumberField(),
            SizedBox(height: 20),
            genderField(),
            SizedBox(height: 20),
            birthdayField(),
            SizedBox(height: 34),
            updateProfileButton(),
            SizedBox(height: 40)
          ],
        ),
      ),
    );
  }

  Container updateProfileButton() {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: 56, right: 56),
      padding: EdgeInsets.only(top: 16, bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xff0601B4),
      ),
      child: Text(
        "Update Profile",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500
        )
      ),
    );
  }

  Container phoneNumberField() {
    return Container(
      height: 54,
      margin: EdgeInsets.only(left: 16, right: 16),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Phone number",
          filled: true,
          fillColor: Colors.white,
          hintStyle: TextStyle(
            color: Color(0xff555555),
            fontSize: 14,
            fontWeight: FontWeight.normal
          ),
          prefixIcon: SizedBox(
            width: 62,
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 15, right: 8, bottom: 15),
                    child: SvgPicture.asset(
                      'assets/icons/nigeria.svg',
                      height: 20,
                      width: 20),
                  ),
                  VerticalDivider(
                    color: Color(0xffDDDADA),
                    indent: 10,
                    endIndent: 10,
                    thickness: 0.75,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container genderField() {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: "Select your gender",
          suffixIcon: Padding(
            padding: const EdgeInsets.all(16),
            child: SvgPicture.asset('assets/icons/downArrow.svg'),
          )
        ),
      ),
    );
  }
  
  Container birthdayField() {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: "What is your date of birth?",
          suffixIcon: Padding(
            padding: const EdgeInsets.all(14),
            child: SvgPicture.asset('assets/icons/calendar.svg'),
          )
        ),
      ),
    );
  }

  Container lastNameField() {
    return Container(
            height: 54,
            margin: EdgeInsets.only(left: 16, right: 16),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "And your last name?",
                hintStyle: TextStyle(
                  color: Color(0xff555555),
                  fontSize: 14,
                  fontWeight: FontWeight.normal
                ),
              ),
            ),
          );
  }

  Container firstNameField() {
    return Container(
            height: 54,
            margin: EdgeInsets.only(left: 16, right: 16),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "What's your first name?",
                hintStyle: TextStyle(
                  color: Color(0xff555555),
                  fontSize: 14,
                  fontWeight: FontWeight.normal
                ),
              ),
            ),
          );
  }

  Container avatarAndName() {
    return Container(
            color: Color(0xffF9F9F9),
            child: Column(
              children: [
                Container(
                  width: 78,
                  height: 78,
                  decoration: BoxDecoration(
                    color: Color(0xff0601B4).withOpacity(0.2),
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
      backgroundColor: Color(0xffF9F9F9),
      centerTitle: true,
      leading: Container(
        margin: EdgeInsets.all(16),
        child: SvgPicture.asset('assets/icons/left-arrow.svg'),
      ),
    );
  }
}