// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Codes that reflect the current state of a clinical impression within
/// its overall lifecycle.
class ClinicalImpressionStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ClinicalImpressionStatusBuilder._({
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
  factory ClinicalImpressionStatusBuilder(
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
    return ClinicalImpressionStatusBuilder._(
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

  /// Create empty [ClinicalImpressionStatusBuilder] with element only
  factory ClinicalImpressionStatusBuilder.empty() =>
      ClinicalImpressionStatusBuilder._(valueString: '');

  /// Factory constructor to create [ClinicalImpressionStatusBuilder]
  /// from JSON.
  factory ClinicalImpressionStatusBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClinicalImpressionStatusBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ClinicalImpressionStatusBuilder cannot be constructed from JSON.',
      );
    }
    return ClinicalImpressionStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// preparation
  static ClinicalImpressionStatusBuilder preparation =
      ClinicalImpressionStatusBuilder._(
    valueString: 'preparation',
    system: 'http://hl7.org/fhir/ValueSet/clinicalimpression-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Preparation'.toFhirStringBuilder,
  );

  /// in_progress
  static ClinicalImpressionStatusBuilder in_progress =
      ClinicalImpressionStatusBuilder._(
    valueString: 'in-progress',
    system: 'http://hl7.org/fhir/ValueSet/clinicalimpression-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'In Progress'.toFhirStringBuilder,
  );

  /// not_done
  static ClinicalImpressionStatusBuilder not_done =
      ClinicalImpressionStatusBuilder._(
    valueString: 'not-done',
    system: 'http://hl7.org/fhir/ValueSet/clinicalimpression-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Not Done'.toFhirStringBuilder,
  );

  /// on_hold
  static ClinicalImpressionStatusBuilder on_hold =
      ClinicalImpressionStatusBuilder._(
    valueString: 'on-hold',
    system: 'http://hl7.org/fhir/ValueSet/clinicalimpression-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'On Hold'.toFhirStringBuilder,
  );

  /// stopped
  static ClinicalImpressionStatusBuilder stopped =
      ClinicalImpressionStatusBuilder._(
    valueString: 'stopped',
    system: 'http://hl7.org/fhir/ValueSet/clinicalimpression-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Stopped'.toFhirStringBuilder,
  );

  /// completed
  static ClinicalImpressionStatusBuilder completed =
      ClinicalImpressionStatusBuilder._(
    valueString: 'completed',
    system: 'http://hl7.org/fhir/ValueSet/clinicalimpression-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Completed'.toFhirStringBuilder,
  );

  /// entered_in_error
  static ClinicalImpressionStatusBuilder entered_in_error =
      ClinicalImpressionStatusBuilder._(
    valueString: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/clinicalimpression-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered in Error'.toFhirStringBuilder,
  );

  /// unknown
  static ClinicalImpressionStatusBuilder unknown =
      ClinicalImpressionStatusBuilder._(
    valueString: 'unknown',
    system: 'http://hl7.org/fhir/ValueSet/clinicalimpression-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Unknown'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ClinicalImpressionStatusBuilder elementOnly =
      ClinicalImpressionStatusBuilder._(valueString: '');

  /// List of all enum-like values
  static List<ClinicalImpressionStatusBuilder> values = [
    preparation,
    in_progress,
    not_done,
    on_hold,
    stopped,
    completed,
    entered_in_error,
    unknown,
  ];

  /// Clones the current instance
  @override
  ClinicalImpressionStatusBuilder clone() => ClinicalImpressionStatusBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ClinicalImpressionStatusBuilder withElement(ElementBuilder? newElement) {
    return ClinicalImpressionStatusBuilder._(
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
  ClinicalImpressionStatusBuilder copyWith({
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
      throw ArgumentError(
          'Invalid input for ClinicalImpressionStatus: $newValue',);
    }
    return ClinicalImpressionStatusBuilder._(
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
