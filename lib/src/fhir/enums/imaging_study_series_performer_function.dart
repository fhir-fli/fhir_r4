// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Performer function of an agent in an imaging study series
@Entity()
class ImagingStudySeriesPerformerFunction extends FhirCode {
  /// Factory constructor to create [ImagingStudySeriesPerformerFunction] from JSON.
  factory ImagingStudySeriesPerformerFunction.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImagingStudySeriesPerformerFunction.elementOnly(element);
    }
    if (values.contains(value)) {
      return ImagingStudySeriesPerformerFunction._(value, element);
    }
    throw ArgumentError(
      'ImagingStudySeriesPerformerFunction.fromJson: JSON value is not a valid value',
    );
  }

  /// CON
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImagingStudySeriesPerformerFunction.CON([this.element])
      : dbValue = 'CON',
        super('CON', element);

  /// VRF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImagingStudySeriesPerformerFunction.VRF([this.element])
      : dbValue = 'VRF',
        super('VRF', element);

  /// PRF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImagingStudySeriesPerformerFunction.PRF([this.element])
      : dbValue = 'PRF',
        super('PRF', element);

  /// SPRF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImagingStudySeriesPerformerFunction.SPRF([this.element])
      : dbValue = 'SPRF',
        super('SPRF', element);

  /// REF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImagingStudySeriesPerformerFunction.REF([this.element])
      : dbValue = 'REF',
        super('REF', element);

  /// For instances where an Element is present but not value

  ImagingStudySeriesPerformerFunction.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ImagingStudySeriesPerformerFunction._(super.input, [super.element])
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
    'CON',
    'VRF',
    'PRF',
    'SPRF',
    'REF',
  ];

  /// Returns the enum value with an element attached
  ImagingStudySeriesPerformerFunction withElement(Element? newElement) {
    return ImagingStudySeriesPerformerFunction._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ImagingStudySeriesPerformerFunction.$value';
}
