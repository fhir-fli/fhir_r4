// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for SubscriptionSearchModifier
enum SubscriptionSearchModifierEnum {
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
      case SubscriptionSearchModifierEnum.eq:
        return '=';
      case SubscriptionSearchModifierEnum.ne:
        return 'ne';
      case SubscriptionSearchModifierEnum.gt:
        return 'gt';
      case SubscriptionSearchModifierEnum.lt:
        return 'lt';
      case SubscriptionSearchModifierEnum.ge:
        return 'ge';
      case SubscriptionSearchModifierEnum.le:
        return 'le';
      case SubscriptionSearchModifierEnum.sa:
        return 'sa';
      case SubscriptionSearchModifierEnum.eb:
        return 'eb';
      case SubscriptionSearchModifierEnum.ap:
        return 'ap';
      case SubscriptionSearchModifierEnum.above:
        return 'above';
      case SubscriptionSearchModifierEnum.below:
        return 'below';
      case SubscriptionSearchModifierEnum.in_:
        return 'in';
      case SubscriptionSearchModifierEnum.notIn:
        return 'not-in';
      case SubscriptionSearchModifierEnum.ofType:
        return 'of-type';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SubscriptionSearchModifierEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return SubscriptionSearchModifierEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SubscriptionSearchModifierEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case '=':
        return SubscriptionSearchModifierEnum.eq;
      case 'ne':
        return SubscriptionSearchModifierEnum.ne;
      case 'gt':
        return SubscriptionSearchModifierEnum.gt;
      case 'lt':
        return SubscriptionSearchModifierEnum.lt;
      case 'ge':
        return SubscriptionSearchModifierEnum.ge;
      case 'le':
        return SubscriptionSearchModifierEnum.le;
      case 'sa':
        return SubscriptionSearchModifierEnum.sa;
      case 'eb':
        return SubscriptionSearchModifierEnum.eb;
      case 'ap':
        return SubscriptionSearchModifierEnum.ap;
      case 'above':
        return SubscriptionSearchModifierEnum.above;
      case 'below':
        return SubscriptionSearchModifierEnum.below;
      case 'in':
        return SubscriptionSearchModifierEnum.in_;
      case 'not-in':
        return SubscriptionSearchModifierEnum.notIn;
      case 'of-type':
        return SubscriptionSearchModifierEnum.ofType;
    }
    return null;
  }
}

/// FHIR search modifiers allowed for use in Subscriptions and
/// SubscriptionTopics.
class SubscriptionSearchModifier extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const SubscriptionSearchModifier._({
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
  factory SubscriptionSearchModifier(
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
    final valueEnum = SubscriptionSearchModifierEnum.fromString(valueString);
    return SubscriptionSearchModifier._(
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

  /// Factory constructor to create [SubscriptionSearchModifier]
  /// from JSON.
  factory SubscriptionSearchModifier.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = SubscriptionSearchModifierEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriptionSearchModifier._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SubscriptionSearchModifier cannot be constructed from JSON.',
      );
    }
    return SubscriptionSearchModifier._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for SubscriptionSearchModifier
  final SubscriptionSearchModifierEnum? valueEnum;

  /// eq
  static const SubscriptionSearchModifier eq = SubscriptionSearchModifier._(
    valueString: '=',
    valueEnum: SubscriptionSearchModifierEnum.eq,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '=',
    ),
  );

  /// ne
  static const SubscriptionSearchModifier ne = SubscriptionSearchModifier._(
    valueString: 'ne',
    valueEnum: SubscriptionSearchModifierEnum.ne,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Not Equal',
    ),
  );

  /// gt
  static const SubscriptionSearchModifier gt = SubscriptionSearchModifier._(
    valueString: 'gt',
    valueEnum: SubscriptionSearchModifierEnum.gt,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Greater Than',
    ),
  );

  /// lt
  static const SubscriptionSearchModifier lt = SubscriptionSearchModifier._(
    valueString: 'lt',
    valueEnum: SubscriptionSearchModifierEnum.lt,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Less Than',
    ),
  );

  /// ge
  static const SubscriptionSearchModifier ge = SubscriptionSearchModifier._(
    valueString: 'ge',
    valueEnum: SubscriptionSearchModifierEnum.ge,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Greater Than or Equal',
    ),
  );

  /// le
  static const SubscriptionSearchModifier le = SubscriptionSearchModifier._(
    valueString: 'le',
    valueEnum: SubscriptionSearchModifierEnum.le,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Less Than or Equal',
    ),
  );

  /// sa
  static const SubscriptionSearchModifier sa = SubscriptionSearchModifier._(
    valueString: 'sa',
    valueEnum: SubscriptionSearchModifierEnum.sa,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Starts After',
    ),
  );

  /// eb
  static const SubscriptionSearchModifier eb = SubscriptionSearchModifier._(
    valueString: 'eb',
    valueEnum: SubscriptionSearchModifierEnum.eb,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Ends Before',
    ),
  );

  /// ap
  static const SubscriptionSearchModifier ap = SubscriptionSearchModifier._(
    valueString: 'ap',
    valueEnum: SubscriptionSearchModifierEnum.ap,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Approximately',
    ),
  );

  /// above
  static const SubscriptionSearchModifier above = SubscriptionSearchModifier._(
    valueString: 'above',
    valueEnum: SubscriptionSearchModifierEnum.above,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Above',
    ),
  );

  /// below
  static const SubscriptionSearchModifier below = SubscriptionSearchModifier._(
    valueString: 'below',
    valueEnum: SubscriptionSearchModifierEnum.below,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Below',
    ),
  );

  /// in_
  static const SubscriptionSearchModifier in_ = SubscriptionSearchModifier._(
    valueString: 'in',
    valueEnum: SubscriptionSearchModifierEnum.in_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'In',
    ),
  );

  /// not_in
  static const SubscriptionSearchModifier notIn = SubscriptionSearchModifier._(
    valueString: 'not-in',
    valueEnum: SubscriptionSearchModifierEnum.notIn,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Not In',
    ),
  );

  /// of_type
  static const SubscriptionSearchModifier ofType = SubscriptionSearchModifier._(
    valueString: 'of-type',
    valueEnum: SubscriptionSearchModifierEnum.ofType,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-search-modifier',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Of Type',
    ),
  );

  /// List of all enum-like values
  static final List<SubscriptionSearchModifier> values = [
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
  SubscriptionSearchModifier withElement(Element? newElement) {
    return SubscriptionSearchModifier._(
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
  SubscriptionSearchModifier clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  SubscriptionSearchModifierCopyWithImpl<SubscriptionSearchModifier>
      get copyWith =>
          SubscriptionSearchModifierCopyWithImpl<SubscriptionSearchModifier>(
            this,
            (v) => v as SubscriptionSearchModifier,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class SubscriptionSearchModifierCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  SubscriptionSearchModifierCopyWithImpl(super._value, super._then);

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
      SubscriptionSearchModifier(
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
