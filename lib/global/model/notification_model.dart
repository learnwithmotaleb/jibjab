class NotificationModel {
  String? id;
  String? toId;
  String? title;
  String? message;
  bool? isRead;
  String? createdAt;
  DateTime? updatedAt;

  NotificationModel({
    this.id,
    this.toId,
    this.title,
    this.message,
    this.isRead,
    this.createdAt,
    this.updatedAt,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) => NotificationModel(
        id: json["_id"],
        toId: json["toId"],
        title: json["title"],
        message: json["message"],
        isRead: json["isRead"],
        createdAt: json["createdAt"] ,
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
      );


}
