part of '../primitive_types.dart';

/// Actual enum for AssertionOperatorType
enum AssertionOperatorTypeBuilderEnum {
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
      case AssertionOperatorTypeBuilderEnum.equals_:
        return 'equals';
      case AssertionOperatorTypeBuilderEnum.notEquals:
        return 'notEquals';
      case AssertionOperatorTypeBuilderEnum.in_:
        return 'in';
      case AssertionOperatorTypeBuilderEnum.notIn:
        return 'notIn';
      case AssertionOperatorTypeBuilderEnum.greaterThan:
        return 'greaterThan';
      case AssertionOperatorTypeBuilderEnum.lessThan:
        return 'lessThan';
      case AssertionOperatorTypeBuilderEnum.empty_:
        return 'empty';
      case AssertionOperatorTypeBuilderEnum.notEmpty:
        return 'notEmpty';
      case AssertionOperatorTypeBuilderEnum.contains_:
        return 'contains';
      case AssertionOperatorTypeBuilderEnum.notContains:
        return 'notContains';
      case AssertionOperatorTypeBuilderEnum.eval:
        return 'eval';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AssertionOperatorTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return AssertionOperatorTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AssertionOperatorTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'equals':
        return AssertionOperatorTypeBuilderEnum.equals_;
      case 'notEquals':
        return AssertionOperatorTypeBuilderEnum.notEquals;
      case 'in':
        return AssertionOperatorTypeBuilderEnum.in_;
      case 'notIn':
        return AssertionOperatorTypeBuilderEnum.notIn;
      case 'greaterThan':
        return AssertionOperatorTypeBuilderEnum.greaterThan;
      case 'lessThan':
        return AssertionOperatorTypeBuilderEnum.lessThan;
      case 'empty':
        return AssertionOperatorTypeBuilderEnum.empty_;
      case 'notEmpty':
        return AssertionOperatorTypeBuilderEnum.notEmpty;
      case 'contains':
        return AssertionOperatorTypeBuilderEnum.contains_;
      case 'notContains':
        return AssertionOperatorTypeBuilderEnum.notContains;
      case 'eval':
        return AssertionOperatorTypeBuilderEnum.eval;
    }
    return null;
  }
}

/// The type of operator to use for assertion.
class AssertionOperatorTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  AssertionOperatorTypeBuilder._({
    required super.valueString,
    this.valueEnum,
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
    final valueEnum = AssertionOperatorTypeBuilderEnum.fromString(
      valueString,
    );
    return AssertionOperatorTypeBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
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

  /// Create empty [AssertionOperatorTypeBuilder]
  /// with element only
  factory AssertionOperatorTypeBuilder.empty() =>
      AssertionOperatorTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [AssertionOperatorTypeBuilder] from JSON.
  factory AssertionOperatorTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AssertionOperatorTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AssertionOperatorTypeBuilder cannot be constructed from JSON.',
      );
    }
    return AssertionOperatorTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for AssertionOperatorTypeBuilder
  final AssertionOperatorTypeBuilderEnum? valueEnum;

  /// equals
  static AssertionOperatorTypeBuilder equals_ = AssertionOperatorTypeBuilder._(
    valueString: 'equals',
    valueEnum: AssertionOperatorTypeBuilderEnum.equals_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-operator-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'equals',
    ),
  );

  /// notEquals
  static AssertionOperatorTypeBuilder notEquals =
      AssertionOperatorTypeBuilder._(
    valueString: 'notEquals',
    valueEnum: AssertionOperatorTypeBuilderEnum.notEquals,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-operator-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'notEquals',
    ),
  );

  /// in_
  static AssertionOperatorTypeBuilder in_ = AssertionOperatorTypeBuilder._(
    valueString: 'in',
    valueEnum: AssertionOperatorTypeBuilderEnum.in_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-operator-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'in',
    ),
  );

  /// notIn
  static AssertionOperatorTypeBuilder notIn = AssertionOperatorTypeBuilder._(
    valueString: 'notIn',
    valueEnum: AssertionOperatorTypeBuilderEnum.notIn,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-operator-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'notIn',
    ),
  );

  /// greaterThan
  static AssertionOperatorTypeBuilder greaterThan =
      AssertionOperatorTypeBuilder._(
    valueString: 'greaterThan',
    valueEnum: AssertionOperatorTypeBuilderEnum.greaterThan,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-operator-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'greaterThan',
    ),
  );

  /// lessThan
  static AssertionOperatorTypeBuilder lessThan = AssertionOperatorTypeBuilder._(
    valueString: 'lessThan',
    valueEnum: AssertionOperatorTypeBuilderEnum.lessThan,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-operator-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'lessThan',
    ),
  );

  /// empty_
  static AssertionOperatorTypeBuilder empty_ = AssertionOperatorTypeBuilder._(
    valueString: 'empty',
    valueEnum: AssertionOperatorTypeBuilderEnum.empty_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-operator-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'empty',
    ),
  );

  /// notEmpty
  static AssertionOperatorTypeBuilder notEmpty = AssertionOperatorTypeBuilder._(
    valueString: 'notEmpty',
    valueEnum: AssertionOperatorTypeBuilderEnum.notEmpty,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-operator-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'notEmpty',
    ),
  );

  /// contains_
  static AssertionOperatorTypeBuilder contains_ =
      AssertionOperatorTypeBuilder._(
    valueString: 'contains',
    valueEnum: AssertionOperatorTypeBuilderEnum.contains_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-operator-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'contains',
    ),
  );

  /// notContains
  static AssertionOperatorTypeBuilder notContains =
      AssertionOperatorTypeBuilder._(
    valueString: 'notContains',
    valueEnum: AssertionOperatorTypeBuilderEnum.notContains,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-operator-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'notContains',
    ),
  );

  /// eval
  static AssertionOperatorTypeBuilder eval = AssertionOperatorTypeBuilder._(
    valueString: 'eval',
    valueEnum: AssertionOperatorTypeBuilderEnum.eval,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-operator-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'evaluate',
    ),
  );

  /// For instances where an Element is present but not value
  static AssertionOperatorTypeBuilder elementOnly =
      AssertionOperatorTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

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

  /// Returns the enum value with an element attached
  AssertionOperatorTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return AssertionOperatorTypeBuilder._(
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
}
