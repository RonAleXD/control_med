class Usuario {
  String? nome;
  String? email;
  String? password;
  bool? keepOn;

  Usuario({
    required this.password,
    required this.nome,
    required this.keepOn,
  });

  Usuario.fromJson(Map<String, dynamic> json) {
    nome = json['name'];
    email = json['mail'];
    password = json['password'];
    keepOn = json['keepOn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = nome;
    data['mail'] = email;
    data['password'] = password;
    data['keepOn'] = keepOn;
    return data;
  }
}
