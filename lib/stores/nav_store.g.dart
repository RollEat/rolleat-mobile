// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nav_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NavStore on _NavStore, Store {
  Computed<Widget> _$currentPageComputed;

  @override
  Widget get currentPage =>
      (_$currentPageComputed ??= Computed<Widget>(() => super.currentPage,
              name: '_NavStore.currentPage'))
          .value;

  final _$currentPageIndexAtom = Atom(name: '_NavStore.currentPageIndex');

  @override
  int get currentPageIndex {
    _$currentPageIndexAtom.reportRead();
    return super.currentPageIndex;
  }

  @override
  set currentPageIndex(int value) {
    _$currentPageIndexAtom.reportWrite(value, super.currentPageIndex, () {
      super.currentPageIndex = value;
    });
  }

  final _$_NavStoreActionController = ActionController(name: '_NavStore');

  @override
  void changePage(int index) {
    final _$actionInfo =
        _$_NavStoreActionController.startAction(name: '_NavStore.changePage');
    try {
      return super.changePage(index);
    } finally {
      _$_NavStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentPageIndex: ${currentPageIndex},
currentPage: ${currentPage}
    ''';
  }
}
