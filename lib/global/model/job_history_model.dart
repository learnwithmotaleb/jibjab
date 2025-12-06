class JobHistoryModel {
    JobLocation? jobLocation;
    String? id;
    String? clientName;
    String? clientId;
    String? clientPhoneNumber;
    int? currentServiceNumber;
    DateTime? bookedDateTime;
    String? address;
    bool? isPaid;
    String? status;
    String? carImageBefore;
    String? carImageAfter;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;
    String? assignedWorker;
    DateTime? startDateTime;
    DateTime? endDateTime;
    int? jobDuration;

    JobHistoryModel({
        this.jobLocation,
        this.id,
        this.clientName,
        this.clientId,
        this.clientPhoneNumber,
        this.currentServiceNumber,
        this.bookedDateTime,
        this.address,
        this.isPaid,
        this.status,
        this.carImageBefore,
        this.carImageAfter,
        this.createdAt,
        this.updatedAt,
        this.v,
        this.assignedWorker,
        this.startDateTime,
        this.endDateTime,
        this.jobDuration,
    });

    factory JobHistoryModel.fromJson(Map<String, dynamic> json) => JobHistoryModel(
        jobLocation: json["jobLocation"] == null ? null : JobLocation.fromJson(json["jobLocation"]),
        id: json["_id"],
        clientName: json["clientName"],
        clientId: json["clientId"],
        clientPhoneNumber: json["clientPhoneNumber"],
        currentServiceNumber: json["currentServiceNumber"],
        bookedDateTime: json["bookedDateTime"] == null ? null : DateTime.parse(json["bookedDateTime"]),
        address: json["address"],
        isPaid: json["isPaid"],
        status: json["status"],
        carImageBefore: json["carImageBefore"],
        carImageAfter: json["carImageAfter"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        assignedWorker: json["assignedWorker"],
        startDateTime: json["startDateTime"] == null ? null : DateTime.parse(json["startDateTime"]),
        endDateTime: json["endDateTime"] == null ? null : DateTime.parse(json["endDateTime"]),
        jobDuration: json["jobDuration"],
    );

    Map<String, dynamic> toJson() => {
        "jobLocation": jobLocation?.toJson(),
        "_id": id,
        "clientName": clientName,
        "clientId": clientId,
        "clientPhoneNumber": clientPhoneNumber,
        "currentServiceNumber": currentServiceNumber,
        "bookedDateTime": bookedDateTime?.toIso8601String(),
        "address": address,
        "isPaid": isPaid,
        "status": status,
        "carImageBefore": carImageBefore,
        "carImageAfter": carImageAfter,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
        "assignedWorker": assignedWorker,
        "startDateTime": startDateTime?.toIso8601String(),
        "endDateTime": endDateTime?.toIso8601String(),
        "jobDuration": jobDuration,
    };
}

class JobLocation {
    List<double>? coordinates;
    String? type;

    JobLocation({
        this.coordinates,
        this.type,
    });

    factory JobLocation.fromJson(Map<String, dynamic> json) => JobLocation(
        coordinates: json["coordinates"] == null ? [] : List<double>.from(json["coordinates"]!.map((x) => x?.toDouble())),
        type: json["type"],
    );

    Map<String, dynamic> toJson() => {
        "coordinates": coordinates == null ? [] : List<dynamic>.from(coordinates!.map((x) => x)),
        "type": type,
    };
}
