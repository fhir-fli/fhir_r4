import 'package:json_annotation/json_annotation.dart';

/// Type for strand.
enum StrandType {
  /// Display: Watson strand of referenceSeq
  /// Definition: Watson strand of reference sequence.
  @JsonValue('watson')
  watson,
  /// Display: Crick strand of referenceSeq
  /// Definition: Crick strand of reference sequence.
  @JsonValue('crick')
  crick,
;

@override
  String toString() {
      switch(this) {
        case watson: return 'watson';
        case crick: return 'crick';
      }
      }
String toJson() => toString();
  StrandType fromString(String str) {
    switch(str) {
      case 'watson': return StrandType.watson;
      case 'crick': return StrandType.crick;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 StrandType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}
