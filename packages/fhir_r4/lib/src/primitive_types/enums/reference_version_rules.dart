part of '../primitive_types.dart';

/// Actual enum for ReferenceVersionRules
enum ReferenceVersionRulesEnum {
  /// either
  either,

  /// independent
  independent,

  /// specific
  specific,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ReferenceVersionRulesEnum.either:
        return 'either';
      case ReferenceVersionRulesEnum.independent:
        return 'independent';
      case ReferenceVersionRulesEnum.specific:
        return 'specific';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ReferenceVersionRulesEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ReferenceVersionRulesEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ReferenceVersionRulesEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'either':
        return ReferenceVersionRulesEnum.either;
      case 'independent':
        return ReferenceVersionRulesEnum.independent;
      case 'specific':
        return ReferenceVersionRulesEnum.specific;
    }
    return null;
  }
}

/// Whether a reference needs to be version specific or version
/// independent, or whether either can be used.
class ReferenceVersionRules extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ReferenceVersionRules._({
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
  factory ReferenceVersionRules(
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
    final valueEnum = ReferenceVersionRulesEnum.fromString(valueString);
    return ReferenceVersionRules._(
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

  /// Factory constructor to create [ReferenceVersionRules]
  /// from JSON.
  factory ReferenceVersionRules.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ReferenceVersionRulesEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ReferenceVersionRules._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ReferenceVersionRules cannot be constructed from JSON.',
      );
    }
    return ReferenceVersionRules._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ReferenceVersionRules
  final ReferenceVersionRulesEnum? valueEnum;

  /// either
  static const ReferenceVersionRules either = ReferenceVersionRules._(
    valueString: 'either',
    valueEnum: ReferenceVersionRulesEnum.either,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/reference-version-rules',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Either Specific or independent',
    ),
  );

  /// independent
  static const ReferenceVersionRules independent = ReferenceVersionRules._(
    valueString: 'independent',
    valueEnum: ReferenceVersionRulesEnum.independent,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/reference-version-rules',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Version independent',
    ),
  );

  /// specific
  static const ReferenceVersionRules specific = ReferenceVersionRules._(
    valueString: 'specific',
    valueEnum: ReferenceVersionRulesEnum.specific,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/reference-version-rules',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Version Specific',
    ),
  );

  /// List of all enum-like values
  static final List<ReferenceVersionRules> values = [
    either,
    independent,
    specific,
  ];

  /// Returns the enum value with an element attached
  ReferenceVersionRules withElement(Element? newElement) {
    return ReferenceVersionRules._(
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
  ReferenceVersionRules clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ReferenceVersionRulesCopyWithImpl<ReferenceVersionRules> get copyWith =>
      ReferenceVersionRulesCopyWithImpl<ReferenceVersionRules>(
        this,
        (v) => v as ReferenceVersionRules,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ReferenceVersionRulesCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ReferenceVersionRulesCopyWithImpl(super._value, super._then);

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
      ReferenceVersionRules(
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
