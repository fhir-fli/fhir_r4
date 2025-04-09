// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for VariableType
enum VariableTypeEnum {
  /// dichotomous
  dichotomous,

  /// continuous
  continuous,

  /// descriptive
  descriptive,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case VariableTypeEnum.dichotomous:
        return 'dichotomous';
      case VariableTypeEnum.continuous:
        return 'continuous';
      case VariableTypeEnum.descriptive:
        return 'descriptive';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static VariableTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return VariableTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static VariableTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'dichotomous':
        return VariableTypeEnum.dichotomous;
      case 'continuous':
        return VariableTypeEnum.continuous;
      case 'descriptive':
        return VariableTypeEnum.descriptive;
    }
    return null;
  }
}

/// The possible types of variables for exposures or outcomes (E.g.
/// Dichotomous, Continuous, Descriptive).
class VariableType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const VariableType._({
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
  factory VariableType(
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
    final valueEnum = VariableTypeEnum.fromString(valueString);
    return VariableType._(
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

  /// Factory constructor to create [VariableType]
  /// from JSON.
  factory VariableType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = VariableTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return VariableType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'VariableType cannot be constructed from JSON.',
      );
    }
    return VariableType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for VariableType
  final VariableTypeEnum? valueEnum;

  /// dichotomous
  static const VariableType dichotomous = VariableType._(
    valueString: 'dichotomous',
    valueEnum: VariableTypeEnum.dichotomous,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/variable-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Dichotomous',
    ),
  );

  /// continuous
  static const VariableType continuous = VariableType._(
    valueString: 'continuous',
    valueEnum: VariableTypeEnum.continuous,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/variable-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Continuous',
    ),
  );

  /// descriptive
  static const VariableType descriptive = VariableType._(
    valueString: 'descriptive',
    valueEnum: VariableTypeEnum.descriptive,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/variable-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Descriptive',
    ),
  );

  /// List of all enum-like values
  static final List<VariableType> values = [
    dichotomous,
    continuous,
    descriptive,
  ];

  /// Returns the enum value with an element attached
  VariableType withElement(Element? newElement) {
    return VariableType._(
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
  VariableType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  VariableTypeCopyWithImpl<VariableType> get copyWith =>
      VariableTypeCopyWithImpl<VariableType>(
        this,
        (v) => v as VariableType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class VariableTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  VariableTypeCopyWithImpl(super._value, super._then);

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
      VariableType(
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
