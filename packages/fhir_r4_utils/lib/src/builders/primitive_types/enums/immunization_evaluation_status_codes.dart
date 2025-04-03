// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The value set to instantiate this attribute should be drawn from a
/// terminologically robust code system that consists of or contains
/// concepts to support describing the current status of the evaluation for
/// vaccine administration event.
class ImmunizationEvaluationStatusCodesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ImmunizationEvaluationStatusCodesBuilder._({
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
  factory ImmunizationEvaluationStatusCodesBuilder(
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
    return ImmunizationEvaluationStatusCodesBuilder._(
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

  /// Create empty [ImmunizationEvaluationStatusCodesBuilder] with element only
  factory ImmunizationEvaluationStatusCodesBuilder.empty() =>
      ImmunizationEvaluationStatusCodesBuilder._(valueString: '');

  /// Factory constructor to create [ImmunizationEvaluationStatusCodesBuilder]
  /// from JSON.
  factory ImmunizationEvaluationStatusCodesBuilder.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationEvaluationStatusCodesBuilder.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ImmunizationEvaluationStatusCodesBuilder cannot be constructed from JSON.',
      );
    }
    return ImmunizationEvaluationStatusCodesBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// in_progress
  static ImmunizationEvaluationStatusCodesBuilder in_progress =
      ImmunizationEvaluationStatusCodesBuilder._(
    valueString: 'in-progress',
    system: 'http://hl7.org/fhir/ValueSet/immunization-evaluation-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'In Progress'.toFhirStringBuilder,
  );

  /// not_done
  static ImmunizationEvaluationStatusCodesBuilder not_done =
      ImmunizationEvaluationStatusCodesBuilder._(
    valueString: 'not-done',
    system: 'http://hl7.org/fhir/ValueSet/immunization-evaluation-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Not Done'.toFhirStringBuilder,
  );

  /// on_hold
  static ImmunizationEvaluationStatusCodesBuilder on_hold =
      ImmunizationEvaluationStatusCodesBuilder._(
    valueString: 'on-hold',
    system: 'http://hl7.org/fhir/ValueSet/immunization-evaluation-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'On Hold'.toFhirStringBuilder,
  );

  /// completed
  static ImmunizationEvaluationStatusCodesBuilder completed =
      ImmunizationEvaluationStatusCodesBuilder._(
    valueString: 'completed',
    system: 'http://hl7.org/fhir/ValueSet/immunization-evaluation-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Completed'.toFhirStringBuilder,
  );

  /// entered_in_error
  static ImmunizationEvaluationStatusCodesBuilder entered_in_error =
      ImmunizationEvaluationStatusCodesBuilder._(
    valueString: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/immunization-evaluation-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered in Error'.toFhirStringBuilder,
  );

  /// stopped
  static ImmunizationEvaluationStatusCodesBuilder stopped =
      ImmunizationEvaluationStatusCodesBuilder._(
    valueString: 'stopped',
    system: 'http://hl7.org/fhir/ValueSet/immunization-evaluation-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Stopped'.toFhirStringBuilder,
  );

  /// unknown
  static ImmunizationEvaluationStatusCodesBuilder unknown =
      ImmunizationEvaluationStatusCodesBuilder._(
    valueString: 'unknown',
    system: 'http://hl7.org/fhir/ValueSet/immunization-evaluation-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Unknown'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ImmunizationEvaluationStatusCodesBuilder elementOnly =
      ImmunizationEvaluationStatusCodesBuilder._(valueString: '');

  /// List of all enum-like values
  static List<ImmunizationEvaluationStatusCodesBuilder> values = [
    in_progress,
    not_done,
    on_hold,
    completed,
    entered_in_error,
    stopped,
    unknown,
  ];

  /// Clones the current instance
  @override
  ImmunizationEvaluationStatusCodesBuilder clone() =>
      ImmunizationEvaluationStatusCodesBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ImmunizationEvaluationStatusCodesBuilder withElement(
      ElementBuilder? newElement) {
    return ImmunizationEvaluationStatusCodesBuilder._(
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
  ImmunizationEvaluationStatusCodesBuilder copyWith({
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
          'Invalid input for ImmunizationEvaluationStatusCodes: $newValue');
    }
    return ImmunizationEvaluationStatusCodesBuilder._(
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
