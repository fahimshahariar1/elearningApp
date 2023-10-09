import 'package:elearningapp1/pages/sign_in/bloc/sign_in_blocs.dart';
import 'package:elearningapp1/pages/welcome/bloc/welcome_blocs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../app_blocs.dart';

class AppBlocProviders{
  static get allBlocProviders => [
    BlocProvider(
      create: (context) => WelcomeBlocs(),
    ),
    BlocProvider(
      create: (context) => AppBlocs(),
    ),
    BlocProvider(create: (context)=> SignInBloc()),
  ];
}