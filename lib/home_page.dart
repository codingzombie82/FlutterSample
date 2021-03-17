import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final FirebaseUser user;
  HomePage(this.user);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('루이몽',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: <Widget>[
                  Text('환영합니다.',
                    style: TextStyle(fontSize: 24.0),),
                  Padding(padding: EdgeInsets.all(8.0)),
                  Text('사진과 동영상을 보려면 팔로우'),
                  Padding(padding: EdgeInsets.all(16.0)),
                  SizedBox(
                    width: 260.0,
                    child: Card(
                      elevation: 4.0,
                      child: Column(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.all(8.0)),
                          SizedBox(
                            width: 80.0,
                            height: 80.0,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(user.photoUrl),
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(8.0)),
                          Text('이메일주소', style: TextStyle(fontWeight: FontWeight.bold),),
                          Padding(padding: EdgeInsets.all(8.0)),
                          Text('이름'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                width:70.0,
                                height: 70.0,
                                child: Image.network('https://media.istockphoto.com/photos/smiling-indian-man-looking-at-camera-picture-id1270067126?s=612x612',
                                fit:BoxFit.cover),
                              ),
                              Padding(padding: EdgeInsets.all(1.0)),
                              SizedBox(
                                width:70.0,
                                height: 70.0,
                                child: Image.network('https://media.istockphoto.com/photos/smiling-indian-man-looking-at-camera-picture-id1270067126?s=612x612',
                                    fit:BoxFit.cover),
                              ),
                              Padding(padding: EdgeInsets.all(1.0)),
                              SizedBox(
                                width:70.0,
                                height: 70.0,
                                child: Image.network('https://media.istockphoto.com/photos/smiling-indian-man-looking-at-camera-picture-id1270067126?s=612x612',
                                    fit:BoxFit.cover),
                              ),
                            ],
                          ),
                          Padding(padding: EdgeInsets.all(4.0)),
                          Text('페이스북친구'),
                          Padding(padding: EdgeInsets.all(4.0)),
                          ElevatedButton(
                              child: Text('팔로우'),
                              onPressed: (){},
                          ),
                          Padding(padding: EdgeInsets.all(4.0)),
                        ],
                      ),
                    ),
                  )

                ],
              ),
            ),
          )),
    );
  }
}
