// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Permitted data type for observation value.
class ObservationDataType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ObservationDataType._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ObservationDataType] from JSON.
  factory ObservationDataType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationDataType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ObservationDataType cannot be constructed from JSON.',
      );
    }
    return ObservationDataType._(value: value, element: element);
  }

  /// Quantity
  static final ObservationDataType Quantity = ObservationDataType._(
    value: 'Quantity',
  );

  /// CodeableConcept
  static final ObservationDataType CodeableConcept = ObservationDataType._(
    value: 'CodeableConcept',
  );

  /// string
  static final ObservationDataType string = ObservationDataType._(
    value: 'string',
  );

  /// boolean
  static final ObservationDataType boolean = ObservationDataType._(
    value: 'boolean',
  );

  /// integer
  static final ObservationDataType integer = ObservationDataType._(
    value: 'integer',
  );

  /// Range
  static final ObservationDataType Range = ObservationDataType._(
    value: 'Range',
  );

  /// Ratio
  static final ObservationDataType Ratio = ObservationDataType._(
    value: 'Ratio',
  );

  /// SampledData
  static final ObservationDataType SampledData = ObservationDataType._(
    value: 'SampledData',
  );

  /// time
  static final ObservationDataType time = ObservationDataType._(
    value: 'time',
  );

  /// dateTime
  static final ObservationDataType dateTime = ObservationDataType._(
    value: 'dateTime',
  );

  /// Period
  static final ObservationDataType Period = ObservationDataType._(
    value: 'Period',
  );

  /// For instances where an Element is present but not value

  static final ObservationDataType elementOnly =
      ObservationDataType._(value: '');

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

  /// Clones the current instance
  @override
  ObservationDataType clone() => ObservationDataType._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ObservationDataType withElement(Element? newElement) {
    return ObservationDataType._(value: value, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  ObservationDataType copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ObservationDataType._(
      value: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
