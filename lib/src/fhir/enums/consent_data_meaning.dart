// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// How a resource reference is interpreted when testing consent restrictions.
@Entity()
class ConsentDataMeaning extends FhirCode {
  /// Factory constructor to create [ConsentDataMeaning] from JSON.
  factory ConsentDataMeaning.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentDataMeaning.elementOnly(element);
    }
    if (values.contains(value)) {
      return ConsentDataMeaning._(value, element);
    }
    throw ArgumentError(
      'ConsentDataMeaning.fromJson: JSON value is not a valid value',
    );
  }

  /// instance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentDataMeaning.instance([this.element])
      : dbValue = 'instance',
        super('instance', element);

  /// related
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentDataMeaning.related([this.element])
      : dbValue = 'related',
        super('related', element);

  /// dependents
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentDataMeaning.dependents([this.element])
      : dbValue = 'dependents',
        super('dependents', element);

  /// authoredby
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentDataMeaning.authoredby([this.element])
      : dbValue = 'authoredby',
        super('authoredby', element);

  /// For instances where an Element is present but not value

  ConsentDataMeaning.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ConsentDataMeaning._(super.input, [super.element])
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
    'instance',
    'related',
    'dependents',
    'authoredby',
  ];

  /// Returns the enum value with an element attached
  ConsentDataMeaning withElement(Element? newElement) {
    return ConsentDataMeaning._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ConsentDataMeaning.$value';
}
