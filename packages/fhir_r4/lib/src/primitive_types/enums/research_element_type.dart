// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ResearchElementType
enum ResearchElementTypeEnum {
  /// population
  population,

  /// exposure
  exposure,

  /// outcome
  outcome,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ResearchElementTypeEnum.population:
        return 'population';
      case ResearchElementTypeEnum.exposure:
        return 'exposure';
      case ResearchElementTypeEnum.outcome:
        return 'outcome';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ResearchElementTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ResearchElementTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ResearchElementTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'population':
        return ResearchElementTypeEnum.population;
      case 'exposure':
        return ResearchElementTypeEnum.exposure;
      case 'outcome':
        return ResearchElementTypeEnum.outcome;
    }
    return null;
  }
}

/// The possible types of research elements (E.g. Population, Exposure,
/// Outcome).
class ResearchElementType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ResearchElementType._({
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
  factory ResearchElementType(
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
    final valueEnum = ResearchElementTypeEnum.fromString(valueString);
    return ResearchElementType._(
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

  /// Factory constructor to create [ResearchElementType]
  /// from JSON.
  factory ResearchElementType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ResearchElementTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchElementType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ResearchElementType cannot be constructed from JSON.',
      );
    }
    return ResearchElementType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ResearchElementType
  final ResearchElementTypeEnum? valueEnum;

  /// population
  static const ResearchElementType population = ResearchElementType._(
    valueString: 'population',
    valueEnum: ResearchElementTypeEnum.population,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-element-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Population',
    ),
  );

  /// exposure
  static const ResearchElementType exposure = ResearchElementType._(
    valueString: 'exposure',
    valueEnum: ResearchElementTypeEnum.exposure,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-element-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Exposure',
    ),
  );

  /// outcome
  static const ResearchElementType outcome = ResearchElementType._(
    valueString: 'outcome',
    valueEnum: ResearchElementTypeEnum.outcome,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-element-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Outcome',
    ),
  );

  /// List of all enum-like values
  static final List<ResearchElementType> values = [
    population,
    exposure,
    outcome,
  ];

  /// Returns the enum value with an element attached
  ResearchElementType withElement(Element? newElement) {
    return ResearchElementType._(
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
  ResearchElementType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ResearchElementTypeCopyWithImpl<ResearchElementType> get copyWith =>
      ResearchElementTypeCopyWithImpl<ResearchElementType>(
        this,
        (v) => v as ResearchElementType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ResearchElementTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ResearchElementTypeCopyWithImpl(super._value, super._then);

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
      ResearchElementType(
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
