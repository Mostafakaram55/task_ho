abstract class RegisterStates{}
class InitialStates extends RegisterStates{}
class ChangeIconStates extends RegisterStates{}
class LoadingRegisterStates extends RegisterStates{}
class SuccessRegisterStates extends RegisterStates{}
class ErrorRegisterStates extends RegisterStates{
  final String error;
  ErrorRegisterStates(this.error);
}