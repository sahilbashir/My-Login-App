class signUpWithEmailAndPasswordFailure{

  final String message;
  const signUpWithEmailAndPasswordFailure([this.message="An Unknown error occured."]);
  factory signUpWithEmailAndPasswordFailure.code(String code){

    switch(code){

      case 'weak-password': return const signUpWithEmailAndPasswordFailure('Please enter a stronger password');
      case 'invalid-email': return const signUpWithEmailAndPasswordFailure('Email is not valid or badly formated');

      case 'email-already-in-use': return const signUpWithEmailAndPasswordFailure('An account alreay exists for this mail');
      case 'operation-not-allowed':return const signUpWithEmailAndPasswordFailure('operation is not allowed. please contact support');

      case 'user-disabled ': return const signUpWithEmailAndPasswordFailure('This user has been disabled .contact support');
      default: return const signUpWithEmailAndPasswordFailure();
    }
  }
}