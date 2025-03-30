// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Permitted data type for observation value.
class ObservationDataTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ObservationDataTypeBuilder._({
    required super.validatedValue,
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
  factory ObservationDataTypeBuilder(
    String? raw, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCodeBuilder._validateCode(raw) : null;
    return ObservationDataTypeBuilder._(
      validatedValue: validated,
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

  /// Create empty [ObservationDataTypeBuilder] with element only
  factory ObservationDataTypeBuilder.empty() =>
      ObservationDataTypeBuilder._(validatedValue: '');

  /// Factory constructor to create [ObservationDataTypeBuilder]
  /// from JSON.
  factory ObservationDataTypeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationDataTypeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ObservationDataTypeBuilder cannot be constructed from JSON.',
      );
    }
    return ObservationDataTypeBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// Quantity
  static ObservationDataTypeBuilder Quantity = ObservationDataTypeBuilder._(
    validatedValue: 'Quantity',
    system: 'http://hl7.org/fhir/ValueSet/permitted-data-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Quantity'.toFhirStringBuilder,
  );

  /// CodeableConcept
  static ObservationDataTypeBuilder CodeableConcept =
      ObservationDataTypeBuilder._(
    validatedValue: 'CodeableConcept',
    system: 'http://hl7.org/fhir/ValueSet/permitted-data-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CodeableConcept'.toFhirStringBuilder,
  );

  /// string
  static ObservationDataTypeBuilder string = ObservationDataTypeBuilder._(
    validatedValue: 'string',
    system: 'http://hl7.org/fhir/ValueSet/permitted-data-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'string'.toFhirStringBuilder,
  );

  /// boolean
  static ObservationDataTypeBuilder boolean = ObservationDataTypeBuilder._(
    validatedValue: 'boolean',
    system: 'http://hl7.org/fhir/ValueSet/permitted-data-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'boolean'.toFhirStringBuilder,
  );

  /// integer
  static ObservationDataTypeBuilder integer = ObservationDataTypeBuilder._(
    validatedValue: 'integer',
    system: 'http://hl7.org/fhir/ValueSet/permitted-data-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'integer'.toFhirStringBuilder,
  );

  /// Range
  static ObservationDataTypeBuilder Range = ObservationDataTypeBuilder._(
    validatedValue: 'Range',
    system: 'http://hl7.org/fhir/ValueSet/permitted-data-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Range'.toFhirStringBuilder,
  );

  /// Ratio
  static ObservationDataTypeBuilder Ratio = ObservationDataTypeBuilder._(
    validatedValue: 'Ratio',
    system: 'http://hl7.org/fhir/ValueSet/permitted-data-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Ratio'.toFhirStringBuilder,
  );

  /// SampledData
  static ObservationDataTypeBuilder SampledData = ObservationDataTypeBuilder._(
    validatedValue: 'SampledData',
    system: 'http://hl7.org/fhir/ValueSet/permitted-data-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SampledData'.toFhirStringBuilder,
  );

  /// time
  static ObservationDataTypeBuilder time = ObservationDataTypeBuilder._(
    validatedValue: 'time',
    system: 'http://hl7.org/fhir/ValueSet/permitted-data-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'time'.toFhirStringBuilder,
  );

  /// dateTime
  static ObservationDataTypeBuilder dateTime = ObservationDataTypeBuilder._(
    validatedValue: 'dateTime',
    system: 'http://hl7.org/fhir/ValueSet/permitted-data-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'dateTime'.toFhirStringBuilder,
  );

  /// Period
  static ObservationDataTypeBuilder Period = ObservationDataTypeBuilder._(
    validatedValue: 'Period',
    system: 'http://hl7.org/fhir/ValueSet/permitted-data-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Period'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ObservationDataTypeBuilder elementOnly =
      ObservationDataTypeBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<ObservationDataTypeBuilder> values = [
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
  ObservationDataTypeBuilder clone() => ObservationDataTypeBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ObservationDataTypeBuilder withElement(ElementBuilder? newElement) {
    return ObservationDataTypeBuilder._(
      validatedValue: value,
      element: newElement,
    );
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
  ObservationDataTypeBuilder copyWith({
    String? newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ObservationDataTypeBuilder._(
      validatedValue: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
