class FinanceItemModel {
  String title;
  String description;
  int total;

  FinanceItemModel(this.title, this.description, this.total);

  FinanceItemModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    total = json['total'];
  }

  factory FinanceItemModel.fromJson2(dynamic json) {
    return FinanceItemModel(json['title'] as String,
        json['description'] as String, json['total'] as int);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['description'] = this.description;
    data['total'] = this.total;
    return data;
  }
}
