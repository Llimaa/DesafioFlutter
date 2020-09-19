import 'package:financedesafio/repositories/finance.repository.dart';
import 'package:financedesafio/stores/finance.store.dart';

class FinanceController {
  String dadosEmJson;
  FinanceStore _financeStore;
  FinanceRepository _financeRepository;

  FinanceController(FinanceStore store) {
    _financeStore = store;
    _financeRepository = new FinanceRepository();
  }
  void getFinances() {
    _financeStore.clearFinances();
    _financeStore.setFinances(_financeRepository.getAll());
    return;
  }
}
