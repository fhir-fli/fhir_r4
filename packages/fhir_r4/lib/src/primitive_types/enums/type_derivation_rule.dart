part of '../primitive_types.dart';

/// Actual enum for TypeDerivationRule
enum TypeDerivationRuleEnum {
  /// specialization
  specialization,

  /// constraint
  constraint,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case TypeDerivationRuleEnum.specialization:
        return 'specialization';
      case TypeDerivationRuleEnum.constraint:
        return 'constraint';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static TypeDerivationRuleEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return TypeDerivationRuleEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static TypeDerivationRuleEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'specialization':
        return TypeDerivationRuleEnum.specialization;
      case 'constraint':
        return TypeDerivationRuleEnum.constraint;
    }
    return null;
  }
}

/// How a type relates to its baseDefinition.
class TypeDerivationRule extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const TypeDerivationRule._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory TypeDerivationRule(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = TypeDerivationRuleEnum.fromString(valueString);
    return TypeDerivationRule._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [TypeDerivationRule]
  /// from JSON.
  factory TypeDerivationRule.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = TypeDerivationRuleEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TypeDerivationRule._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TypeDerivationRule cannot be constructed from JSON.',
      );
    }
    return TypeDerivationRule._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for TypeDerivationRule
  final TypeDerivationRuleEnum? valueEnum;

  /// specialization
  static const TypeDerivationRule specialization = TypeDerivationRule._(
    valueString: 'specialization',
    valueEnum: TypeDerivationRuleEnum.specialization,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-derivation-rule',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Specialization',
    ),
  );

  /// constraint
  static const TypeDerivationRule constraint = TypeDerivationRule._(
    valueString: 'constraint',
    valueEnum: TypeDerivationRuleEnum.constraint,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-derivation-rule',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Constraint',
    ),
  );

  /// List of all enum-like values
  static final List<TypeDerivationRule> values = [
    specialization,
    constraint,
  ];

  /// Returns the enum value with an element attached
  TypeDerivationRule withElement(Element? newElement) {
    return TypeDerivationRule._(
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

  @override
  TypeDerivationRule clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  TypeDerivationRuleCopyWithImpl<TypeDerivationRule> get copyWith =>
      TypeDerivationRuleCopyWithImpl<TypeDerivationRule>(
        this,
        (v) => v as TypeDerivationRule,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class TypeDerivationRuleCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  TypeDerivationRuleCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      TypeDerivationRule(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
