class UserModel {
  final String name;
  final String email;
  final String password;
  final DateTime joinedOn;
  final List<int>? scores;
  final int highScore;
  final String token;

  UserModel({
    required this.name,
    required this.email,
    required this.password,
    required this.joinedOn,
    this.scores,
    this.highScore = 0,
    required this.token,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'joinedOn': joinedOn.toIso8601String(),
      'scores': scores,
      'highScore': highScore,
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['user']['name'],
      email: json['user']['email'],
      password: json['user']['password'],
      joinedOn: DateTime.parse(json['user']['joinedOn']),
      highScore: json['user']['highScore'] ?? 0,
      token: json['token'],
    );
  }
}