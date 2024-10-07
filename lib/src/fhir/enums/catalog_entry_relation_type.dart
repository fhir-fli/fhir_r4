import 'package:json_annotation/json_annotation.dart';

/// The type of relations between entries.
enum CatalogEntryRelationType {
  /// Display: Triggers
  /// Definition: the related entry represents an activity that may be triggered by the current item.
  @JsonValue('triggers')
  triggers,
  /// Display: Replaced By
  /// Definition: the related entry represents an item that replaces the current retired item.
  @JsonValue('is-replaced-by')
  is_replaced_by,
;

@override
  String toString() {
      switch(this) {
        case triggers: return 'triggers';
        case is_replaced_by: return 'is-replaced-by';
      }
      }
String toJson() => toString();
  CatalogEntryRelationType fromString(String str) {
    switch(str) {
      case 'triggers': return CatalogEntryRelationType.triggers;
      case 'is-replaced-by': return CatalogEntryRelationType.is_replaced_by;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 CatalogEntryRelationType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

