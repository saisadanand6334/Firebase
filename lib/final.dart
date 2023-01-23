import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Aboutme extends StatefulWidget {
  const Aboutme({Key? key}) : super(key: key);

  @override
  State<Aboutme> createState() => _profileState();
}

class _profileState extends State<Aboutme> {
  @override
  Widget build(BuildContext context) {
    return
      Container(height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              " SAINAND P",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w300,
                  color: Colors.black),
            ),
            SizedBox(height: 20,),
            Text('Welcomes you',style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w300,
                color: Colors.black),),

            Padding(
              padding: const EdgeInsets.all(80),
              child: Text('User Email'),
            ),ElevatedButton(onPressed: () {
              FirebaseAuth.instance.signOut();
            }, child: Text('Logout'))

          ],
        ),
      );
  }
}
