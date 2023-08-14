// ignore_for_file: file_names

class SignupFailureEmailPassword {
  final String mensagem;

  const SignupFailureEmailPassword([this.mensagem = "Um erro ocorreu."]);
  // cadastro
  factory SignupFailureEmailPassword.code(String code){
    switch(code){
      case 'email-em-uso' : return const SignupFailureEmailPassword('email já esta cadastrado');
      case 'email-invalido' : return const SignupFailureEmailPassword('email invalido');
      case 'user-disabled' : return const SignupFailureEmailPassword('usuario desabilitado');
      default : return const SignupFailureEmailPassword();
    }
  }

}