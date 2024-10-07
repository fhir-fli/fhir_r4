import 'package:json_annotation/json_annotation.dart';

/// This value set includes Example Coverage Financial Exception Codes.
enum ExampleCoverageFinancialExceptionCodes {
  /// Display: Retired
  /// Definition: Retired persons have all copays and deductibles reduced.
  @JsonValue('retired')
  retired,
  /// Display: Foster child
  /// Definition: Children in the foster care have all copays and deductibles waived.
  @JsonValue('foster')
  foster,
;

@override
  String toString() {
      switch(this) {
        case retired: return 'retired';
        case foster: return 'foster';
      }
      }
String toJson() => toString();
  ExampleCoverageFinancialExceptionCodes fromString(String str) {
    switch(str) {
      case 'retired': return ExampleCoverageFinancialExceptionCodes.retired;
      case 'foster': return ExampleCoverageFinancialExceptionCodes.foster;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ExampleCoverageFinancialExceptionCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

