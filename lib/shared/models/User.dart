import 'dart:convert';

class User {
  final String nome;
  final String photoUrl;
  final int score;

  User({required this.nome, required this.photoUrl, this.score = 0});

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'photoUrl': photoUrl,
      'score': score,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      nome: map['nome'],
      photoUrl: map['photoUrl'],
      score: map['score'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
