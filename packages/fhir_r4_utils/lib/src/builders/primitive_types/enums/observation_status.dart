// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Codes providing the status of an observation.
class ObservationStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ObservationStatusBuilder._({
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
  factory ObservationStatusBuilder(
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
    return ObservationStatusBuilder._(
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

  /// Create empty [ObservationStatusBuilder] with element only
  factory ObservationStatusBuilder.empty() =>
      ObservationStatusBuilder._(valueString: '');

  /// Factory constructor to create [ObservationStatusBuilder]
  /// from JSON.
  factory ObservationStatusBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationStatusBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ObservationStatusBuilder cannot be constructed from JSON.',
      );
    }
    return ObservationStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// registered
  static ObservationStatusBuilder registered = ObservationStatusBuilder._(
    valueString: 'registered',
    system: 'http://hl7.org/fhir/ValueSet/observation-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Registered'.toFhirStringBuilder,
  );

  /// preliminary
  static ObservationStatusBuilder preliminary = ObservationStatusBuilder._(
    valueString: 'preliminary',
    system: 'http://hl7.org/fhir/ValueSet/observation-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Preliminary'.toFhirStringBuilder,
  );

  /// final_
  static ObservationStatusBuilder final_ = ObservationStatusBuilder._(
    valueString: 'final',
    system: 'http://hl7.org/fhir/ValueSet/observation-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Final'.toFhirStringBuilder,
  );

  /// amended
  static ObservationStatusBuilder amended = ObservationStatusBuilder._(
    valueString: 'amended',
    system: 'http://hl7.org/fhir/ValueSet/observation-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Amended'.toFhirStringBuilder,
  );

  /// corrected
  static ObservationStatusBuilder corrected = ObservationStatusBuilder._(
    valueString: 'corrected',
    system: 'http://hl7.org/fhir/ValueSet/observation-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Corrected'.toFhirStringBuilder,
  );

  /// cancelled
  static ObservationStatusBuilder cancelled = ObservationStatusBuilder._(
    valueString: 'cancelled',
    system: 'http://hl7.org/fhir/ValueSet/observation-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Cancelled'.toFhirStringBuilder,
  );

  /// entered_in_error
  static ObservationStatusBuilder entered_in_error = ObservationStatusBuilder._(
    valueString: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/observation-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered in Error'.toFhirStringBuilder,
  );

  /// unknown
  static ObservationStatusBuilder unknown = ObservationStatusBuilder._(
    valueString: 'unknown',
    system: 'http://hl7.org/fhir/ValueSet/observation-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Unknown'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ObservationStatusBuilder elementOnly =
      ObservationStatusBuilder._(valueString: '');

  /// List of all enum-like values
  static List<ObservationStatusBuilder> values = [
    registered,
    preliminary,
    final_,
    amended,
    corrected,
    cancelled,
    entered_in_error,
    unknown,
  ];

  /// Clones the current instance
  @override
  ObservationStatusBuilder clone() => ObservationStatusBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ObservationStatusBuilder withElement(ElementBuilder? newElement) {
    return ObservationStatusBuilder._(
        valueString: valueString, element: newElement);
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
  ObservationStatusBuilder copyWith({
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
      throw ArgumentError('Invalid input for ObservationStatus: $newValue');
    }
    return ObservationStatusBuilder._(
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
