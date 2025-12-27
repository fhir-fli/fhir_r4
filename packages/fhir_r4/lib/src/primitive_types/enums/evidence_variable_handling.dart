part of '../primitive_types.dart';

/// Actual enum for EvidenceVariableHandling
enum EvidenceVariableHandlingEnum {
  /// continuous
  continuous,

  /// dichotomous
  dichotomous,

  /// ordinal
  ordinal,

  /// polychotomous
  polychotomous,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case EvidenceVariableHandlingEnum.continuous:
        return 'continuous';
      case EvidenceVariableHandlingEnum.dichotomous:
        return 'dichotomous';
      case EvidenceVariableHandlingEnum.ordinal:
        return 'ordinal';
      case EvidenceVariableHandlingEnum.polychotomous:
        return 'polychotomous';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static EvidenceVariableHandlingEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return EvidenceVariableHandlingEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static EvidenceVariableHandlingEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'continuous':
        return EvidenceVariableHandlingEnum.continuous;
      case 'dichotomous':
        return EvidenceVariableHandlingEnum.dichotomous;
      case 'ordinal':
        return EvidenceVariableHandlingEnum.ordinal;
      case 'polychotomous':
        return EvidenceVariableHandlingEnum.polychotomous;
    }
    return null;
  }
}

/// The handling of the variable in statistical analysis for exposures or
/// outcomes (E.g. Dichotomous, Continuous, Descriptive).
class EvidenceVariableHandling extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const EvidenceVariableHandling._({
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
  factory EvidenceVariableHandling(
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
    final valueEnum = EvidenceVariableHandlingEnum.fromString(valueString);
    return EvidenceVariableHandling._(
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

  /// Factory constructor to create [EvidenceVariableHandling]
  /// from JSON.
  factory EvidenceVariableHandling.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = EvidenceVariableHandlingEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceVariableHandling._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EvidenceVariableHandling cannot be constructed from JSON.',
      );
    }
    return EvidenceVariableHandling._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for EvidenceVariableHandling
  final EvidenceVariableHandlingEnum? valueEnum;

  /// continuous
  static const EvidenceVariableHandling continuous = EvidenceVariableHandling._(
    valueString: 'continuous',
    valueEnum: EvidenceVariableHandlingEnum.continuous,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/variable-handling',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'continuous variable',
    ),
  );

  /// dichotomous
  static const EvidenceVariableHandling dichotomous =
      EvidenceVariableHandling._(
    valueString: 'dichotomous',
    valueEnum: EvidenceVariableHandlingEnum.dichotomous,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/variable-handling',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'dichotomous variable',
    ),
  );

  /// ordinal
  static const EvidenceVariableHandling ordinal = EvidenceVariableHandling._(
    valueString: 'ordinal',
    valueEnum: EvidenceVariableHandlingEnum.ordinal,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/variable-handling',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ordinal variable',
    ),
  );

  /// polychotomous
  static const EvidenceVariableHandling polychotomous =
      EvidenceVariableHandling._(
    valueString: 'polychotomous',
    valueEnum: EvidenceVariableHandlingEnum.polychotomous,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/variable-handling',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'polychotomous variable',
    ),
  );

  /// List of all enum-like values
  static final List<EvidenceVariableHandling> values = [
    continuous,
    dichotomous,
    ordinal,
    polychotomous,
  ];

  /// Returns the enum value with an element attached
  EvidenceVariableHandling withElement(Element? newElement) {
    return EvidenceVariableHandling._(
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
  EvidenceVariableHandling clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  EvidenceVariableHandlingCopyWithImpl<EvidenceVariableHandling> get copyWith =>
      EvidenceVariableHandlingCopyWithImpl<EvidenceVariableHandling>(
        this,
        (v) => v as EvidenceVariableHandling,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class EvidenceVariableHandlingCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  EvidenceVariableHandlingCopyWithImpl(super._value, super._then);

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
      EvidenceVariableHandling(
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
