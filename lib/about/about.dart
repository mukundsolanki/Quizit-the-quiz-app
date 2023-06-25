// ignore_for_file: deprecated_member_use
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  // Function to launch the GitHub page
//   _launchGitHubURL() async {
//   const url = 'https://github.com/your_username'; // Replace with your GitHub URL

//   if (kIsWeb) {
//     // For web-based platforms
//     // if (await canLaunchWeb(url)) {
//     //   await launchWeb(url);
//     // } else {
//     //   throw 'Could not launch $url';
//     // }
//   } else {
//     // For other platforms (iOS, Android)
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }
// }

  _launchGitHubURL() async {
    const url = 'https://github.com/mukundsolanki';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 10, 1, 24),
        title: const Text('ABOUT'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
            'assets/login_logo.png',
            // width: 300, // adjust the width as needed
            // height: 300, // adjust the height as needed
          ),
          // SizedBox(height: 20),
            const Text(
              'QUIZIT is a quiz app created using Flutter and Firebase.',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Text(
              'When users complete all the quizzes, they will receive a certificate via email. If they are logged in as guests, they will not receive the certificate.',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
              onPressed: _launchGitHubURL,
              child: const Text('Visit GitHub'),
            ),
          ],
        ),
      ),
    );
  }
}
