import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:quizapp/services/services.dart';
import 'package:quizapp/shared/shared.dart';

import '../services/auth.dart';
import '../services/models.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
//   @override
//   Widget build(BuildContext context) {
//     var report = Provider.of<Report>(context);
//     var user = AuthService().user;

//     if (user != null) {
//       return Scaffold(
//         appBar: AppBar(
//           backgroundColor: const Color.fromARGB(255, 10, 1, 24),
//           title: Text(user.displayName ?? 'Guest'),
//           centerTitle: true,
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 width: 100,
//                 height: 100,
//                 margin: const EdgeInsets.only(top: 50),
//                 decoration: const BoxDecoration(
//                   shape: BoxShape.circle,
//                   image: DecorationImage(
//                     image: AssetImage('assets/user.png'),
//                   ),
//                 ),
//               ),
//               Text(user.email ?? '',
//                   style: Theme.of(context).textTheme.titleLarge),
//               const Spacer(),
//               Text('${report.total}',
//                   style: Theme.of(context).textTheme.displayMedium),
//               Text('Quizzes Completed🎉',
//                   style: Theme.of(context).textTheme.titleLarge),
//               const Spacer(),
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.black,
//                 ),
//                 child: const Text('logout'),
//                 onPressed: () async {
//                   await AuthService().signOut();
//                   if (mounted) {
//                     Navigator.of(context)
//                         .pushNamedAndRemoveUntil('/', (route) => false);
//                   }
//                 },
//               ),
//               const Spacer(),
//             ],
//           ),
//         ),
//       );
//     } else {
//       return const Loader();
//     }
//   }
// }

@override
Widget build(BuildContext context) {
  var report = Provider.of<Report>(context);
  var user = AuthService().user;

  if (user != null) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 10, 1, 24),
        title: Text(user.displayName ?? 'Guest',),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            color: Colors.orange,
            onPressed: () async {
              await AuthService().signOut();
              if (mounted) {
                Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
              }
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: const EdgeInsets.only(top: 50),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/user.png'),
                ),
              ),
            ),
            Text(user.displayName ?? '', style: Theme.of(context).textTheme.titleLarge),
            Text(user.email ?? '', style: Theme.of(context).textTheme.titleLarge),
            const Spacer(),
            Text('${report.total}', style: Theme.of(context).textTheme.displayMedium),
            Text('Quizzes Completed🎉', style: Theme.of(context).textTheme.titleLarge),
            const Spacer(),
            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //     primary: Colors.black,
            //   ),
            //   child: const Text('Logout'),
            //   onPressed: () async {
            //     await AuthService().signOut();
            //     if (mounted) {
            //       Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
            //     }
            //   },
            // ),
            const Spacer(),
          ],
        ),
      ),
    );
  } else {
    return const Loader();
  }
}
}