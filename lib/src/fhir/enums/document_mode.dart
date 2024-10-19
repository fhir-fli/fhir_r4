// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Whether the application produces or consumes documents.
@Entity()
class DocumentMode extends FhirCode {
  /// Factory constructor to create [DocumentMode] from JSON.
  factory DocumentMode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DocumentMode.elementOnly(element);
    }
    if (values.contains(value)) {
      return DocumentMode._(value, element);
    }
    throw ArgumentError(
      'DocumentMode.fromJson: JSON value is not a valid value',
    );
  }

  /// producer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentMode.producer([this.element])
      : dbValue = 'producer',
        super('producer', element);

  /// consumer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentMode.consumer([this.element])
      : dbValue = 'consumer',
        super('consumer', element);

  /// For instances where an Element is present but not value

  DocumentMode.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  DocumentMode._(super.input, [super.element])
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
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'producer',
    'consumer',
  ];

  /// Returns the enum value with an element attached
  DocumentMode withElement(Element? newElement) {
    return DocumentMode._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DocumentMode.$value';
}
