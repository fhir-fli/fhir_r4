// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The status of the ImagingStudy.
@Entity()
class ImagingStudyStatus extends FhirCode {
  /// Factory constructor to create [ImagingStudyStatus] from JSON.
  factory ImagingStudyStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImagingStudyStatus.elementOnly(element);
    }
    if (values.contains(value)) {
      return ImagingStudyStatus._(value, element);
    }
    throw ArgumentError(
      'ImagingStudyStatus.fromJson: JSON value is not a valid value',
    );
  }

  /// registered
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImagingStudyStatus.registered([this.element])
      : dbValue = 'registered',
        super('registered', element);

  /// available
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImagingStudyStatus.available([this.element])
      : dbValue = 'available',
        super('available', element);

  /// cancelled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImagingStudyStatus.cancelled([this.element])
      : dbValue = 'cancelled',
        super('cancelled', element);

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImagingStudyStatus.entered_in_error([this.element])
      : dbValue = 'entered-in-error',
        super('entered-in-error', element);

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImagingStudyStatus.unknown([this.element])
      : dbValue = 'unknown',
        super('unknown', element);

  /// For instances where an Element is present but not value

  ImagingStudyStatus.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ImagingStudyStatus._(super.input, [super.element])
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
    'available',
    'cancelled',
    'entered-in-error',
    'unknown',
  ];

  /// Returns the enum value with an element attached
  ImagingStudyStatus withElement(Element? newElement) {
    return ImagingStudyStatus._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ImagingStudyStatus.$value';
}
