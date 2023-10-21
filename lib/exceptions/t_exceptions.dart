class TExceptions implements Exception{

  final String message;

  const TExceptions([this.message="An Unknown Exception Occured."]);


  factory TExceptions.fromCode(String code){

    switch(code){

      case 'email-already-in-use':
        return const TExceptions("Email Already exists");

      case 'invalid-email':
        return const TExceptions("Email is not Valid or badly formatted.");


      case 'weak-password':
        return const TExceptions("Please enter a stronger password.");

      case 'user-disabled':
        return const TExceptions("The User has been disabled.please contact support");

      case 'user-not-found':
        return const TExceptions("Invaalid Details.please create an account");



      case 'wrong-password':
        return const TExceptions("Incorrect Password.Please try again.");



      case 'too-many-requests':
        return const TExceptions("Too many requests,services Temporarily blocked.");
      case 'invalid-argument':
        return const TExceptions("An Invalid argument was passed to an Authentication Method");



      case 'invalid-password':
        return const TExceptions("Incorrect password.please try again");
      case 'invalid-phone-number':
        return const TExceptions("The provided phone number is invalid.");
      case 'operation-not-allowed':
        return const TExceptions("The provided sign-in provider is disabled for your firebase project.");


      case 'session-cookie-expired':
        return const TExceptions("The Provided Firebase session cookie is expired.");


      case 'uid-already-exists':
        return const TExceptions("The Provided uid is already in use by an existing user");
      default:
        return const TExceptions();

    }
  }
}