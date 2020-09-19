import 'package:financedesafio/models/finance-item.model.dart';
import 'package:mobx/mobx.dart';
part 'finance.store.g.dart';

class FinanceStore = _FinanceStore with _$FinanceStore;

abstract class _FinanceStore with Store {
  @observable
  ObservableList<FinanceItemModel> finances =
      new ObservableList<FinanceItemModel>();

  @action
  void add(FinanceItemModel finance) {
    finances.add(finance);
  }

  @action
  void setFinances(List<FinanceItemModel> items) {
    finances.addAll(items);
  }

  @action
  void clearFinances() {
    finances = new ObservableList<FinanceItemModel>();
  }
}
