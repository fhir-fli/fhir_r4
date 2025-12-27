part of '../primitive_types.dart';

/// Actual enum for Use
enum UseEnum {
  /// claim
  claim,

  /// preauthorization
  preauthorization,

  /// predetermination
  predetermination,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case UseEnum.claim:
        return 'claim';
      case UseEnum.preauthorization:
        return 'preauthorization';
      case UseEnum.predetermination:
        return 'predetermination';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static UseEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return UseEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static UseEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'claim':
        return UseEnum.claim;
      case 'preauthorization':
        return UseEnum.preauthorization;
      case 'predetermination':
        return UseEnum.predetermination;
    }
    return null;
  }
}

/// The purpose of the Claim: predetermination, preauthorization, claim.
class Use extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const Use._({
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
  factory Use(
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
    final valueEnum = UseEnum.fromString(valueString);
    return Use._(
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

  /// Factory constructor to create [Use]
  /// from JSON.
  factory Use.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = UseEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return Use._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'Use cannot be constructed from JSON.',
      );
    }
    return Use._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for Use
  final UseEnum? valueEnum;

  /// claim
  static const Use claim = Use._(
    valueString: 'claim',
    valueEnum: UseEnum.claim,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/claim-use',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Claim',
    ),
  );

  /// preauthorization
  static const Use preauthorization = Use._(
    valueString: 'preauthorization',
    valueEnum: UseEnum.preauthorization,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/claim-use',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Preauthorization',
    ),
  );

  /// predetermination
  static const Use predetermination = Use._(
    valueString: 'predetermination',
    valueEnum: UseEnum.predetermination,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/claim-use',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Predetermination',
    ),
  );

  /// List of all enum-like values
  static final List<Use> values = [
    claim,
    preauthorization,
    predetermination,
  ];

  /// Returns the enum value with an element attached
  Use withElement(Element? newElement) {
    return Use._(
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
  Use clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  UseCopyWithImpl<Use> get copyWith => UseCopyWithImpl<Use>(
        this,
        (v) => v as Use,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class UseCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  UseCopyWithImpl(super._value, super._then);

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
      Use(
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
