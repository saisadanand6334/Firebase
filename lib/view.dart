import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class View extends StatefulWidget {
  const View({Key? key}) : super(key: key);

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {
  TextEditingController id = TextEditingController();
  TextEditingController psw = TextEditingController();
  void dispose(){
    id.dispose();
    psw.dispose();
    super.dispose();
  }
  @override

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: 54,
              backgroundColor: Colors.black,
              child: Icon(
                Icons.person,
                size: 110,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(),
            child: TextField(
              controller: id,
              decoration: InputDecoration(
                label: Text(
                  'EMAIL',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(),
            child: TextField(
              controller: psw,
              decoration: InputDecoration(
                label: Text(
                  "PASSWORD",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(onPressed: () {
            base();
          }, child: Text('login')),
          SizedBox(
            height: 30,
          ),
          Text('forgot password'),
          SizedBox(
            height: 30,
          ),
          Text("sign up now")
        ],
      ),
    );
  }

  Future base() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: id.text.trim(),
        password: psw.text.trim(),
    );
  }
}
