// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes example Diagnosis on Admission codes.
@Entity()
class ExampleDiagnosisOnAdmissionCodes extends FhirCode {
  /// Factory constructor to create [ExampleDiagnosisOnAdmissionCodes] from JSON.
  factory ExampleDiagnosisOnAdmissionCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleDiagnosisOnAdmissionCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ExampleDiagnosisOnAdmissionCodes._(value, element);
    }
    throw ArgumentError(
      'ExampleDiagnosisOnAdmissionCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// y
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleDiagnosisOnAdmissionCodes.y([this.element])
      : dbValue = 'y',
        super('y', element);

  /// n
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleDiagnosisOnAdmissionCodes.n([this.element])
      : dbValue = 'n',
        super('n', element);

  /// u
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleDiagnosisOnAdmissionCodes.u([this.element])
      : dbValue = 'u',
        super('u', element);

  /// w
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleDiagnosisOnAdmissionCodes.w([this.element])
      : dbValue = 'w',
        super('w', element);

  /// For instances where an Element is present but not value

  ExampleDiagnosisOnAdmissionCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ExampleDiagnosisOnAdmissionCodes._(super.input, [super.element])
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
    'y',
    'n',
    'u',
    'w',
  ];

  /// Returns the enum value with an element attached
  ExampleDiagnosisOnAdmissionCodes withElement(Element? newElement) {
    return ExampleDiagnosisOnAdmissionCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ExampleDiagnosisOnAdmissionCodes.$value';
}
