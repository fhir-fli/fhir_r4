// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes CoverageEligibilityResponse Auth Support codes.
@Entity()
class CoverageEligibilityResponseAuthSupportCodes extends FhirCode {
  /// Factory constructor to create [CoverageEligibilityResponseAuthSupportCodes] from JSON.
  factory CoverageEligibilityResponseAuthSupportCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CoverageEligibilityResponseAuthSupportCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return CoverageEligibilityResponseAuthSupportCodes._(value, element);
    }
    throw ArgumentError(
      'CoverageEligibilityResponseAuthSupportCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// laborder
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CoverageEligibilityResponseAuthSupportCodes.laborder([this.element])
      : dbValue = 'laborder',
        super('laborder', element);

  /// labreport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CoverageEligibilityResponseAuthSupportCodes.labreport([this.element])
      : dbValue = 'labreport',
        super('labreport', element);

  /// diagnosticimageorder
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CoverageEligibilityResponseAuthSupportCodes.diagnosticimageorder(
      [this.element])
      : dbValue = 'diagnosticimageorder',
        super('diagnosticimageorder', element);

  /// diagnosticimagereport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CoverageEligibilityResponseAuthSupportCodes.diagnosticimagereport(
      [this.element])
      : dbValue = 'diagnosticimagereport',
        super('diagnosticimagereport', element);

  /// professionalreport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CoverageEligibilityResponseAuthSupportCodes.professionalreport([this.element])
      : dbValue = 'professionalreport',
        super('professionalreport', element);

  /// accidentreport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CoverageEligibilityResponseAuthSupportCodes.accidentreport([this.element])
      : dbValue = 'accidentreport',
        super('accidentreport', element);

  /// model
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CoverageEligibilityResponseAuthSupportCodes.model([this.element])
      : dbValue = 'model',
        super('model', element);

  /// picture
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CoverageEligibilityResponseAuthSupportCodes.picture([this.element])
      : dbValue = 'picture',
        super('picture', element);

  /// For instances where an Element is present but not value

  CoverageEligibilityResponseAuthSupportCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  CoverageEligibilityResponseAuthSupportCodes._(super.input, [super.element])
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
    'laborder',
    'labreport',
    'diagnosticimageorder',
    'diagnosticimagereport',
    'professionalreport',
    'accidentreport',
    'model',
    'picture',
  ];

  /// Returns the enum value with an element attached
  CoverageEligibilityResponseAuthSupportCodes withElement(Element? newElement) {
    return CoverageEligibilityResponseAuthSupportCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CoverageEligibilityResponseAuthSupportCodes.$value';
}
