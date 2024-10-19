// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The status of the diagnostic report.
@Entity()
class DiagnosticReportStatus extends FhirCode {
  /// Factory constructor to create [DiagnosticReportStatus] from JSON.
  factory DiagnosticReportStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DiagnosticReportStatus.elementOnly(element);
    }
    if (values.contains(value)) {
      return DiagnosticReportStatus._(value, element);
    }
    throw ArgumentError(
      'DiagnosticReportStatus.fromJson: JSON value is not a valid value',
    );
  }

  /// registered
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DiagnosticReportStatus.registered([this.element])
      : dbValue = 'registered',
        super('registered', element);

  /// partial
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DiagnosticReportStatus.partial([this.element])
      : dbValue = 'partial',
        super('partial', element);

  /// preliminary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DiagnosticReportStatus.preliminary([this.element])
      : dbValue = 'preliminary',
        super('preliminary', element);

  /// final_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DiagnosticReportStatus.final_([this.element])
      : dbValue = 'final',
        super('final', element);

  /// amended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DiagnosticReportStatus.amended([this.element])
      : dbValue = 'amended',
        super('amended', element);

  /// corrected
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DiagnosticReportStatus.corrected([this.element])
      : dbValue = 'corrected',
        super('corrected', element);

  /// appended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DiagnosticReportStatus.appended([this.element])
      : dbValue = 'appended',
        super('appended', element);

  /// cancelled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DiagnosticReportStatus.cancelled([this.element])
      : dbValue = 'cancelled',
        super('cancelled', element);

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DiagnosticReportStatus.entered_in_error([this.element])
      : dbValue = 'entered-in-error',
        super('entered-in-error', element);

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DiagnosticReportStatus.unknown([this.element])
      : dbValue = 'unknown',
        super('unknown', element);

  /// For instances where an Element is present but not value

  DiagnosticReportStatus.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  DiagnosticReportStatus._(super.input, [super.element])
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
    'registered',
    'partial',
    'preliminary',
    'final',
    'amended',
    'corrected',
    'appended',
    'cancelled',
    'entered-in-error',
    'unknown',
  ];

  /// Returns the enum value with an element attached
  DiagnosticReportStatus withElement(Element? newElement) {
    return DiagnosticReportStatus._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DiagnosticReportStatus.$value';
}
