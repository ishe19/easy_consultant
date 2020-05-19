class VehicleMake {

  int vehicleMakeId;
  String make;
  String description;
  List<VehicleModels> vehicleModels;

  VehicleMake(
      {this.vehicleMakeId, this.make, this.description, this.vehicleModels});

  VehicleMake.fromJson(Map<String, dynamic> json) {
    vehicleMakeId = json['vehicleMakeId'];
    make = json['make'];
    description = json['description'];
    if (json['vehicleModels'] != null) {
      vehicleModels = new List<VehicleModels>();
      json['vehicleModels'].forEach((v) {
        vehicleModels.add(new VehicleModels.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['vehicleMakeId'] = this.vehicleMakeId;
    data['make'] = this.make;
    data['description'] = this.description;
    if (this.vehicleModels != null) {
      data['vehicleModels'] =
          this.vehicleModels.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  String toString() {
    return 'VehicleMake{vehicleMakeId: $vehicleMakeId, make: $make, description: $description, vehicleModels: $vehicleModels}';
  }
}

class VehicleModels {

  int vehicleModelId;
  String model;
  String description;
  int vehicleMakeId;

  VehicleModels(
      {this.vehicleModelId, this.model, this.description, this.vehicleMakeId});

  VehicleModels.fromJson(Map<String, dynamic> json) {
    vehicleModelId = json['vehicleModelId'];
    model = json['model'];
    description = json['description'];
    vehicleMakeId = json['vehicleMakeId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['vehicleModelId'] = this.vehicleModelId;
    data['model'] = this.model;
    data['description'] = this.description;
    data['vehicleMakeId'] = this.vehicleMakeId;
    return data;
  }

  @override
  String toString() {
    return 'VehicleModels{vehicleModelId: $vehicleModelId, model: $model, description: $description, vehicleMakeId: $vehicleMakeId}';
  }
}
