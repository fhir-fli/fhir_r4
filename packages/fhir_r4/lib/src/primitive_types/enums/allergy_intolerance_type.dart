// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for AllergyIntoleranceType
enum AllergyIntoleranceTypeEnum {
  /// allergy
  allergy,

  /// intolerance
  intolerance,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case AllergyIntoleranceTypeEnum.allergy:
        return 'allergy';
      case AllergyIntoleranceTypeEnum.intolerance:
        return 'intolerance';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AllergyIntoleranceTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return AllergyIntoleranceTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AllergyIntoleranceTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'allergy':
        return AllergyIntoleranceTypeEnum.allergy;
      case 'intolerance':
        return AllergyIntoleranceTypeEnum.intolerance;
    }
    return null;
  }
}

/// Identification of the underlying physiological mechanism for a Reaction
/// Risk.
class AllergyIntoleranceType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const AllergyIntoleranceType._({
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
  factory AllergyIntoleranceType(
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
    final valueEnum = AllergyIntoleranceTypeEnum.fromString(valueString);
    return AllergyIntoleranceType._(
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

  /// Factory constructor to create [AllergyIntoleranceType]
  /// from JSON.
  factory AllergyIntoleranceType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = AllergyIntoleranceTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AllergyIntoleranceType cannot be constructed from JSON.',
      );
    }
    return AllergyIntoleranceType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for AllergyIntoleranceType
  final AllergyIntoleranceTypeEnum? valueEnum;

  /// allergy
  static const AllergyIntoleranceType allergy = AllergyIntoleranceType._(
    valueString: 'allergy',
    valueEnum: AllergyIntoleranceTypeEnum.allergy,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/allergy-intolerance-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Allergy',
    ),
  );

  /// intolerance
  static const AllergyIntoleranceType intolerance = AllergyIntoleranceType._(
    valueString: 'intolerance',
    valueEnum: AllergyIntoleranceTypeEnum.intolerance,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/allergy-intolerance-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Intolerance',
    ),
  );

  /// List of all enum-like values
  static final List<AllergyIntoleranceType> values = [
    allergy,
    intolerance,
  ];

  /// Returns the enum value with an element attached
  AllergyIntoleranceType withElement(Element? newElement) {
    return AllergyIntoleranceType._(
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
  AllergyIntoleranceType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  AllergyIntoleranceTypeCopyWithImpl<AllergyIntoleranceType> get copyWith =>
      AllergyIntoleranceTypeCopyWithImpl<AllergyIntoleranceType>(
        this,
        (v) => v as AllergyIntoleranceType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class AllergyIntoleranceTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  AllergyIntoleranceTypeCopyWithImpl(super._value, super._then);

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
      AllergyIntoleranceType(
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
