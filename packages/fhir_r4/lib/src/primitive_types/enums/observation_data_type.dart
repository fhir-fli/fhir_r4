// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Permitted data type for observation value.
class ObservationDataType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ObservationDataType._({
    required super.valueString,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory ObservationDataType(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return ObservationDataType._(
      valueString: valueString,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [ObservationDataType] with element only
  factory ObservationDataType.empty() => ObservationDataType._(valueString: '');

  /// Factory constructor to create [ObservationDataType]
  /// from JSON.
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
    return ObservationDataType._(
      valueString: value,
      element: element,
    );
  }

  /// Quantity
  static final ObservationDataType Quantity = ObservationDataType._(
    valueString: 'Quantity',
    system: 'http://hl7.org/fhir/ValueSet/permitted-data-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Quantity'.toFhirString,
  );

  /// CodeableConcept
  static final ObservationDataType CodeableConcept = ObservationDataType._(
    valueString: 'CodeableConcept',
    system: 'http://hl7.org/fhir/ValueSet/permitted-data-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CodeableConcept'.toFhirString,
  );

  /// string
  static final ObservationDataType string = ObservationDataType._(
    valueString: 'string',
    system: 'http://hl7.org/fhir/ValueSet/permitted-data-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'string'.toFhirString,
  );

  /// boolean
  static final ObservationDataType boolean = ObservationDataType._(
    valueString: 'boolean',
    system: 'http://hl7.org/fhir/ValueSet/permitted-data-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'boolean'.toFhirString,
  );

  /// integer
  static final ObservationDataType integer = ObservationDataType._(
    valueString: 'integer',
    system: 'http://hl7.org/fhir/ValueSet/permitted-data-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'integer'.toFhirString,
  );

  /// Range
  static final ObservationDataType Range = ObservationDataType._(
    valueString: 'Range',
    system: 'http://hl7.org/fhir/ValueSet/permitted-data-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Range'.toFhirString,
  );

  /// Ratio
  static final ObservationDataType Ratio = ObservationDataType._(
    valueString: 'Ratio',
    system: 'http://hl7.org/fhir/ValueSet/permitted-data-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Ratio'.toFhirString,
  );

  /// SampledData
  static final ObservationDataType SampledData = ObservationDataType._(
    valueString: 'SampledData',
    system: 'http://hl7.org/fhir/ValueSet/permitted-data-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SampledData'.toFhirString,
  );

  /// time
  static final ObservationDataType time = ObservationDataType._(
    valueString: 'time',
    system: 'http://hl7.org/fhir/ValueSet/permitted-data-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'time'.toFhirString,
  );

  /// dateTime
  static final ObservationDataType dateTime = ObservationDataType._(
    valueString: 'dateTime',
    system: 'http://hl7.org/fhir/ValueSet/permitted-data-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'dateTime'.toFhirString,
  );

  /// Period
  static final ObservationDataType Period = ObservationDataType._(
    valueString: 'Period',
    system: 'http://hl7.org/fhir/ValueSet/permitted-data-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Period'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ObservationDataType elementOnly =
      ObservationDataType._(valueString: '');

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
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ObservationDataType withElement(Element? newElement) {
    return ObservationDataType._(
      valueString: valueString,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';

  /// Creates a modified copy with updated properties.
  @override
  ObservationDataType copyWith({
    dynamic newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if (newValue is! String?) {
      throw ArgumentError(
        'Invalid input for ObservationDataType: $newValue',
      );
    }
    return ObservationDataType._(
      valueString: newValue ?? valueString,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}
