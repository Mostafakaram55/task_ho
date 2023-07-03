abstract class LogInStates{}
class InitialStates extends LogInStates{}
class ChangeIconStates extends LogInStates{}
class LoadingLoginStates extends LogInStates{}
class SuccessLoginStates extends LogInStates{}
class ErrorLoginStates extends LogInStates{
  final String error;
  ErrorLoginStates(this.error);
}