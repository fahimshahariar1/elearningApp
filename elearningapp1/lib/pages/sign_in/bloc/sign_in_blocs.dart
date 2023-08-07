import 'package:elearningapp1/pages/sign_in/bloc/sign_in_events.dart';
import 'package:elearningapp1/pages/sign_in/bloc/sign_in_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInBloc extends Bloc<SignInEvents, SignInStates>{
  SignInBloc():super(SignInStates()){
    on(<EmailEvent>(event, state) => {


    });
    on(<PassEvent>(event, state) => {});
  }
}