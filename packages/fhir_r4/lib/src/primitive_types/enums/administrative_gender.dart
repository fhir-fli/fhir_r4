// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for AdministrativeGender
enum AdministrativeGenderEnum {
  /// male
  male,

  /// female
  female,

  /// other
  other,

  /// unknown
  unknown,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case AdministrativeGenderEnum.male:
        return 'male';
      case AdministrativeGenderEnum.female:
        return 'female';
      case AdministrativeGenderEnum.other:
        return 'other';
      case AdministrativeGenderEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AdministrativeGenderEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return AdministrativeGenderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AdministrativeGenderEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'male':
        return AdministrativeGenderEnum.male;
      case 'female':
        return AdministrativeGenderEnum.female;
      case 'other':
        return AdministrativeGenderEnum.other;
      case 'unknown':
        return AdministrativeGenderEnum.unknown;
    }
    return null;
  }
}

/// The gender of a person used for administrative purposes.
class AdministrativeGender extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const AdministrativeGender._({
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
  factory AdministrativeGender(
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
    final valueEnum = AdministrativeGenderEnum.fromString(valueString);
    return AdministrativeGender._(
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

  /// Factory constructor to create [AdministrativeGender]
  /// from JSON.
  factory AdministrativeGender.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = AdministrativeGenderEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdministrativeGender._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AdministrativeGender cannot be constructed from JSON.',
      );
    }
    return AdministrativeGender._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for AdministrativeGender
  final AdministrativeGenderEnum? valueEnum;

  /// male
  static const AdministrativeGender male = AdministrativeGender._(
    valueString: 'male',
    valueEnum: AdministrativeGenderEnum.male,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/administrative-gender',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Male',
    ),
  );

  /// female
  static const AdministrativeGender female = AdministrativeGender._(
    valueString: 'female',
    valueEnum: AdministrativeGenderEnum.female,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/administrative-gender',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Female',
    ),
  );

  /// other
  static const AdministrativeGender other = AdministrativeGender._(
    valueString: 'other',
    valueEnum: AdministrativeGenderEnum.other,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/administrative-gender',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Other',
    ),
  );

  /// unknown
  static const AdministrativeGender unknown = AdministrativeGender._(
    valueString: 'unknown',
    valueEnum: AdministrativeGenderEnum.unknown,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/administrative-gender',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Unknown',
    ),
  );

  /// List of all enum-like values
  static final List<AdministrativeGender> values = [
    male,
    female,
    other,
    unknown,
  ];

  /// Returns the enum value with an element attached
  AdministrativeGender withElement(Element? newElement) {
    return AdministrativeGender._(
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
  AdministrativeGender clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  AdministrativeGenderCopyWithImpl<AdministrativeGender> get copyWith =>
      AdministrativeGenderCopyWithImpl<AdministrativeGender>(
        this,
        (v) => v as AdministrativeGender,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class AdministrativeGenderCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  AdministrativeGenderCopyWithImpl(super._value, super._then);

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
      AdministrativeGender(
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
