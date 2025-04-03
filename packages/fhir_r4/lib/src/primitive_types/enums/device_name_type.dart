// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The type of name the device is referred by.
class DeviceNameType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  DeviceNameType._({
    required super.valueString,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
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
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return DeviceNameType._(
      valueString: valueString,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [DeviceNameType] with element only
  factory DeviceNameType.empty() => DeviceNameType._(valueString: '');

  /// Factory constructor to create [DeviceNameType]
  /// from JSON.
  factory DeviceNameType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceNameType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceNameType cannot be constructed from JSON.',
      );
    }
    return DeviceNameType._(
      valueString: value,
      element: element,
    );
  }

  /// udi_label_name
  static final DeviceNameType udi_label_name = DeviceNameType._(
    valueString: 'udi-label-name',
    system: 'http://hl7.org/fhir/ValueSet/device-nametype'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'UDI Label name'.toFhirString,
  );

  /// user_friendly_name
  static final DeviceNameType user_friendly_name = DeviceNameType._(
    valueString: 'user-friendly-name',
    system: 'http://hl7.org/fhir/ValueSet/device-nametype'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'User Friendly name'.toFhirString,
  );

  /// patient_reported_name
  static final DeviceNameType patient_reported_name = DeviceNameType._(
    valueString: 'patient-reported-name',
    system: 'http://hl7.org/fhir/ValueSet/device-nametype'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Patient Reported name'.toFhirString,
  );

  /// manufacturer_name
  static final DeviceNameType manufacturer_name = DeviceNameType._(
    valueString: 'manufacturer-name',
    system: 'http://hl7.org/fhir/ValueSet/device-nametype'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Manufacturer name'.toFhirString,
  );

  /// model_name
  static final DeviceNameType model_name = DeviceNameType._(
    valueString: 'model-name',
    system: 'http://hl7.org/fhir/ValueSet/device-nametype'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Model name'.toFhirString,
  );

  /// other
  static final DeviceNameType other = DeviceNameType._(
    valueString: 'other',
    system: 'http://hl7.org/fhir/ValueSet/device-nametype'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'other'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final DeviceNameType elementOnly = DeviceNameType._(valueString: '');

  /// List of all enum-like values
  static final List<DeviceNameType> values = [
    udi_label_name,
    user_friendly_name,
    patient_reported_name,
    manufacturer_name,
    model_name,
    other,
  ];

  /// Clones the current instance
  @override
  DeviceNameType clone() => DeviceNameType._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

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

  /// Creates a modified copy with updated properties.
  @override
  DeviceNameType copyWith({
    dynamic newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if (newValue is! String?) {
      throw ArgumentError(
        'Invalid input for DeviceNameType: $newValue',
      );
    }
    return DeviceNameType._(
      valueString: newValue ?? valueString,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}
