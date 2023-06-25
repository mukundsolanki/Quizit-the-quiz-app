// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:quizapp/services/auth.dart';

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Color.fromARGB(255, 124, 122, 122),
//         padding: const EdgeInsets.all(30),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               'assets/login_logo.png',
//               width: 150,
//               height: 150,
//             ),
//             const Padding(
//               padding: EdgeInsets.all(20),
//               child: Text(
//                 'Welcome 👋',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                   fontStyle: FontStyle.italic,
//                   color: Colors.white,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             Flexible(
//               child: LoginButton(
//                   text: 'Continue as Guest',
//                   icon: FontAwesomeIcons.user,
//                   color: Colors.black,
//                   loginMethod: AuthService().anonLogin),
//             ),
//             LoginButton(
//               text: 'Sign in with Google',
//               icon: FontAwesomeIcons.google,
//               color: Colors.black,
//               loginMethod: AuthService().googleLogin,
//             ),
//             LoginButton(
//               text: 'Sign in with Apple',
//               icon: FontAwesomeIcons.apple,
//               color: Colors.black,
//               loginMethod: AuthService().googleLogin,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class LoginButton extends StatelessWidget {
//   final Color color;
//   final IconData icon;
//   final String text;
//   final Function loginMethod;

//   const LoginButton(
//       {super.key,
//       required this.text,
//       required this.icon,
//       required this.color,
//       required this.loginMethod});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 10),
//       child: ElevatedButton.icon(
//         icon: Icon(
//           icon,
//           color: Colors.white,
//           size: 20,
//         ),
//         style: TextButton.styleFrom(
//           padding: const EdgeInsets.all(24),
//           backgroundColor: color,
//         ),
//         onPressed: () => loginMethod(),
//         label: Text(text, textAlign: TextAlign.center),
//       ),
//     );
//   }
// }

//--------------------------------------------------------------------------------------------

// class LoginButton extends StatelessWidget {
//   final String text;
//   final Function loginMethod;
//   final color;

//   const LoginButton({
//     Key? key,
//     required this.text,
//     required this.loginMethod, this.color,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 10),
//       child: ElevatedButton(
//         onPressed: () => loginMethod(),
//         style: ElevatedButton.styleFrom(
//           primary: Colors.white,
//           onPrimary: Colors.black,
//           padding: const EdgeInsets.all(16),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(24),
//           ),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               'assets/user.png', // Replace with the path to your Google logo image
//               width: 24,
//               height: 24,
//             ),
//             const SizedBox(width: 16),
//             Text(
//               text,
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizapp/services/auth.dart';

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFF5F5F5),
//       body: Padding(
//         padding: const EdgeInsets.all(30),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               'assets/login_logo.png',
//               width: 150,
//               height: 150,
//             ),
//             const SizedBox(height: 20),
// Text(
//   'Welcome 👋',
//   style: TextStyle(
//     fontSize: 24,
//     fontWeight: FontWeight.bold,
//     fontStyle: FontStyle.italic,
//     color: Colors.white,
//   ),
//   textAlign: TextAlign.center,
// ),
// SizedBox(height: 40),
// LoginButton(
//   text: 'Continue as Guest',
//   icon: FontAwesomeIcons.user,
//   color: Colors.blueGrey,
//   loginMethod: AuthService().anonLogin,
// ),
// SizedBox(height: 16),
// LoginButton(
//   text: 'Sign in with Google',
//   icon: FontAwesomeIcons.google,
//               color: Colors.redAccent,
//               loginMethod: AuthService().googleLogin,
//             ),
//             SizedBox(height: 16),
//             LoginButton(
//               text: 'Sign in with Apple',
//               icon: FontAwesomeIcons.apple,
//               color: Colors.black,
//               loginMethod: AuthService().googleLogin,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//-----------------------------------------------------------------------------------
// class LoginScreen extends StatelessWidget {
//   const LoginScreen({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       body: Stack(
//         children: [
//           ClipPath(
//             clipper: BackgroundClipper(),
//             child: Container(
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [
//                     Color(0xFF4285F4),
//                     Color(0xFF03A9F4),
//                     Color(0xFF00BCD4),
//                     Color(0xFF009688),
//                   ],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(30),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Image.asset(
//                   'assets/login_logo.png',
//                   width: 150,
//                   height: 150,
//                 ),
//                 const SizedBox(height: 20),
//                 Text(
//                   'Welcome 👋',
//                   style: TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                     fontStyle: FontStyle.italic,
//                     color: Colors.white,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 40),
//                 LoginButton(
//                   text: 'Continue as Guest',
//                   icon: FontAwesomeIcons.user,
//                   color: Colors.blueGrey,
//                   loginMethod: AuthService().anonLogin,
//                 ),
//                 SizedBox(height: 16),
//                 LoginButton(
//                   text: 'Sign in with Google',
//                   icon: FontAwesomeIcons.google,
//                   color: Colors.redAccent,
//                   loginMethod: AuthService().googleLogin,
//                 ),
//                 SizedBox(height: 16),
//                 LoginButton(
//                   text: 'Sign in with Apple',
//                   icon: FontAwesomeIcons.apple,
//                   color: Colors.black,
//                   loginMethod: AuthService().googleLogin,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Stack(
        children: [
          ClipPath(
            clipper: BackgroundClipper(),
            child: Container(
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/login_logo.png',
                  width: 300,
                  height: 300,
                ),
                // const SizedBox(height: 20),
                // const Text(
                //   'Welcome 👋',
                //   style: TextStyle(
                //     fontSize: 24,
                //     fontWeight: FontWeight.bold,
                //     fontStyle: FontStyle.italic,
                //     color: Colors.black,
                //   ),
                //   textAlign: TextAlign.center,
                // ),
                // SizedBox(height: 40),
                LoginButton(
                  text: 'Continue as Guest',
                  icon: FontAwesomeIcons.user,
                  color: Colors.blueGrey,
                  loginMethod: AuthService().anonLogin,
                ),
                SizedBox(height: 16),
                LoginButton(
                  text: 'Sign in with Google',
                  icon: FontAwesomeIcons.google,
                  color: Colors.redAccent,
                  loginMethod: AuthService().googleLogin,
                ),
                SizedBox(height: 16),
                LoginButton(
                  text: 'Sign in with Apple',
                  icon: FontAwesomeIcons.apple,
                  color: Colors.black,
                  loginMethod: AuthService().googleLogin,
                ),
                Text(
                  '© ${DateTime.now().year} Mukund Solanki',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final height = size.height;
    final width = size.width;

    path.lineTo(0, height * 0.7);

    final firstControlPoint = Offset(width * 0.25, height * 0.8);
    final firstEndPoint = Offset(width * 0.5, height * 0.7);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    final secondControlPoint = Offset(width * 0.75, height * 0.6);
    final secondEndPoint = Offset(width, height * 0.7);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

//-----------------------------------------------------------------------------------------------

class LoginButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String text;
  final Function loginMethod;

  const LoginButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.color,
    required this.loginMethod,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton.icon(
        onPressed: () => loginMethod(),
        icon: Icon(
          icon,
          color: Colors.white,
          size: 20,
        ),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          primary: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        label: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
