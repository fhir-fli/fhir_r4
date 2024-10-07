import 'package:json_annotation/json_annotation.dart';

/// This value set has asset availability codes.
enum ContractResourceAssetAvailiabilityCodes {
  /// Display: Lease
  /// Definition: To be completed
  @JsonValue('lease')
  lease,
  ;

  @override
  String toString() {
    switch (this) {
      case lease:
        return 'lease';
    }
  }

  String toJson() => toString();
  ContractResourceAssetAvailiabilityCodes fromString(String str) {
    switch (str) {
      case 'lease':
        return ContractResourceAssetAvailiabilityCodes.lease;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  ContractResourceAssetAvailiabilityCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
