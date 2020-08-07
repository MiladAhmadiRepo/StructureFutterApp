class UserRequest {
  final String username;
  final String password;
  final String phonenumber;

  UserRequest({this.username, this.password, this.phonenumber});

  factory UserRequest.fromJson(Map<String, dynamic> json) {
    return UserRequest(
      username: json['username'],
      password: json['password'],
      phonenumber: json['phonenumber'],
    );
  }

  Map<String, dynamic> toJson() =>
      {
        'username': username,
        'password': password,
        'phonenumber': phonenumber,
      };
}