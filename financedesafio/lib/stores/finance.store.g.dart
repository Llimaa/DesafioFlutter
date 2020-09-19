// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finance.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FinanceStore on _FinanceStore, Store {
  final _$financesAtom = Atom(name: '_FinanceStore.finances');

  @override
  ObservableList<FinanceItemModel> get finances {
    _$financesAtom.context.enforceReadPolicy(_$financesAtom);
    _$financesAtom.reportObserved();
    return super.finances;
  }

  @override
  set finances(ObservableList<FinanceItemModel> value) {
    _$financesAtom.context.conditionallyRunInAction(() {
      super.finances = value;
      _$financesAtom.reportChanged();
    }, _$financesAtom, name: '${_$financesAtom.name}_set');
  }

  final _$_FinanceStoreActionController =
      ActionController(name: '_FinanceStore');

  @override
  void add(FinanceItemModel finance) {
    final _$actionInfo = _$_FinanceStoreActionController.startAction();
    try {
      return super.add(finance);
    } finally {
      _$_FinanceStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFinances(List<FinanceItemModel> items) {
    final _$actionInfo = _$_FinanceStoreActionController.startAction();
    try {
      return super.setFinances(items);
    } finally {
      _$_FinanceStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearFinances() {
    final _$actionInfo = _$_FinanceStoreActionController.startAction();
    try {
      return super.clearFinances();
    } finally {
      _$_FinanceStoreActionController.endAction(_$actionInfo);
    }
  }
}
