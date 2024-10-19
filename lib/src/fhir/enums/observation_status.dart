// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Codes providing the status of an observation.
@Entity()
class ObservationStatus extends FhirCode {
  /// Factory constructor to create [ObservationStatus] from JSON.
  factory ObservationStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationStatus.elementOnly(element);
    }
    if (values.contains(value)) {
      return ObservationStatus._(value, element);
    }
    throw ArgumentError(
      'ObservationStatus.fromJson: JSON value is not a valid value',
    );
  }

  /// registered
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationStatus.registered([this.element])
      : dbValue = 'registered',
        super('registered', element);

  /// preliminary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationStatus.preliminary([this.element])
      : dbValue = 'preliminary',
        super('preliminary', element);

  /// final_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationStatus.final_([this.element])
      : dbValue = 'final',
        super('final', element);

  /// amended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationStatus.amended([this.element])
      : dbValue = 'amended',
        super('amended', element);

  /// corrected
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationStatus.corrected([this.element])
      : dbValue = 'corrected',
        super('corrected', element);

  /// cancelled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationStatus.cancelled([this.element])
      : dbValue = 'cancelled',
        super('cancelled', element);

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationStatus.entered_in_error([this.element])
      : dbValue = 'entered-in-error',
        super('entered-in-error', element);

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationStatus.unknown([this.element])
      : dbValue = 'unknown',
        super('unknown', element);

  /// For instances where an Element is present but not value

  ObservationStatus.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ObservationStatus._(super.input, [super.element])
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
    'preliminary',
    'final',
    'amended',
    'corrected',
    'cancelled',
    'entered-in-error',
    'unknown',
  ];

  /// Returns the enum value with an element attached
  ObservationStatus withElement(Element? newElement) {
    return ObservationStatus._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ObservationStatus.$value';
}
