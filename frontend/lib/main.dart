import 'package:flutter/material.dart';
import 'buisness/AuthBloc/auth_bloc.dart';
import 'package:sqaure_project/buisness/blocObsrver.dart';
import 'package:sqaure_project/data/Repository/FirebaseAuth.dart';
import 'package:sqaure_project/packages.dart';
import 'root.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.web,
  );
  Bloc.observer = MyBlocObserver();
  final AuthRepo _authRepo = AuthRepo();
  runApp(RepositoryProvider.value(
    value: _authRepo,
    child: BlocProvider(
      create: (context) => AuthBloc(
        authRepo: _authRepo,
      ),
      child: RootApp(
        authRepo: _authRepo,
      ),
    ),
  ));
}
