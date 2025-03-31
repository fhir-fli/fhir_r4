// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The type of operator to use for assertion.
class AssertionOperatorTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  AssertionOperatorTypeBuilder._({
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
  factory AssertionOperatorTypeBuilder(
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
    return AssertionOperatorTypeBuilder._(
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

  /// Create empty [AssertionOperatorTypeBuilder] with element only
  factory AssertionOperatorTypeBuilder.empty() =>
      AssertionOperatorTypeBuilder._(validatedValue: '');

  /// Factory constructor to create [AssertionOperatorTypeBuilder]
  /// from JSON.
  factory AssertionOperatorTypeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AssertionOperatorTypeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AssertionOperatorTypeBuilder cannot be constructed from JSON.',
      );
    }
    return AssertionOperatorTypeBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// equals
  static AssertionOperatorTypeBuilder equals_ = AssertionOperatorTypeBuilder._(
    validatedValue: 'equals',
    system:
        'http://hl7.org/fhir/ValueSet/assert-operator-codes'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'equals'.toFhirStringBuilder,
  );

  /// notEquals
  static AssertionOperatorTypeBuilder notEquals =
      AssertionOperatorTypeBuilder._(
    validatedValue: 'notEquals',
    system:
        'http://hl7.org/fhir/ValueSet/assert-operator-codes'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'notEquals'.toFhirStringBuilder,
  );

  /// in_
  static AssertionOperatorTypeBuilder in_ = AssertionOperatorTypeBuilder._(
    validatedValue: 'in',
    system:
        'http://hl7.org/fhir/ValueSet/assert-operator-codes'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'in'.toFhirStringBuilder,
  );

  /// notIn
  static AssertionOperatorTypeBuilder notIn = AssertionOperatorTypeBuilder._(
    validatedValue: 'notIn',
    system:
        'http://hl7.org/fhir/ValueSet/assert-operator-codes'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'notIn'.toFhirStringBuilder,
  );

  /// greaterThan
  static AssertionOperatorTypeBuilder greaterThan =
      AssertionOperatorTypeBuilder._(
    validatedValue: 'greaterThan',
    system:
        'http://hl7.org/fhir/ValueSet/assert-operator-codes'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'greaterThan'.toFhirStringBuilder,
  );

  /// lessThan
  static AssertionOperatorTypeBuilder lessThan = AssertionOperatorTypeBuilder._(
    validatedValue: 'lessThan',
    system:
        'http://hl7.org/fhir/ValueSet/assert-operator-codes'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'lessThan'.toFhirStringBuilder,
  );

  /// empty_
  static AssertionOperatorTypeBuilder empty_ = AssertionOperatorTypeBuilder._(
    validatedValue: 'empty',
    system:
        'http://hl7.org/fhir/ValueSet/assert-operator-codes'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'empty'.toFhirStringBuilder,
  );

  /// notEmpty
  static AssertionOperatorTypeBuilder notEmpty = AssertionOperatorTypeBuilder._(
    validatedValue: 'notEmpty',
    system:
        'http://hl7.org/fhir/ValueSet/assert-operator-codes'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'notEmpty'.toFhirStringBuilder,
  );

  /// contains_
  static AssertionOperatorTypeBuilder contains_ =
      AssertionOperatorTypeBuilder._(
    validatedValue: 'contains',
    system:
        'http://hl7.org/fhir/ValueSet/assert-operator-codes'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'contains'.toFhirStringBuilder,
  );

  /// notContains
  static AssertionOperatorTypeBuilder notContains =
      AssertionOperatorTypeBuilder._(
    validatedValue: 'notContains',
    system:
        'http://hl7.org/fhir/ValueSet/assert-operator-codes'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'notContains'.toFhirStringBuilder,
  );

  /// eval
  static AssertionOperatorTypeBuilder eval = AssertionOperatorTypeBuilder._(
    validatedValue: 'eval',
    system:
        'http://hl7.org/fhir/ValueSet/assert-operator-codes'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'evaluate'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static AssertionOperatorTypeBuilder elementOnly =
      AssertionOperatorTypeBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<AssertionOperatorTypeBuilder> values = [
    equals_,
    notEquals,
    in_,
    notIn,
    greaterThan,
    lessThan,
    empty_,
    notEmpty,
    contains_,
    notContains,
    eval,
  ];

  /// Clones the current instance
  @override
  AssertionOperatorTypeBuilder clone() => AssertionOperatorTypeBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  AssertionOperatorTypeBuilder withElement(ElementBuilder? newElement) {
    return AssertionOperatorTypeBuilder._(
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
  AssertionOperatorTypeBuilder copyWith({
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
    return AssertionOperatorTypeBuilder._(
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
