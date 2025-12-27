part of '../primitive_types.dart';

/// Actual enum for SlicingRules
enum SlicingRulesEnum {
  /// closed
  closed,

  /// open
  open,

  /// openAtEnd
  openAtEnd,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case SlicingRulesEnum.closed:
        return 'closed';
      case SlicingRulesEnum.open:
        return 'open';
      case SlicingRulesEnum.openAtEnd:
        return 'openAtEnd';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SlicingRulesEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return SlicingRulesEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SlicingRulesEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'closed':
        return SlicingRulesEnum.closed;
      case 'open':
        return SlicingRulesEnum.open;
      case 'openAtEnd':
        return SlicingRulesEnum.openAtEnd;
    }
    return null;
  }
}

/// How slices are interpreted when evaluating an instance.
class SlicingRules extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const SlicingRules._({
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
  factory SlicingRules(
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
    final valueEnum = SlicingRulesEnum.fromString(valueString);
    return SlicingRules._(
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

  /// Factory constructor to create [SlicingRules]
  /// from JSON.
  factory SlicingRules.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = SlicingRulesEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SlicingRules._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SlicingRules cannot be constructed from JSON.',
      );
    }
    return SlicingRules._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for SlicingRules
  final SlicingRulesEnum? valueEnum;

  /// closed
  static const SlicingRules closed = SlicingRules._(
    valueString: 'closed',
    valueEnum: SlicingRulesEnum.closed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/resource-slicing-rules',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Closed',
    ),
  );

  /// open
  static const SlicingRules open = SlicingRules._(
    valueString: 'open',
    valueEnum: SlicingRulesEnum.open,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/resource-slicing-rules',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Open',
    ),
  );

  /// openAtEnd
  static const SlicingRules openAtEnd = SlicingRules._(
    valueString: 'openAtEnd',
    valueEnum: SlicingRulesEnum.openAtEnd,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/resource-slicing-rules',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Open at End',
    ),
  );

  /// List of all enum-like values
  static final List<SlicingRules> values = [
    closed,
    open,
    openAtEnd,
  ];

  /// Returns the enum value with an element attached
  SlicingRules withElement(Element? newElement) {
    return SlicingRules._(
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
  SlicingRules clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  SlicingRulesCopyWithImpl<SlicingRules> get copyWith =>
      SlicingRulesCopyWithImpl<SlicingRules>(
        this,
        (v) => v as SlicingRules,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class SlicingRulesCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  SlicingRulesCopyWithImpl(super._value, super._then);

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
      SlicingRules(
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
