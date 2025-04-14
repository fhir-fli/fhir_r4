// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for DetectedIssueSeverity
enum DetectedIssueSeverityBuilderEnum {
  /// high
  high,

  /// moderate
  moderate,

  /// low
  low,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case DetectedIssueSeverityBuilderEnum.high:
        return 'high';
      case DetectedIssueSeverityBuilderEnum.moderate:
        return 'moderate';
      case DetectedIssueSeverityBuilderEnum.low:
        return 'low';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DetectedIssueSeverityBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return DetectedIssueSeverityBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DetectedIssueSeverityBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'high':
        return DetectedIssueSeverityBuilderEnum.high;
      case 'moderate':
        return DetectedIssueSeverityBuilderEnum.moderate;
      case 'low':
        return DetectedIssueSeverityBuilderEnum.low;
    }
    return null;
  }
}

/// Indicates the potential degree of impact of the identified issue on the
/// patient.
class DetectedIssueSeverityBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DetectedIssueSeverityBuilder._({
    required super.valueString,
    this.valueEnum,
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
  factory DetectedIssueSeverityBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    final valueEnum = DetectedIssueSeverityBuilderEnum.fromString(
      valueString,
    );
    return DetectedIssueSeverityBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
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

  /// Create empty [DetectedIssueSeverityBuilder]
  /// with element only
  factory DetectedIssueSeverityBuilder.empty() =>
      DetectedIssueSeverityBuilder._(valueString: null);

  /// Factory constructor to create
  /// [DetectedIssueSeverityBuilder] from JSON.
  factory DetectedIssueSeverityBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DetectedIssueSeverityBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DetectedIssueSeverityBuilder cannot be constructed from JSON.',
      );
    }
    return DetectedIssueSeverityBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for DetectedIssueSeverityBuilder
  final DetectedIssueSeverityBuilderEnum? valueEnum;

  /// high
  static DetectedIssueSeverityBuilder high = DetectedIssueSeverityBuilder._(
    valueString: 'high',
    valueEnum: DetectedIssueSeverityBuilderEnum.high,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/detectedissue-severity',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'High',
    ),
  );

  /// moderate
  static DetectedIssueSeverityBuilder moderate = DetectedIssueSeverityBuilder._(
    valueString: 'moderate',
    valueEnum: DetectedIssueSeverityBuilderEnum.moderate,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/detectedissue-severity',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Moderate',
    ),
  );

  /// low
  static DetectedIssueSeverityBuilder low = DetectedIssueSeverityBuilder._(
    valueString: 'low',
    valueEnum: DetectedIssueSeverityBuilderEnum.low,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/detectedissue-severity',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Low',
    ),
  );

  /// For instances where an Element is present but not value
  static DetectedIssueSeverityBuilder elementOnly =
      DetectedIssueSeverityBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<DetectedIssueSeverityBuilder> values = [
    high,
    moderate,
    low,
  ];

  /// Returns the enum value with an element attached
  DetectedIssueSeverityBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return DetectedIssueSeverityBuilder._(
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
}
