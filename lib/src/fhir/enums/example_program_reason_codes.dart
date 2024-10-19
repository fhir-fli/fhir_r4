// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes sample Program Reason Span codes.
@Entity()
class ExampleProgramReasonCodes extends FhirCode {
  /// Factory constructor to create [ExampleProgramReasonCodes] from JSON.
  factory ExampleProgramReasonCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleProgramReasonCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ExampleProgramReasonCodes._(value, element);
    }
    throw ArgumentError(
      'ExampleProgramReasonCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// as_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleProgramReasonCodes.as_([this.element])
      : dbValue = 'as',
        super('as', element);

  /// hd
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleProgramReasonCodes.hd([this.element])
      : dbValue = 'hd',
        super('hd', element);

  /// auscr
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleProgramReasonCodes.auscr([this.element])
      : dbValue = 'auscr',
        super('auscr', element);

  /// none
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleProgramReasonCodes.none([this.element])
      : dbValue = 'none',
        super('none', element);

  /// For instances where an Element is present but not value

  ExampleProgramReasonCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ExampleProgramReasonCodes._(super.input, [super.element])
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
    'as',
    'hd',
    'auscr',
    'none',
  ];

  /// Returns the enum value with an element attached
  ExampleProgramReasonCodes withElement(Element? newElement) {
    return ExampleProgramReasonCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ExampleProgramReasonCodes.$value';
}
