// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for DeviceNameType
enum DeviceNameTypeEnum {
  /// udi-label-name
  udiLabelName,

  /// user-friendly-name
  userFriendlyName,

  /// patient-reported-name
  patientReportedName,

  /// manufacturer-name
  manufacturerName,

  /// model-name
  modelName,

  /// other
  other,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case DeviceNameTypeEnum.udiLabelName:
        return 'udi-label-name';
      case DeviceNameTypeEnum.userFriendlyName:
        return 'user-friendly-name';
      case DeviceNameTypeEnum.patientReportedName:
        return 'patient-reported-name';
      case DeviceNameTypeEnum.manufacturerName:
        return 'manufacturer-name';
      case DeviceNameTypeEnum.modelName:
        return 'model-name';
      case DeviceNameTypeEnum.other:
        return 'other';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DeviceNameTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return DeviceNameTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DeviceNameTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'udi-label-name':
        return DeviceNameTypeEnum.udiLabelName;
      case 'user-friendly-name':
        return DeviceNameTypeEnum.userFriendlyName;
      case 'patient-reported-name':
        return DeviceNameTypeEnum.patientReportedName;
      case 'manufacturer-name':
        return DeviceNameTypeEnum.manufacturerName;
      case 'model-name':
        return DeviceNameTypeEnum.modelName;
      case 'other':
        return DeviceNameTypeEnum.other;
    }
    return null;
  }
}

/// The type of name the device is referred by.
class DeviceNameType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const DeviceNameType._({
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
  factory DeviceNameType(
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
    final valueEnum = DeviceNameTypeEnum.fromString(valueString);
    return DeviceNameType._(
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

  /// Factory constructor to create [DeviceNameType]
  /// from JSON.
  factory DeviceNameType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = DeviceNameTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceNameType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceNameType cannot be constructed from JSON.',
      );
    }
    return DeviceNameType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for DeviceNameType
  final DeviceNameTypeEnum? valueEnum;

  /// udi_label_name
  static const DeviceNameType udiLabelName = DeviceNameType._(
    valueString: 'udi-label-name',
    valueEnum: DeviceNameTypeEnum.udiLabelName,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-nametype',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'UDI Label name',
    ),
  );

  /// user_friendly_name
  static const DeviceNameType userFriendlyName = DeviceNameType._(
    valueString: 'user-friendly-name',
    valueEnum: DeviceNameTypeEnum.userFriendlyName,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-nametype',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'User Friendly name',
    ),
  );

  /// patient_reported_name
  static const DeviceNameType patientReportedName = DeviceNameType._(
    valueString: 'patient-reported-name',
    valueEnum: DeviceNameTypeEnum.patientReportedName,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-nametype',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Patient Reported name',
    ),
  );

  /// manufacturer_name
  static const DeviceNameType manufacturerName = DeviceNameType._(
    valueString: 'manufacturer-name',
    valueEnum: DeviceNameTypeEnum.manufacturerName,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-nametype',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Manufacturer name',
    ),
  );

  /// model_name
  static const DeviceNameType modelName = DeviceNameType._(
    valueString: 'model-name',
    valueEnum: DeviceNameTypeEnum.modelName,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-nametype',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Model name',
    ),
  );

  /// other
  static const DeviceNameType other = DeviceNameType._(
    valueString: 'other',
    valueEnum: DeviceNameTypeEnum.other,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-nametype',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'other',
    ),
  );

  /// List of all enum-like values
  static final List<DeviceNameType> values = [
    udiLabelName,
    userFriendlyName,
    patientReportedName,
    manufacturerName,
    modelName,
    other,
  ];

  /// Returns the enum value with an element attached
  DeviceNameType withElement(Element? newElement) {
    return DeviceNameType._(
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
  DeviceNameType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  DeviceNameTypeCopyWithImpl<DeviceNameType> get copyWith =>
      DeviceNameTypeCopyWithImpl<DeviceNameType>(
        this,
        (v) => v as DeviceNameType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class DeviceNameTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  DeviceNameTypeCopyWithImpl(super._value, super._then);

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
      DeviceNameType(
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
