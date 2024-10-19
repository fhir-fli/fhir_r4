// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The status of the document reference.
@Entity()
class DocumentReferenceStatus extends FhirCode {
  /// Factory constructor to create [DocumentReferenceStatus] from JSON.
  factory DocumentReferenceStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DocumentReferenceStatus.elementOnly(element);
    }
    if (values.contains(value)) {
      return DocumentReferenceStatus._(value, element);
    }
    throw ArgumentError(
      'DocumentReferenceStatus.fromJson: JSON value is not a valid value',
    );
  }

  /// current
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentReferenceStatus.current([this.element])
      : dbValue = 'current',
        super('current', element);

  /// superseded
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentReferenceStatus.superseded([this.element])
      : dbValue = 'superseded',
        super('superseded', element);

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentReferenceStatus.entered_in_error([this.element])
      : dbValue = 'entered-in-error',
        super('entered-in-error', element);

  /// For instances where an Element is present but not value

  DocumentReferenceStatus.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  DocumentReferenceStatus._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'current',
    'superseded',
    'entered-in-error',
  ];

  /// Returns the enum value with an element attached
  DocumentReferenceStatus withElement(Element? newElement) {
    return DocumentReferenceStatus._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DocumentReferenceStatus.$value';
}
