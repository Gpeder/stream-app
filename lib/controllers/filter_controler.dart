import 'package:flutter/material.dart';

class FilterControler extends ValueNotifier<List<String>> {
  FilterControler() : super([all]);

  static const all = 'All';

  void add(String selectedValue) {
    if (selectedValue == all) {
      value = [all];
    } else {
      if (value.contains(selectedValue)) {
        value.remove(selectedValue);
      } else {
        value.add(selectedValue);
      }
      if (value.contains(all) && value.length > 1) {
        value.remove(all);
      }

      if (value.isEmpty) {
        value.add(all);
      }
    }
    super.notifyListeners();
  }
}