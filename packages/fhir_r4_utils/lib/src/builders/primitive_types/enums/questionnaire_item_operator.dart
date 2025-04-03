// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The criteria by which a question is enabled.
class QuestionnaireItemOperatorBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  QuestionnaireItemOperatorBuilder._({
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
  factory QuestionnaireItemOperatorBuilder(
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
    return QuestionnaireItemOperatorBuilder._(
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

  /// Create empty [QuestionnaireItemOperatorBuilder] with element only
  factory QuestionnaireItemOperatorBuilder.empty() =>
      QuestionnaireItemOperatorBuilder._(valueString: '');

  /// Factory constructor to create [QuestionnaireItemOperatorBuilder]
  /// from JSON.
  factory QuestionnaireItemOperatorBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuestionnaireItemOperatorBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'QuestionnaireItemOperatorBuilder cannot be constructed from JSON.',
      );
    }
    return QuestionnaireItemOperatorBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// exists
  static QuestionnaireItemOperatorBuilder exists =
      QuestionnaireItemOperatorBuilder._(
    valueString: 'exists',
    system: 'http://hl7.org/fhir/ValueSet/questionnaire-enable-operator'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Exists'.toFhirStringBuilder,
  );

  /// eq
  static QuestionnaireItemOperatorBuilder eq =
      QuestionnaireItemOperatorBuilder._(
    valueString: '=',
    system: 'http://hl7.org/fhir/ValueSet/questionnaire-enable-operator'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Equals'.toFhirStringBuilder,
  );

  /// ne
  static QuestionnaireItemOperatorBuilder ne =
      QuestionnaireItemOperatorBuilder._(
    valueString: '!=',
    system: 'http://hl7.org/fhir/ValueSet/questionnaire-enable-operator'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Not Equals'.toFhirStringBuilder,
  );

  /// gt
  static QuestionnaireItemOperatorBuilder gt =
      QuestionnaireItemOperatorBuilder._(
    valueString: '>',
    system: 'http://hl7.org/fhir/ValueSet/questionnaire-enable-operator'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Greater Than'.toFhirStringBuilder,
  );

  /// lt
  static QuestionnaireItemOperatorBuilder lt =
      QuestionnaireItemOperatorBuilder._(
    valueString: '<',
    system: 'http://hl7.org/fhir/ValueSet/questionnaire-enable-operator'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Less Than'.toFhirStringBuilder,
  );

  /// ge
  static QuestionnaireItemOperatorBuilder ge =
      QuestionnaireItemOperatorBuilder._(
    valueString: '>=',
    system: 'http://hl7.org/fhir/ValueSet/questionnaire-enable-operator'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Greater or Equals'.toFhirStringBuilder,
  );

  /// le
  static QuestionnaireItemOperatorBuilder le =
      QuestionnaireItemOperatorBuilder._(
    valueString: '<=',
    system: 'http://hl7.org/fhir/ValueSet/questionnaire-enable-operator'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Less or Equals'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static QuestionnaireItemOperatorBuilder elementOnly =
      QuestionnaireItemOperatorBuilder._(valueString: '');

  /// List of all enum-like values
  static List<QuestionnaireItemOperatorBuilder> values = [
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
  QuestionnaireItemOperatorBuilder clone() =>
      QuestionnaireItemOperatorBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  QuestionnaireItemOperatorBuilder withElement(ElementBuilder? newElement) {
    return QuestionnaireItemOperatorBuilder._(
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
  QuestionnaireItemOperatorBuilder copyWith({
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
          'Invalid input for QuestionnaireItemOperator: $newValue');
    }
    return QuestionnaireItemOperatorBuilder._(
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
