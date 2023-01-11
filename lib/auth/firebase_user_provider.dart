import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ParklibFirebaseUser {
  ParklibFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

ParklibFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ParklibFirebaseUser> parklibFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ParklibFirebaseUser>(
      (user) {
        currentUser = ParklibFirebaseUser(user);
        return currentUser!;
      },
    );
