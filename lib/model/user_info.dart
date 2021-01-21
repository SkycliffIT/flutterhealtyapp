class UserInformation {
  final String userName;
  final String email;
  final String password;

  UserInformation(this.email, this.userName, this.password);

  UserInformation.fromJson(Map<String, dynamic> json)
      : this.userName = json["userName"],
        this.email = json["email"],
        this.password = json["password"];

  // Map<String, dynamic> toJson() =>
  //     {"userName": this.userName, "email": this.email};
}
