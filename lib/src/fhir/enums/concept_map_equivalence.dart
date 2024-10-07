import 'package:json_annotation/json_annotation.dart';

/// The degree of equivalence between concepts.
enum ConceptMapEquivalence {
  /// Display: Related To
  /// Definition: The concepts are related to each other, and have at least some overlap in meaning, but the exact relationship is not known.
  @JsonValue('relatedto')
  relatedto,
  /// Display: Unmatched
  /// Definition: There is no match for this concept in the target code system.
  @JsonValue('unmatched')
  unmatched,
;

@override
  String toString() {
      switch(this) {
        case relatedto: return 'relatedto';
        case unmatched: return 'unmatched';
      }
      }
String toJson() => toString();
  ConceptMapEquivalence fromString(String str) {
    switch(str) {
      case 'relatedto': return ConceptMapEquivalence.relatedto;
      case 'unmatched': return ConceptMapEquivalence.unmatched;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ConceptMapEquivalence fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

