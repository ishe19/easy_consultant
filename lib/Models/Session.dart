class Session {
  int id;
  int userId;
  String username;
  String userFullName;
  String sessionId;
  String deviceId;

  Session(
      {this.id,
        this.userId,
        this.username,
        this.userFullName,
        this.sessionId,
        this.deviceId});

  Session.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['userId'];
    username = json['username'];
    userFullName = json['userFullName'];
    sessionId = json['sessionId'];
    deviceId = json['deviceId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['userId'] = this.userId;
    data['username'] = this.username;
    data['userFullName'] = this.userFullName;
    data['sessionId'] = this.sessionId;
    data['deviceId'] = this.deviceId;
    return data;
  }
}
