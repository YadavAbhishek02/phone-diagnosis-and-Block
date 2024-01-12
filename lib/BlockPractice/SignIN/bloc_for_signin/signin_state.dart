abstract class SignInState{}

class SignInInitialState extends SignInState{}

class SignInValidState extends SignInState{}

class SignInErrorState extends SignInState{
  final String message;
  SignInErrorState(this.message);
}

class SignInLoadingState extends SignInState{}