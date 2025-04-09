// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for CompartmentType
enum CompartmentTypeEnum {
  /// Patient
  patient,

  /// Encounter
  encounter,

  /// RelatedPerson
  relatedPerson,

  /// Practitioner
  practitioner,

  /// Device
  device,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case CompartmentTypeEnum.patient:
        return 'Patient';
      case CompartmentTypeEnum.encounter:
        return 'Encounter';
      case CompartmentTypeEnum.relatedPerson:
        return 'RelatedPerson';
      case CompartmentTypeEnum.practitioner:
        return 'Practitioner';
      case CompartmentTypeEnum.device:
        return 'Device';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static CompartmentTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return CompartmentTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static CompartmentTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'Patient':
        return CompartmentTypeEnum.patient;
      case 'Encounter':
        return CompartmentTypeEnum.encounter;
      case 'RelatedPerson':
        return CompartmentTypeEnum.relatedPerson;
      case 'Practitioner':
        return CompartmentTypeEnum.practitioner;
      case 'Device':
        return CompartmentTypeEnum.device;
    }
    return null;
  }
}

/// Which type a compartment definition describes.
class CompartmentType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const CompartmentType._({
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
  factory CompartmentType(
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
    final valueEnum = CompartmentTypeEnum.fromString(valueString);
    return CompartmentType._(
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

  /// Factory constructor to create [CompartmentType]
  /// from JSON.
  factory CompartmentType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = CompartmentTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CompartmentType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CompartmentType cannot be constructed from JSON.',
      );
    }
    return CompartmentType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for CompartmentType
  final CompartmentTypeEnum? valueEnum;

  /// Patient
  static const CompartmentType patient = CompartmentType._(
    valueString: 'Patient',
    valueEnum: CompartmentTypeEnum.patient,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/compartment-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Patient',
    ),
  );

  /// Encounter
  static const CompartmentType encounter = CompartmentType._(
    valueString: 'Encounter',
    valueEnum: CompartmentTypeEnum.encounter,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/compartment-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Encounter',
    ),
  );

  /// RelatedPerson
  static const CompartmentType relatedPerson = CompartmentType._(
    valueString: 'RelatedPerson',
    valueEnum: CompartmentTypeEnum.relatedPerson,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/compartment-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'RelatedPerson',
    ),
  );

  /// Practitioner
  static const CompartmentType practitioner = CompartmentType._(
    valueString: 'Practitioner',
    valueEnum: CompartmentTypeEnum.practitioner,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/compartment-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Practitioner',
    ),
  );

  /// Device
  static const CompartmentType device = CompartmentType._(
    valueString: 'Device',
    valueEnum: CompartmentTypeEnum.device,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/compartment-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Device',
    ),
  );

  /// List of all enum-like values
  static final List<CompartmentType> values = [
    patient,
    encounter,
    relatedPerson,
    practitioner,
    device,
  ];

  /// Returns the enum value with an element attached
  CompartmentType withElement(Element? newElement) {
    return CompartmentType._(
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
  CompartmentType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  CompartmentTypeCopyWithImpl<CompartmentType> get copyWith =>
      CompartmentTypeCopyWithImpl<CompartmentType>(
        this,
        (v) => v as CompartmentType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class CompartmentTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  CompartmentTypeCopyWithImpl(super._value, super._then);

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
      CompartmentType(
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
