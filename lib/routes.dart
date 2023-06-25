import 'package:quizapp/about/about.dart';
import 'package:quizapp/profile/profile.dart';
import 'package:quizapp/login/login.dart';
import 'package:quizapp/topics/topics.dart';
import 'package:quizapp/home/home.dart';

var appRoutes = {
  '/': (context) {
    return const HomeScreen();
  },
  '/login': (context) {
    return const LoginScreen();
  },
  '/topics': (context) {
    return const TopicsScreen();
  },
  '/profile': (context) {
    return const ProfileScreen();
  },
  '/about': (context) {
    return const AboutScreen();
  },
};
