import 'package:ev_companion/utils/constants/color_constants/color_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryColor,
        title: Text(
          'Profile',
          style: TextStyle(
              color: ColorConstants.primaryWhite,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 2,
      ),
      body: Column(children: [
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              child: Icon(
                Icons.person,
                color: ColorConstants.primaryColor,
                size: 50,
              ),
              backgroundColor: Color.fromARGB(255, 166, 166, 166),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Ronald Richards',
                style: TextStyle(
                    color: ColorConstants.primaryBlack,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ronaldrichards@gmail.com',
              style: TextStyle(
                  color: ColorConstants.primaryBlack,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            tileColor: const Color.fromARGB(255, 226, 226, 226),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            leading: Icon(CupertinoIcons.person),
            title: Text('Profile'),
            trailing: Icon(Icons.chevron_right),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            tileColor: const Color.fromARGB(255, 226, 226, 226),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            leading: Icon(CupertinoIcons.car_detailed),
            title: Text('My vehicle'),
            trailing: Icon(Icons.chevron_right),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            tileColor: const Color.fromARGB(255, 226, 226, 226),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            leading: Icon(CupertinoIcons.square_arrow_left),
            title: Text('Log out'),
            trailing: Icon(Icons.chevron_right),
          ),
        )
      ]),
    );
  }
}
