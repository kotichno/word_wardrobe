import 'package:flutter/foundation.dart';

DateTime? _overriddenNowDateTime;

DateTime get now => _overriddenNowDateTime ?? DateTime.now();

@visibleForTesting
void overrideNowDateTime(DateTime dateTime) {
  _overriddenNowDateTime = dateTime;
}
