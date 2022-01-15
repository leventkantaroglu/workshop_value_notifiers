import 'package:flutter/material.dart';

import 'address_model.dart';

ValueNotifier<int?> luckyNumber = ValueNotifier(null);
ValueNotifier<String> userName = ValueNotifier("");
ValueNotifier<List<int>> favorites = ValueNotifier([]);
ValueNotifier<Address?> address = ValueNotifier(null);
