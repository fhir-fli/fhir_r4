// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Indicates the potential degree of impact of the identified issue on the
/// patient.
class DetectedIssueSeverityBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DetectedIssueSeverityBuilder._({
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
    return DetectedIssueSeverityBuilder._(
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

  /// Create empty [DetectedIssueSeverityBuilder] with element only
  factory DetectedIssueSeverityBuilder.empty() =>
      DetectedIssueSeverityBuilder._(valueString: '');

  /// Factory constructor to create [DetectedIssueSeverityBuilder]
  /// from JSON.
  factory DetectedIssueSeverityBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DetectedIssueSeverityBuilder.elementOnly.withElement(element);
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

  /// high
  static DetectedIssueSeverityBuilder high = DetectedIssueSeverityBuilder._(
    valueString: 'high',
    system:
        'http://hl7.org/fhir/ValueSet/detectedissue-severity'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'High'.toFhirStringBuilder,
  );

  /// moderate
  static DetectedIssueSeverityBuilder moderate = DetectedIssueSeverityBuilder._(
    valueString: 'moderate',
    system:
        'http://hl7.org/fhir/ValueSet/detectedissue-severity'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Moderate'.toFhirStringBuilder,
  );

  /// low
  static DetectedIssueSeverityBuilder low = DetectedIssueSeverityBuilder._(
    valueString: 'low',
    system:
        'http://hl7.org/fhir/ValueSet/detectedissue-severity'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Low'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static DetectedIssueSeverityBuilder elementOnly =
      DetectedIssueSeverityBuilder._(valueString: '');

  /// List of all enum-like values
  static List<DetectedIssueSeverityBuilder> values = [
    high,
    moderate,
    low,
  ];

  /// Clones the current instance
  @override
  DetectedIssueSeverityBuilder clone() => DetectedIssueSeverityBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  DetectedIssueSeverityBuilder withElement(ElementBuilder? newElement) {
    return DetectedIssueSeverityBuilder._(
        valueString: valueString, element: newElement,);
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
  DetectedIssueSeverityBuilder copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError('Invalid input for DetectedIssueSeverity: $newValue');
    }
    return DetectedIssueSeverityBuilder._(
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
