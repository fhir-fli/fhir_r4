// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Permitted data type for observation value.
class ObservationDataType {
  // Private constructor for internal use (like enum)
  ObservationDataType._(this.fhirCode, {this.element});

  /// Factory constructor to create [ObservationDataType] from JSON.
  factory ObservationDataType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationDataType.elementOnly.withElement(element);
    }
    return ObservationDataType._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ObservationDataType values
  /// Quantity
  static final ObservationDataType Quantity = ObservationDataType._(
    'Quantity',
  );

  /// CodeableConcept
  static final ObservationDataType CodeableConcept = ObservationDataType._(
    'CodeableConcept',
  );

  /// string
  static final ObservationDataType string = ObservationDataType._(
    'string',
  );

  /// boolean
  static final ObservationDataType boolean = ObservationDataType._(
    'boolean',
  );

  /// integer
  static final ObservationDataType integer = ObservationDataType._(
    'integer',
  );

  /// Range
  static final ObservationDataType Range = ObservationDataType._(
    'Range',
  );

  /// Ratio
  static final ObservationDataType Ratio = ObservationDataType._(
    'Ratio',
  );

  /// SampledData
  static final ObservationDataType SampledData = ObservationDataType._(
    'SampledData',
  );

  /// time
  static final ObservationDataType time = ObservationDataType._(
    'time',
  );

  /// dateTime
  static final ObservationDataType dateTime = ObservationDataType._(
    'dateTime',
  );

  /// Period
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

  /// String representation
  @override
  String toString() => fhirCode;
}
