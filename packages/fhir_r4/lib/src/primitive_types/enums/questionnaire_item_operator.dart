// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The criteria by which a question is enabled.
class QuestionnaireItemOperator extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  QuestionnaireItemOperator._({
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
  factory QuestionnaireItemOperator(
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return QuestionnaireItemOperator._(
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

  /// Create empty [QuestionnaireItemOperator] with element only
  factory QuestionnaireItemOperator.empty() =>
      QuestionnaireItemOperator._(validatedValue: '');

  /// Factory constructor to create [QuestionnaireItemOperator] from JSON.
  factory QuestionnaireItemOperator.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuestionnaireItemOperator.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'QuestionnaireItemOperator cannot be constructed from JSON.',
      );
    }
    return QuestionnaireItemOperator._(
      validatedValue: value,
      element: element,
    );
  }

  /// exists
  static final QuestionnaireItemOperator exists = QuestionnaireItemOperator._(
    validatedValue: 'exists',
    system:
        'http://hl7.org/fhir/ValueSet/questionnaire-enable-operator'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Exists'.toFhirString,
  );

  /// eq
  static final QuestionnaireItemOperator eq = QuestionnaireItemOperator._(
    validatedValue: '=',
    system:
        'http://hl7.org/fhir/ValueSet/questionnaire-enable-operator'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Equals'.toFhirString,
  );

  /// ne
  static final QuestionnaireItemOperator ne = QuestionnaireItemOperator._(
    validatedValue: '!=',
    system:
        'http://hl7.org/fhir/ValueSet/questionnaire-enable-operator'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Not Equals'.toFhirString,
  );

  /// gt
  static final QuestionnaireItemOperator gt = QuestionnaireItemOperator._(
    validatedValue: '>',
    system:
        'http://hl7.org/fhir/ValueSet/questionnaire-enable-operator'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Greater Than'.toFhirString,
  );

  /// lt
  static final QuestionnaireItemOperator lt = QuestionnaireItemOperator._(
    validatedValue: '<',
    system:
        'http://hl7.org/fhir/ValueSet/questionnaire-enable-operator'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Less Than'.toFhirString,
  );

  /// ge
  static final QuestionnaireItemOperator ge = QuestionnaireItemOperator._(
    validatedValue: '>=',
    system:
        'http://hl7.org/fhir/ValueSet/questionnaire-enable-operator'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Greater or Equals'.toFhirString,
  );

  /// le
  static final QuestionnaireItemOperator le = QuestionnaireItemOperator._(
    validatedValue: '<=',
    system:
        'http://hl7.org/fhir/ValueSet/questionnaire-enable-operator'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Less or Equals'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final QuestionnaireItemOperator elementOnly =
      QuestionnaireItemOperator._(validatedValue: '');

  /// List of all enum-like values
  static final List<QuestionnaireItemOperator> values = [
    exists,
    eq,
    ne,
    gt,
    lt,
    ge,
    le,
  ];

  /// Clones the current instance
  @override
  QuestionnaireItemOperator clone() => QuestionnaireItemOperator._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  QuestionnaireItemOperator withElement(Element? newElement) {
    return QuestionnaireItemOperator._(
        validatedValue: value, element: newElement,);
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
  QuestionnaireItemOperator copyWith({
    String? newValue,
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
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return QuestionnaireItemOperator._(
      validatedValue: newValue ?? value,
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
