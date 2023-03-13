class Note {
  int? id;
  String? title;
  String? content;
  String? date;

  Note({
    required this.title,
    required this.content,
    required this.date,
    required this.id,
  });

  Note.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    content = json['content'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['content'] = content;
    data['date'] = date;
    return data;
  }
}
