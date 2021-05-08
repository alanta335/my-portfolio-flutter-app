import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const _url = 'tel:+91 8289463489';
const _urlmail = 'mailto:alanta@gmail.com';
void _launchURL() async => await launch(_url);
void _launchmail() async => await launch(_urlmail);
void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Center(
            child: Text(
              "MY PORT-FOLIO",
              style: TextStyle(
                color: Colors.blue[800],
              ),
            ),
          ),
          backgroundColor: Colors.lightBlue[200],
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 40,
              ),
              CircleAvatar(
                backgroundColor: Colors.black38,
                backgroundImage: AssetImage('images/profile1.png'),
                radius: 80,
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                height: 60,
                child: Text(
                  'ALAN T A',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Caveat',
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'FLUTTER APP DEVELOPER',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              Divider(
                indent: 130,
                endIndent: 130,
                thickness: 2,
                color: Colors.grey,
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                color: Colors.grey.shade400,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.grey.shade300),
                  ),
                  onPressed: _launchURL,
                  child: ListTile(
                    enableFeedback: true,
                    horizontalTitleGap: 40,
                    leading: Icon(
                      Icons.call_outlined,
                      size: 50,
                      color: Colors.grey.shade800,
                    ),
                    title: Text(
                      '+91 8289463489',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade800,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.grey.shade300),
                  ),
                  onPressed: _launchmail,
                  child: ListTile(
                    enableFeedback: true,
                    horizontalTitleGap: 40,
                    leading: Icon(
                      Icons.email_rounded,
                      size: 50,
                      color: Colors.grey.shade800,
                    ),
                    title: Text(
                      'alanta@gmail.com',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade800,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
