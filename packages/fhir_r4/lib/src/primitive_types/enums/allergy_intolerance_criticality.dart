// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for AllergyIntoleranceCriticality
enum AllergyIntoleranceCriticalityEnum {
  /// low
  low,

  /// high
  high,

  /// unable-to-assess
  unableToAssess,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case AllergyIntoleranceCriticalityEnum.low:
        return 'low';
      case AllergyIntoleranceCriticalityEnum.high:
        return 'high';
      case AllergyIntoleranceCriticalityEnum.unableToAssess:
        return 'unable-to-assess';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AllergyIntoleranceCriticalityEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return AllergyIntoleranceCriticalityEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AllergyIntoleranceCriticalityEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'low':
        return AllergyIntoleranceCriticalityEnum.low;
      case 'high':
        return AllergyIntoleranceCriticalityEnum.high;
      case 'unable-to-assess':
        return AllergyIntoleranceCriticalityEnum.unableToAssess;
    }
    return null;
  }
}

/// Estimate of the potential clinical harm, or seriousness, of a reaction
/// to an identified substance.
class AllergyIntoleranceCriticality extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const AllergyIntoleranceCriticality._({
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
  factory AllergyIntoleranceCriticality(
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
    final valueEnum = AllergyIntoleranceCriticalityEnum.fromString(valueString);
    return AllergyIntoleranceCriticality._(
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

  /// Factory constructor to create [AllergyIntoleranceCriticality]
  /// from JSON.
  factory AllergyIntoleranceCriticality.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = AllergyIntoleranceCriticalityEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceCriticality._(
          valueString: null, element: element,);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AllergyIntoleranceCriticality cannot be constructed from JSON.',
      );
    }
    return AllergyIntoleranceCriticality._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for AllergyIntoleranceCriticality
  final AllergyIntoleranceCriticalityEnum? valueEnum;

  /// low
  static const AllergyIntoleranceCriticality low =
      AllergyIntoleranceCriticality._(
    valueString: 'low',
    valueEnum: AllergyIntoleranceCriticalityEnum.low,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Low Risk',
    ),
  );

  /// high
  static const AllergyIntoleranceCriticality high =
      AllergyIntoleranceCriticality._(
    valueString: 'high',
    valueEnum: AllergyIntoleranceCriticalityEnum.high,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'High Risk',
    ),
  );

  /// unable_to_assess
  static const AllergyIntoleranceCriticality unableToAssess =
      AllergyIntoleranceCriticality._(
    valueString: 'unable-to-assess',
    valueEnum: AllergyIntoleranceCriticalityEnum.unableToAssess,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Unable to Assess Risk',
    ),
  );

  /// List of all enum-like values
  static final List<AllergyIntoleranceCriticality> values = [
    low,
    high,
    unableToAssess,
  ];

  /// Returns the enum value with an element attached
  AllergyIntoleranceCriticality withElement(Element? newElement) {
    return AllergyIntoleranceCriticality._(
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
  AllergyIntoleranceCriticality clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  AllergyIntoleranceCriticalityCopyWithImpl<AllergyIntoleranceCriticality>
      get copyWith => AllergyIntoleranceCriticalityCopyWithImpl<
              AllergyIntoleranceCriticality>(
            this,
            (v) => v as AllergyIntoleranceCriticality,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class AllergyIntoleranceCriticalityCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  AllergyIntoleranceCriticalityCopyWithImpl(super._value, super._then);

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
      AllergyIntoleranceCriticality(
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
