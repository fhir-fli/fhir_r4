import 'package:json_annotation/json_annotation.dart';

/// The status of the document reference.
enum DocumentReferenceStatus {
  /// Display: Current
  /// Definition: This is the current reference for this document.
  @JsonValue('current')
  current,
  /// Display: Superseded
  /// Definition: This reference has been superseded by another reference.
  @JsonValue('superseded')
  superseded,
  /// Display: Entered in Error
  /// Definition: This reference was created in error.
  @JsonValue('entered-in-error')
  entered_in_error,
;

@override
  String toString() {
      switch(this) {
        case current: return 'current';
        case superseded: return 'superseded';
        case entered_in_error: return 'entered-in-error';
      }
      }
String toJson() => toString();
  DocumentReferenceStatus fromString(String str) {
    switch(str) {
      case 'current': return DocumentReferenceStatus.current;
      case 'superseded': return DocumentReferenceStatus.superseded;
      case 'entered-in-error': return DocumentReferenceStatus.entered_in_error;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 DocumentReferenceStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

