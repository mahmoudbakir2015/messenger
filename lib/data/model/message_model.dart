class MessageModel {
  String? text;
  String? senderId;
  String? dateTime;

  MessageModel({this.text, this.senderId, this.dateTime});

  MessageModel.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    senderId = json['senderId'];
    dateTime = json['dateTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['senderId'] = this.senderId;
    data['dateTime'] = this.dateTime;
    return data;
  }
}
