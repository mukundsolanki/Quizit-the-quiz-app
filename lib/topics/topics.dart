import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:quizapp/services/services.dart';
import 'package:quizapp/shared/shared.dart';
import 'package:quizapp/topics/drawer.dart';
import 'package:quizapp/topics/topic_item.dart';
import '../services/firestore.dart';
import '../services/models.dart';

class TopicsScreen extends StatelessWidget {
  const TopicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Topic>>(
      future: FirestoreService().getTopics(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingScreen();
        } else if (snapshot.hasError) {
          return Center(
            child: ErrorMessage(message: snapshot.error.toString()),
          );
        } else if (snapshot.hasData) {
          var topics = snapshot.data!;

          return Scaffold(
            appBar: AppBar(
              backgroundColor: const Color.fromARGB(255, 10, 1, 24),
              title: const Text('Topics'),
              centerTitle: true,
            ),

            drawer: TopicDrawer(topics: topics),

            body: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20.0),
              crossAxisSpacing: 10.0,
              crossAxisCount: 1,
              children: topics.map((topic) => TopicItem(topic: topic)).toList(),
            ),
            bottomNavigationBar: const BottomNavBar(),
          );
        } else {
          return const Text('No topics found in Firestore. Check database');
        }
      },
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:quizapp/services/services.dart';
// import 'package:quizapp/shared/shared.dart';
// import 'package:quizapp/topics/drawer.dart';
// import 'package:quizapp/topics/topic_item.dart';

// import '../services/firestore.dart';
// import '../services/models.dart';

// class TopicsScreen extends StatelessWidget {
//   const TopicsScreen({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<List<Topic>>(
//       future: FirestoreService().getTopics(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const LoadingScreen();
//         } else if (snapshot.hasError) {
//           return Center(
//             child: ErrorMessage(message: snapshot.error.toString()),
//           );
//         } else if (snapshot.hasData) {
//           var topics = snapshot.data!;

//           return Scaffold(
//             appBar: AppBar(
//               backgroundColor: const Color.fromARGB(255, 10, 1, 24),
//               title: const Text('Topics'),
//               centerTitle: true,
//             ),
//             drawer: TopicDrawer(topics: topics),
//             body: ListView.builder(
//               padding: const EdgeInsets.all(20.0),
//               itemCount: topics.length,
//               itemBuilder: (context, index) {
//                 var topic = topics[index];
//                 return TopicItem(topic: topic);
//               },
//             ),
//             bottomNavigationBar: const BottomNavBar(),
//           );
//         } else {
//           return const Text('No topics found in Firestore. Check database');
//         }
//       },
//     );
//   }
// }