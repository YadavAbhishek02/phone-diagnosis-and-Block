import 'package:diagnostic_android_application/BlockPractice/SignIN/bloc_for_signin/signin_events.dart';
import 'package:diagnostic_android_application/BlockPractice/SignIN/bloc_for_signin/signin_state.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInBlock extends Bloc<SignInEvents,SignInState>{
  SignInBlock():super(SignInInitialState()){
    on<SignInTextChangedEvent>((event, emit) {
      if(EmailValidator.validate(event.emailValue)==false){
        emit(SignInErrorState('Please Enter Valid Email Id'));
      }
      else if (event.passwordValue.length<8){
        emit(SignInErrorState("Please Enter Valid Password"));
      }
      else{
        emit(SignInValidState());
      }
    }
    );

    on<SignInSubmittedEvent>((event, emit){
      emit(SignInLoadingState());
    });
  }
}