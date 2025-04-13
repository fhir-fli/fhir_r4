// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for SubscriptionSearchModifier
enum SubscriptionSearchModifierBuilderEnum {
  /// =
  eq,

  /// ne
  ne,

  /// gt
  gt,

  /// lt
  lt,

  /// ge
  ge,

  /// le
  le,

  /// sa
  sa,

  /// eb
  eb,

  /// ap
  ap,

  /// above
  above,

  /// below
  below,

  /// in
  in_,

  /// not-in
  notIn,

  /// of-type
  ofType,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case SubscriptionSearchModifierBuilderEnum.eq:
        return '=';
      case SubscriptionSearchModifierBuilderEnum.ne:
        return 'ne';
      case SubscriptionSearchModifierBuilderEnum.gt:
        return 'gt';
      case SubscriptionSearchModifierBuilderEnum.lt:
        return 'lt';
      case SubscriptionSearchModifierBuilderEnum.ge:
        return 'ge';
      case SubscriptionSearchModifierBuilderEnum.le:
        return 'le';
      case SubscriptionSearchModifierBuilderEnum.sa:
        return 'sa';
      case SubscriptionSearchModifierBuilderEnum.eb:
        return 'eb';
      case SubscriptionSearchModifierBuilderEnum.ap:
        return 'ap';
      case SubscriptionSearchModifierBuilderEnum.above:
        return 'above';
      case SubscriptionSearchModifierBuilderEnum.below:
        return 'below';
      case SubscriptionSearchModifierBuilderEnum.in_:
        return 'in';
      case SubscriptionSearchModifierBuilderEnum.notIn:
        return 'not-in';
      case SubscriptionSearchModifierBuilderEnum.ofType:
        return 'of-type';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SubscriptionSearchModifierBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return SubscriptionSearchModifierBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SubscriptionSearchModifierBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case '=':
        return SubscriptionSearchModifierBuilderEnum.eq;
      case 'ne':
        return SubscriptionSearchModifierBuilderEnum.ne;
      case 'gt':
        return SubscriptionSearchModifierBuilderEnum.gt;
      case 'lt':
        return SubscriptionSearchModifierBuilderEnum.lt;
      case 'ge':
        return SubscriptionSearchModifierBuilderEnum.ge;
      case 'le':
        return SubscriptionSearchModifierBuilderEnum.le;
      case 'sa':
        return SubscriptionSearchModifierBuilderEnum.sa;
      case 'eb':
        return SubscriptionSearchModifierBuilderEnum.eb;
      case 'ap':
        return SubscriptionSearchModifierBuilderEnum.ap;
      case 'above':
        return SubscriptionSearchModifierBuilderEnum.above;
      case 'below':
        return SubscriptionSearchModifierBuilderEnum.below;
      case 'in':
        return SubscriptionSearchModifierBuilderEnum.in_;
      case 'not-in':
        return SubscriptionSearchModifierBuilderEnum.notIn;
      case 'of-type':
        return SubscriptionSearchModifierBuilderEnum.ofType;
    }
    return null;
  }
}

/// FHIR search modifiers allowed for use in Subscriptions and
/// SubscriptionTopics.
class SubscriptionSearchModifierBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SubscriptionSearchModifierBuilder._({
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
  factory SubscriptionSearchModifierBuilder(
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
    final valueEnum = SubscriptionSearchModifierBuilderEnum.fromString(
      valueString,
    );
    return SubscriptionSearchModifierBuilder._(
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

  /// Create empty [SubscriptionSearchModifierBuilder]
  /// with element only
  factory SubscriptionSearchModifierBuilder.empty() =>
      SubscriptionSearchModifierBuilder._(valueString: null);

  /// Factory constructor to create
  /// [SubscriptionSearchModifierBuilder] from JSON.
  factory SubscriptionSearchModifierBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriptionSearchModifierBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SubscriptionSearchModifierBuilder cannot be constructed from JSON.',
      );
    }
    return SubscriptionSearchModifierBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for SubscriptionSearchModifierBuilder
  final SubscriptionSearchModifierBuilderEnum? valueEnum;

  /// eq
  static SubscriptionSearchModifierBuilder eq =
      SubscriptionSearchModifierBuilder._(
    valueString: '=',
    valueEnum: SubscriptionSearchModifierBuilderEnum.eq,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '=',
    ),
  );

  /// ne
  static SubscriptionSearchModifierBuilder ne =
      SubscriptionSearchModifierBuilder._(
    valueString: 'ne',
    valueEnum: SubscriptionSearchModifierBuilderEnum.ne,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Not Equal',
    ),
  );

  /// gt
  static SubscriptionSearchModifierBuilder gt =
      SubscriptionSearchModifierBuilder._(
    valueString: 'gt',
    valueEnum: SubscriptionSearchModifierBuilderEnum.gt,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Greater Than',
    ),
  );

  /// lt
  static SubscriptionSearchModifierBuilder lt =
      SubscriptionSearchModifierBuilder._(
    valueString: 'lt',
    valueEnum: SubscriptionSearchModifierBuilderEnum.lt,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Less Than',
    ),
  );

  /// ge
  static SubscriptionSearchModifierBuilder ge =
      SubscriptionSearchModifierBuilder._(
    valueString: 'ge',
    valueEnum: SubscriptionSearchModifierBuilderEnum.ge,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Greater Than or Equal',
    ),
  );

  /// le
  static SubscriptionSearchModifierBuilder le =
      SubscriptionSearchModifierBuilder._(
    valueString: 'le',
    valueEnum: SubscriptionSearchModifierBuilderEnum.le,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Less Than or Equal',
    ),
  );

  /// sa
  static SubscriptionSearchModifierBuilder sa =
      SubscriptionSearchModifierBuilder._(
    valueString: 'sa',
    valueEnum: SubscriptionSearchModifierBuilderEnum.sa,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Starts After',
    ),
  );

  /// eb
  static SubscriptionSearchModifierBuilder eb =
      SubscriptionSearchModifierBuilder._(
    valueString: 'eb',
    valueEnum: SubscriptionSearchModifierBuilderEnum.eb,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Ends Before',
    ),
  );

  /// ap
  static SubscriptionSearchModifierBuilder ap =
      SubscriptionSearchModifierBuilder._(
    valueString: 'ap',
    valueEnum: SubscriptionSearchModifierBuilderEnum.ap,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Approximately',
    ),
  );

  /// above
  static SubscriptionSearchModifierBuilder above =
      SubscriptionSearchModifierBuilder._(
    valueString: 'above',
    valueEnum: SubscriptionSearchModifierBuilderEnum.above,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Above',
    ),
  );

  /// below
  static SubscriptionSearchModifierBuilder below =
      SubscriptionSearchModifierBuilder._(
    valueString: 'below',
    valueEnum: SubscriptionSearchModifierBuilderEnum.below,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Below',
    ),
  );

  /// in_
  static SubscriptionSearchModifierBuilder in_ =
      SubscriptionSearchModifierBuilder._(
    valueString: 'in',
    valueEnum: SubscriptionSearchModifierBuilderEnum.in_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'In',
    ),
  );

  /// not_in
  static SubscriptionSearchModifierBuilder notIn =
      SubscriptionSearchModifierBuilder._(
    valueString: 'not-in',
    valueEnum: SubscriptionSearchModifierBuilderEnum.notIn,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Not In',
    ),
  );

  /// of_type
  static SubscriptionSearchModifierBuilder ofType =
      SubscriptionSearchModifierBuilder._(
    valueString: 'of-type',
    valueEnum: SubscriptionSearchModifierBuilderEnum.ofType,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Of Type',
    ),
  );

  /// For instances where an Element is present but not value
  static SubscriptionSearchModifierBuilder elementOnly =
      SubscriptionSearchModifierBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<SubscriptionSearchModifierBuilder> values = [
    eq,
    ne,
    gt,
    lt,
    ge,
    le,
    sa,
    eb,
    ap,
    above,
    below,
    in_,
    notIn,
    ofType,
  ];

  /// Returns the enum value with an element attached
  SubscriptionSearchModifierBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return SubscriptionSearchModifierBuilder._(
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
