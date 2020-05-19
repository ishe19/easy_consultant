import 'package:flutter/material.dart';
// To parse this JSON data, do
//
//     final job = jobFromJson(jsonString);

class Job {
  int jobId;
  int userId;
  String userShortName;
  int carId;
  String carShorName;
  String location;
  int requestId;
  String faultyAreas;
  DateTime dateAdded;
  int artisanId;
  String artisanShortName;
  int jobActivity;
  int status;
  List<JobTask> jobTasks;
  List<JobActivity> jobActivities;
  String remarks;
  int driverDefectId;

  Job(
      {
    this.jobId,
    this.userId,
    this.userShortName,
    this.carId,
    this.carShorName,
    this.location,
    this.requestId,
    this.faultyAreas,
    this.dateAdded,
    this.artisanId,
    this.artisanShortName,
    this.jobActivity,
    this.status,
    this.jobTasks,
    this.jobActivities,
    this.remarks,
    this.driverDefectId,
  });

  factory Job.fromJson(Map<String, dynamic> json) => Job(
    jobId: json["jobId"],
    userId: json["userId"],
    userShortName: json["userShortName"],
    carId: json["carId"],
    carShorName: json["carShorName"],
    location: json["location"],
    requestId: json["requestId"],
    faultyAreas: json["faultyAreas"],
    dateAdded: DateTime.parse(json["dateAdded"]),
    artisanId: json["artisanId"],
    artisanShortName: json["artisanShortName"],
    jobActivity: json["jobActivity"],
    status: json["status"],
    jobTasks: List<JobTask>.from(json["jobTasks"].map((x) => JobTask.fromJson(x))),
    jobActivities: List<JobActivity>.from(json["jobActivities"].map((x) => JobActivity.fromJson(x))),
    remarks: json["remarks"],
    driverDefectId: json["driverDefectId"],
  );

  Map<String, dynamic> toJson() => {
    "jobId": jobId,
    "userId": userId,
    "userShortName": userShortName,
    "carId": carId,
    "carShorName": carShorName,
    "location": location,
    "requestId": requestId,
    "faultyAreas": faultyAreas,
    "dateAdded": dateAdded.toIso8601String(),
    "artisanId": artisanId,
    "artisanShortName": artisanShortName,
    "jobActivity": jobActivity,
    "status": status,
    "jobTasks": List<dynamic>.from(jobTasks.map((x) => x.toJson())),
    "jobActivities": List<dynamic>.from(jobActivities.map((x) => x.toJson())),
    "remarks": remarks,
    "driverDefectId": driverDefectId,
  };
}

class JobActivity {
  int jobActivityId;
  int level;
  int status;
  int initiatedBy;
  String initiatedByShortName;
  int assignedTo;
  String assignedToShortName;
  String remarks;
  DateTime activityTime;

  JobActivity({
    this.jobActivityId,
    this.level,
    this.status,
    this.initiatedBy,
    this.initiatedByShortName,
    this.assignedTo,
    this.assignedToShortName,
    this.remarks,
    this.activityTime,
  });

  factory JobActivity.fromJson(Map<String, dynamic> json) => JobActivity(
    jobActivityId: json["jobActivityId"],
    level: json["level"],
    status: json["status"],
    initiatedBy: json["initiatedBy"],
    initiatedByShortName: json["initiatedByShortName"],
    assignedTo: json["assignedTo"],
    assignedToShortName: json["assignedToShortName"],
    remarks: json["remarks"],
    activityTime: DateTime.parse(json["activityTime"]),
  );

  Map<String, dynamic> toJson() => {
    "jobActivityId": jobActivityId,
    "level": level,
    "status": status,
    "initiatedBy": initiatedBy,
    "initiatedByShortName": initiatedByShortName,
    "assignedTo": assignedTo,
    "assignedToShortName": assignedToShortName,
    "remarks": remarks,
    "activityTime": activityTime.toIso8601String(),
  };
}

class JobTask {
  int jobTaskId;
  String taskName;
  int jobId;
  int status;
  String remarks;
  List<JobTaskAssignment> jobTaskAssignments;

  JobTask({
    this.jobTaskId,
    this.taskName,
    this.jobId,
    this.status,
    this.remarks,
    this.jobTaskAssignments,
  });

  factory JobTask.fromJson(Map<String, dynamic> json) => JobTask(
    jobTaskId: json["jobTaskId"],
    taskName: json["taskName"],
    jobId: json["jobId"],
    status: json["status"],
    remarks: json["remarks"],
    jobTaskAssignments: List<JobTaskAssignment>.from(json["jobTaskAssignments"].map((x) => JobTaskAssignment.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "jobTaskId": jobTaskId,
    "taskName": taskName,
    "jobId": jobId,
    "status": status,
    "remarks": remarks,
    "jobTaskAssignments": List<dynamic>.from(jobTaskAssignments.map((x) => x.toJson())),
  };
}

class JobTaskAssignment {
  int jobAssignedTaskId;
  int artisanId;
  String artisanShortName;
  int jobTaskId;
  String remarks;

  JobTaskAssignment({
    this.jobAssignedTaskId,
    this.artisanId,
    this.artisanShortName,
    this.jobTaskId,
    this.remarks,
  });

  factory JobTaskAssignment.fromJson(Map<String, dynamic> json) => JobTaskAssignment(
    jobAssignedTaskId: json["jobAssignedTaskId"],
    artisanId: json["artisanId"],
    artisanShortName: json["artisanShortName"],
    jobTaskId: json["jobTaskId"],
    remarks: json["remarks"],
  );

  Map<String, dynamic> toJson() => {
    "jobAssignedTaskId": jobAssignedTaskId,
    "artisanId": artisanId,
    "artisanShortName": artisanShortName,
    "jobTaskId": jobTaskId,
    "remarks": remarks,
  };
}

