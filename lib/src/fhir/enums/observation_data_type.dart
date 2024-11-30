// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Permitted data type for observation value.
class ObservationDataType {
  // Private constructor for internal use (like enum)
  ObservationDataType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ObservationDataType values
  /// Quantity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationDataType Quantity = ObservationDataType._(
    'Quantity',
  );

  /// CodeableConcept
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationDataType CodeableConcept = ObservationDataType._(
    'CodeableConcept',
  );

  /// string
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationDataType string = ObservationDataType._(
    'string',
  );

  /// boolean
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationDataType boolean = ObservationDataType._(
    'boolean',
  );

  /// integer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationDataType integer = ObservationDataType._(
    'integer',
  );

  /// Range
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationDataType Range = ObservationDataType._(
    'Range',
  );

  /// Ratio
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationDataType Ratio = ObservationDataType._(
    'Ratio',
  );

  /// SampledData
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationDataType SampledData = ObservationDataType._(
    'SampledData',
  );

  /// time
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationDataType time = ObservationDataType._(
    'time',
  );

  /// dateTime
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationDataType dateTime = ObservationDataType._(
    'dateTime',
  );

  /// Period
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationDataType Period = ObservationDataType._(
    'Period',
  );

  /// For instances where an Element is present but not value

  static final ObservationDataType elementOnly = ObservationDataType._('');

  /// List of all enum-like values
  static final List<ObservationDataType> values = [
    Quantity,
    CodeableConcept,
    string,
    boolean,
    integer,
    Range,
    Ratio,
    SampledData,
    time,
    dateTime,
    Period,
  ];

  /// Returns the enum value with an element attached
  ObservationDataType withElement(Element? newElement) {
    return ObservationDataType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ObservationDataType] from JSON.
  static ObservationDataType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationDataType.elementOnly.withElement(element);
    }
    return ObservationDataType._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
