// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The degree to which the server supports the code search parameter on ValueSet, if it is supported.
@Entity()
class CodeSearchSupport extends FhirCode {
  /// Factory constructor to create [CodeSearchSupport] from JSON.
  factory CodeSearchSupport.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CodeSearchSupport.elementOnly(element);
    }
    if (values.contains(value)) {
      return CodeSearchSupport._(value, element);
    }
    throw ArgumentError(
      'CodeSearchSupport.fromJson: JSON value is not a valid value',
    );
  }

  /// explicit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CodeSearchSupport.explicit([this.element])
      : dbValue = 'explicit',
        super('explicit', element);

  /// all
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CodeSearchSupport.all([this.element])
      : dbValue = 'all',
        super('all', element);

  /// For instances where an Element is present but not value

  CodeSearchSupport.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  CodeSearchSupport._(super.input, [super.element])
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
    'explicit',
    'all',
  ];

  /// Returns the enum value with an element attached
  CodeSearchSupport withElement(Element? newElement) {
    return CodeSearchSupport._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CodeSearchSupport.$value';
}
