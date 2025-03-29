// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Lifecycle status of the questionnaire response.
class QuestionnaireResponseStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  QuestionnaireResponseStatusBuilder._({
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
  factory QuestionnaireResponseStatusBuilder(
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
    return QuestionnaireResponseStatusBuilder._(
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

  /// Create empty [QuestionnaireResponseStatusBuilder] with element only
  factory QuestionnaireResponseStatusBuilder.empty() =>
      QuestionnaireResponseStatusBuilder._(validatedValue: '');

  /// Factory constructor to create [QuestionnaireResponseStatusBuilder] from JSON.
  factory QuestionnaireResponseStatusBuilder.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuestionnaireResponseStatusBuilder.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'QuestionnaireResponseStatusBuilder cannot be constructed from JSON.',
      );
    }
    return QuestionnaireResponseStatusBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// in_progress
  static QuestionnaireResponseStatusBuilder in_progress =
      QuestionnaireResponseStatusBuilder._(
    validatedValue: 'in-progress',
    system: 'http://hl7.org/fhir/ValueSet/questionnaire-answers-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'In Progress'.toFhirStringBuilder,
  );

  /// completed
  static QuestionnaireResponseStatusBuilder completed =
      QuestionnaireResponseStatusBuilder._(
    validatedValue: 'completed',
    system: 'http://hl7.org/fhir/ValueSet/questionnaire-answers-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Completed'.toFhirStringBuilder,
  );

  /// amended
  static QuestionnaireResponseStatusBuilder amended =
      QuestionnaireResponseStatusBuilder._(
    validatedValue: 'amended',
    system: 'http://hl7.org/fhir/ValueSet/questionnaire-answers-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Amended'.toFhirStringBuilder,
  );

  /// entered_in_error
  static QuestionnaireResponseStatusBuilder entered_in_error =
      QuestionnaireResponseStatusBuilder._(
    validatedValue: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/questionnaire-answers-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered in Error'.toFhirStringBuilder,
  );

  /// stopped
  static QuestionnaireResponseStatusBuilder stopped =
      QuestionnaireResponseStatusBuilder._(
    validatedValue: 'stopped',
    system: 'http://hl7.org/fhir/ValueSet/questionnaire-answers-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Stopped'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static QuestionnaireResponseStatusBuilder elementOnly =
      QuestionnaireResponseStatusBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<QuestionnaireResponseStatusBuilder> values = [
    in_progress,
    completed,
    amended,
    entered_in_error,
    stopped,
  ];

  /// Clones the current instance
  @override
  QuestionnaireResponseStatusBuilder clone() =>
      QuestionnaireResponseStatusBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  QuestionnaireResponseStatusBuilder withElement(ElementBuilder? newElement) {
    return QuestionnaireResponseStatusBuilder._(
        validatedValue: value, element: newElement);
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
  QuestionnaireResponseStatusBuilder copyWith({
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
    return QuestionnaireResponseStatusBuilder._(
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
