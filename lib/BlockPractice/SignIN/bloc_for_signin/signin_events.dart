abstract class SignInEvents{

}
class SignInTextChangedEvent extends SignInEvents {
  final String emailValue;
  final String passwordValue;
  SignInTextChangedEvent(this.emailValue,this.passwordValue);
}

class SignInSubmittedEvent extends SignInEvents{
  final String email;
  final String password;
  SignInSubmittedEvent(this.email,this.password);
}