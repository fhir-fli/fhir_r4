// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// How a type relates to its baseDefinition.
class TypeDerivationRuleBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  TypeDerivationRuleBuilder._({
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
  factory TypeDerivationRuleBuilder(
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
    return TypeDerivationRuleBuilder._(
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

  /// Create empty [TypeDerivationRuleBuilder] with element only
  factory TypeDerivationRuleBuilder.empty() =>
      TypeDerivationRuleBuilder._(validatedValue: '');

  /// Factory constructor to create [TypeDerivationRuleBuilder]
  /// from JSON.
  factory TypeDerivationRuleBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TypeDerivationRuleBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TypeDerivationRuleBuilder cannot be constructed from JSON.',
      );
    }
    return TypeDerivationRuleBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// specialization
  static TypeDerivationRuleBuilder specialization = TypeDerivationRuleBuilder._(
    validatedValue: 'specialization',
    system:
        'http://hl7.org/fhir/ValueSet/type-derivation-rule'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Specialization'.toFhirStringBuilder,
  );

  /// constraint
  static TypeDerivationRuleBuilder constraint = TypeDerivationRuleBuilder._(
    validatedValue: 'constraint',
    system:
        'http://hl7.org/fhir/ValueSet/type-derivation-rule'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Constraint'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static TypeDerivationRuleBuilder elementOnly =
      TypeDerivationRuleBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<TypeDerivationRuleBuilder> values = [
    specialization,
    constraint,
  ];

  /// Clones the current instance
  @override
  TypeDerivationRuleBuilder clone() => TypeDerivationRuleBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  TypeDerivationRuleBuilder withElement(ElementBuilder? newElement) {
    return TypeDerivationRuleBuilder._(
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
  TypeDerivationRuleBuilder copyWith({
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
    return TypeDerivationRuleBuilder._(
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
