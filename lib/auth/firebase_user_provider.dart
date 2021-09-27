import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class EasydayFirebaseUser {
  EasydayFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

EasydayFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<EasydayFirebaseUser> easydayFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<EasydayFirebaseUser>(
        (user) => currentUser = EasydayFirebaseUser(user));
