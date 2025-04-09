// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for AssertionOperatorType
enum AssertionOperatorTypeEnum {
  /// equals
  equals_,

  /// notEquals
  notEquals,

  /// in
  in_,

  /// notIn
  notIn,

  /// greaterThan
  greaterThan,

  /// lessThan
  lessThan,

  /// empty
  empty_,

  /// notEmpty
  notEmpty,

  /// contains
  contains_,

  /// notContains
  notContains,

  /// eval
  eval,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case AssertionOperatorTypeEnum.equals_:
        return 'equals';
      case AssertionOperatorTypeEnum.notEquals:
        return 'notEquals';
      case AssertionOperatorTypeEnum.in_:
        return 'in';
      case AssertionOperatorTypeEnum.notIn:
        return 'notIn';
      case AssertionOperatorTypeEnum.greaterThan:
        return 'greaterThan';
      case AssertionOperatorTypeEnum.lessThan:
        return 'lessThan';
      case AssertionOperatorTypeEnum.empty_:
        return 'empty';
      case AssertionOperatorTypeEnum.notEmpty:
        return 'notEmpty';
      case AssertionOperatorTypeEnum.contains_:
        return 'contains';
      case AssertionOperatorTypeEnum.notContains:
        return 'notContains';
      case AssertionOperatorTypeEnum.eval:
        return 'eval';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AssertionOperatorTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return AssertionOperatorTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AssertionOperatorTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'equals':
        return AssertionOperatorTypeEnum.equals_;
      case 'notEquals':
        return AssertionOperatorTypeEnum.notEquals;
      case 'in':
        return AssertionOperatorTypeEnum.in_;
      case 'notIn':
        return AssertionOperatorTypeEnum.notIn;
      case 'greaterThan':
        return AssertionOperatorTypeEnum.greaterThan;
      case 'lessThan':
        return AssertionOperatorTypeEnum.lessThan;
      case 'empty':
        return AssertionOperatorTypeEnum.empty_;
      case 'notEmpty':
        return AssertionOperatorTypeEnum.notEmpty;
      case 'contains':
        return AssertionOperatorTypeEnum.contains_;
      case 'notContains':
        return AssertionOperatorTypeEnum.notContains;
      case 'eval':
        return AssertionOperatorTypeEnum.eval;
    }
    return null;
  }
}

/// The type of operator to use for assertion.
class AssertionOperatorType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const AssertionOperatorType._({
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
  factory AssertionOperatorType(
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
    final valueEnum = AssertionOperatorTypeEnum.fromString(valueString);
    return AssertionOperatorType._(
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

  /// Factory constructor to create [AssertionOperatorType]
  /// from JSON.
  factory AssertionOperatorType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = AssertionOperatorTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AssertionOperatorType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AssertionOperatorType cannot be constructed from JSON.',
      );
    }
    return AssertionOperatorType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for AssertionOperatorType
  final AssertionOperatorTypeEnum? valueEnum;

  /// equals
  static const AssertionOperatorType equals_ = AssertionOperatorType._(
    valueString: 'equals',
    valueEnum: AssertionOperatorTypeEnum.equals_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-operator-codes',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'equals',
    ),
  );

  /// notEquals
  static const AssertionOperatorType notEquals = AssertionOperatorType._(
    valueString: 'notEquals',
    valueEnum: AssertionOperatorTypeEnum.notEquals,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-operator-codes',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'notEquals',
    ),
  );

  /// in_
  static const AssertionOperatorType in_ = AssertionOperatorType._(
    valueString: 'in',
    valueEnum: AssertionOperatorTypeEnum.in_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-operator-codes',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'in',
    ),
  );

  /// notIn
  static const AssertionOperatorType notIn = AssertionOperatorType._(
    valueString: 'notIn',
    valueEnum: AssertionOperatorTypeEnum.notIn,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-operator-codes',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'notIn',
    ),
  );

  /// greaterThan
  static const AssertionOperatorType greaterThan = AssertionOperatorType._(
    valueString: 'greaterThan',
    valueEnum: AssertionOperatorTypeEnum.greaterThan,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-operator-codes',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'greaterThan',
    ),
  );

  /// lessThan
  static const AssertionOperatorType lessThan = AssertionOperatorType._(
    valueString: 'lessThan',
    valueEnum: AssertionOperatorTypeEnum.lessThan,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-operator-codes',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'lessThan',
    ),
  );

  /// empty_
  static const AssertionOperatorType empty_ = AssertionOperatorType._(
    valueString: 'empty',
    valueEnum: AssertionOperatorTypeEnum.empty_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-operator-codes',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'empty',
    ),
  );

  /// notEmpty
  static const AssertionOperatorType notEmpty = AssertionOperatorType._(
    valueString: 'notEmpty',
    valueEnum: AssertionOperatorTypeEnum.notEmpty,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-operator-codes',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'notEmpty',
    ),
  );

  /// contains_
  static const AssertionOperatorType contains_ = AssertionOperatorType._(
    valueString: 'contains',
    valueEnum: AssertionOperatorTypeEnum.contains_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-operator-codes',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'contains',
    ),
  );

  /// notContains
  static const AssertionOperatorType notContains = AssertionOperatorType._(
    valueString: 'notContains',
    valueEnum: AssertionOperatorTypeEnum.notContains,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-operator-codes',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'notContains',
    ),
  );

  /// eval
  static const AssertionOperatorType eval = AssertionOperatorType._(
    valueString: 'eval',
    valueEnum: AssertionOperatorTypeEnum.eval,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-operator-codes',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'evaluate',
    ),
  );

  /// List of all enum-like values
  static final List<AssertionOperatorType> values = [
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

  /// Returns the enum value with an element attached
  AssertionOperatorType withElement(Element? newElement) {
    return AssertionOperatorType._(
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
  AssertionOperatorType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  AssertionOperatorTypeCopyWithImpl<AssertionOperatorType> get copyWith =>
      AssertionOperatorTypeCopyWithImpl<AssertionOperatorType>(
        this,
        (v) => v as AssertionOperatorType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class AssertionOperatorTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  AssertionOperatorTypeCopyWithImpl(super._value, super._then);

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
      AssertionOperatorType(
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
