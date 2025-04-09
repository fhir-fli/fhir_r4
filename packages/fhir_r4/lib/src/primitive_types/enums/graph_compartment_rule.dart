// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for GraphCompartmentRule
enum GraphCompartmentRuleEnum {
  /// identical
  identical_,

  /// matching
  matching,

  /// different
  different,

  /// custom
  custom,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case GraphCompartmentRuleEnum.identical_:
        return 'identical';
      case GraphCompartmentRuleEnum.matching:
        return 'matching';
      case GraphCompartmentRuleEnum.different:
        return 'different';
      case GraphCompartmentRuleEnum.custom:
        return 'custom';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static GraphCompartmentRuleEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return GraphCompartmentRuleEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static GraphCompartmentRuleEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'identical':
        return GraphCompartmentRuleEnum.identical_;
      case 'matching':
        return GraphCompartmentRuleEnum.matching;
      case 'different':
        return GraphCompartmentRuleEnum.different;
      case 'custom':
        return GraphCompartmentRuleEnum.custom;
    }
    return null;
  }
}

/// How a compartment must be linked.
class GraphCompartmentRule extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const GraphCompartmentRule._({
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
  factory GraphCompartmentRule(
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
    final valueEnum = GraphCompartmentRuleEnum.fromString(valueString);
    return GraphCompartmentRule._(
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

  /// Factory constructor to create [GraphCompartmentRule]
  /// from JSON.
  factory GraphCompartmentRule.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = GraphCompartmentRuleEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GraphCompartmentRule._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GraphCompartmentRule cannot be constructed from JSON.',
      );
    }
    return GraphCompartmentRule._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for GraphCompartmentRule
  final GraphCompartmentRuleEnum? valueEnum;

  /// identical_
  static const GraphCompartmentRule identical_ = GraphCompartmentRule._(
    valueString: 'identical',
    valueEnum: GraphCompartmentRuleEnum.identical_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/graph-compartment-rule',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Identical',
    ),
  );

  /// matching
  static const GraphCompartmentRule matching = GraphCompartmentRule._(
    valueString: 'matching',
    valueEnum: GraphCompartmentRuleEnum.matching,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/graph-compartment-rule',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Matching',
    ),
  );

  /// different
  static const GraphCompartmentRule different = GraphCompartmentRule._(
    valueString: 'different',
    valueEnum: GraphCompartmentRuleEnum.different,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/graph-compartment-rule',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Different',
    ),
  );

  /// custom
  static const GraphCompartmentRule custom = GraphCompartmentRule._(
    valueString: 'custom',
    valueEnum: GraphCompartmentRuleEnum.custom,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/graph-compartment-rule',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Custom',
    ),
  );

  /// List of all enum-like values
  static final List<GraphCompartmentRule> values = [
    identical_,
    matching,
    different,
    custom,
  ];

  /// Returns the enum value with an element attached
  GraphCompartmentRule withElement(Element? newElement) {
    return GraphCompartmentRule._(
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
  GraphCompartmentRule clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  GraphCompartmentRuleCopyWithImpl<GraphCompartmentRule> get copyWith =>
      GraphCompartmentRuleCopyWithImpl<GraphCompartmentRule>(
        this,
        (v) => v as GraphCompartmentRule,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class GraphCompartmentRuleCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  GraphCompartmentRuleCopyWithImpl(super._value, super._then);

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
      GraphCompartmentRule(
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
