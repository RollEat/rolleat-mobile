import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'nav_store.g.dart';

class NavStore extends _NavStore with _$NavStore {
  NavStore(List<Widget> pages) : super(pages);
}

abstract class _NavStore with Store {
  List<Widget> pages = [];

  _NavStore(this.pages);
  
  @observable
  int currentPageIndex = 0;

  @computed
  Widget get currentPage => pages[currentPageIndex];

  @action
  void changePage(int index) {
    currentPageIndex = index;
  }
}