class RegisterModel {
  Device device;
  Country country;
  String phoneNumber;
  String password;

  RegisterModel({this.device, this.country, this.phoneNumber, this.password});

  RegisterModel.fromJson(Map<String, dynamic> json) {
    device =
    json['device'] != null ? new Device.fromJson(json['device']) : null;
    country =
    json['country'] != null ? new Country.fromJson(json['country']) : null;
    phoneNumber = json['phoneNumber'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.device != null) {
      data['device'] = this.device.toJson();
    }
    if (this.country != null) {
      data['country'] = this.country.toJson();
    }
    data['phoneNumber'] = this.phoneNumber;
    data['password'] = this.password;
    return data;
  }
}

class Device {

  String manufacturer;
  String deviceName;
  String deviceId;
  String model;
  String version;
  String platform;
  VersionNumber versionNumber;
  String appVersion;
  String appBuild;
  String idiom;
  bool isDevice;
  int deviceType;
  String pnsToken;
  int userId;

  Device(
      {this.manufacturer,
        this.deviceName,
        this.deviceId,
        this.model,
        this.version,
        this.platform,
        this.versionNumber,
        this.appVersion,
        this.appBuild,
        this.idiom,
        this.isDevice,
        this.deviceType,
        this.pnsToken,
        this.userId});

  Device.fromJson(Map<String, dynamic> json) {
    manufacturer = json['manufacturer'];
    deviceName = json['deviceName'];
    deviceId = json['deviceId'];
    model = json['model'];
    version = json['version'];
    platform = json['platform'];
    versionNumber = json['versionNumber'] != null
        ? new VersionNumber.fromJson(json['versionNumber'])
        : null;
    appVersion = json['appVersion'];
    appBuild = json['appBuild'];
    idiom = json['idiom'];
    isDevice = json['isDevice'];
    deviceType = json['deviceType'];
    pnsToken = json['pnsToken'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['manufacturer'] = this.manufacturer;
    data['deviceName'] = this.deviceName;
    data['deviceId'] = this.deviceId;
    data['model'] = this.model;
    data['version'] = this.version;
    data['platform'] = this.platform;
    if (this.versionNumber != null) {
      data['versionNumber'] = this.versionNumber.toJson();
    }
    data['appVersion'] = this.appVersion;
    data['appBuild'] = this.appBuild;
    data['idiom'] = this.idiom;
    data['isDevice'] = this.isDevice;
    data['deviceType'] = this.deviceType;
    data['pnsToken'] = this.pnsToken;
    data['userId'] = this.userId;
    return data;
  }

  @override
  String toString() {
    return 'Device{manufacturer: $manufacturer, deviceName: $deviceName, deviceId: $deviceId, model: $model, version: $version, platform: $platform, versionNumber: $versionNumber, appVersion: $appVersion, appBuild: $appBuild, idiom: $idiom, isDevice: $isDevice, deviceType: $deviceType, pnsToken: $pnsToken, userId: $userId}';
  }
}

class VersionNumber {
  int id;
  int major;
  int minor;
  int build;
  int revision;
  int majorRevision;
  int minorRevision;

  VersionNumber(
      {this.id,
        this.major,
        this.minor,
        this.build,
        this.revision,
        this.majorRevision,
        this.minorRevision});

  VersionNumber.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    major = json['major'];
    minor = json['minor'];
    build = json['build'];
    revision = json['revision'];
    majorRevision = json['majorRevision'];
    minorRevision = json['minorRevision'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['major'] = this.major;
    data['minor'] = this.minor;
    data['build'] = this.build;
    data['revision'] = this.revision;
    data['majorRevision'] = this.majorRevision;
    data['minorRevision'] = this.minorRevision;
    return data;
  }
}

class Country {
  String name;
  String code;

  Country({this.name, this.code});

  Country.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['code'] = this.code;
    return data;
  }
}
