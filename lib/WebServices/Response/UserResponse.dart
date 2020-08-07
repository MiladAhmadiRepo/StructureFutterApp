class UserResponse {
  final String firstName;
  final String lastName;
  final String userName;
  final String phoneNumber;
  final String email;
  final String token;
  final int userId;
  final List<dynamic> permissions;

  UserResponse(
      {this.firstName,
      this.lastName,
      this.userName,
      this.phoneNumber,
      this.email,
      this.token,
      this.userId,
      this.permissions});

  factory UserResponse.fromJson(Map<String, dynamic> json) {
    return UserResponse(
      firstName: json['firstName'],
      lastName: json['lastName'],
      userName: json['userName'],
      phoneNumber: json['phoneNumber'],
      email: json['email'],
      token: json['token'],
      userId: json['userId'],
      permissions: json['permissions'],
    );
  }

  Map<String, dynamic> toJson() => {
        'firstName': firstName,
        'lastName': lastName,
        'userName': userName,
        'phoneNumber': phoneNumber,
        'email': email,
        'token': token,
        'userId': userId,
        'permissions': permissions,
      };
}
