import 'dart:convert';
import 'package:financedesafio/models/finance-item.model.dart';

class FinanceRepository {
  List<FinanceItemModel> getAll() {
    String tagsJson =
        '{"finances": [{"title": "Send","description": "Sending Payment To Client","total": 150},{"title": "Received","description": "Receiving salary from company","total": 250},{"title": "Loan","description": "Loan  for the Car","total": 400},{"title": "Send","description": "Sending Payment To Client","total": 150},{"title": "Send","description": "Sending Payment To Client","total": 150},{"title": "Send","description": "Sending Payment To Client","total": 150},{"title": "Send","description": "Sending Payment To Client","total": 150},{"title": "Send","description": "Sending Payment To Client","total": 150},{"title": "Send","description": "Sending Payment To Client","total": 150},{"title": "Send","description": "Sending Payment To Client","total": 150},{"title": "Send","description": "Sending Payment To Client","total": 150},{"title": "Send","description": "Sending Payment To Client","total": 150},{"title": "Send","description": "Sending Payment To Client","total": 150}]}';

    var tagObjsJson = jsonDecode(tagsJson)['finances'] as List;
    List<FinanceItemModel> tagObjs = tagObjsJson
        .map((tagJson) => FinanceItemModel.fromJson2(tagJson))
        .toList();
    print(tagObjs);
    return tagObjs;
  }
}
