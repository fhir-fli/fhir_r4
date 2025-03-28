// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The type of name the device is referred by.
class DeviceNameType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  DeviceNameType._({
    required super.validatedValue,
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
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return DeviceNameType._(
      validatedValue: validated,
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
  factory DeviceNameType.empty() => DeviceNameType._(validatedValue: '');

  /// Factory constructor to create [DeviceNameType] from JSON.
  factory DeviceNameType.fromJson(Map<String, dynamic> json) {
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
      validatedValue: value,
      element: element,
    );
  }

  /// udi_label_name
  static final DeviceNameType udi_label_name = DeviceNameType._(
    validatedValue: 'udi-label-name',
    system: 'http://hl7.org/fhir/ValueSet/device-nametype'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'UDI Label name'.toFhirString,
  );

  /// user_friendly_name
  static final DeviceNameType user_friendly_name = DeviceNameType._(
    validatedValue: 'user-friendly-name',
    system: 'http://hl7.org/fhir/ValueSet/device-nametype'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'User Friendly name'.toFhirString,
  );

  /// patient_reported_name
  static final DeviceNameType patient_reported_name = DeviceNameType._(
    validatedValue: 'patient-reported-name',
    system: 'http://hl7.org/fhir/ValueSet/device-nametype'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Patient Reported name'.toFhirString,
  );

  /// manufacturer_name
  static final DeviceNameType manufacturer_name = DeviceNameType._(
    validatedValue: 'manufacturer-name',
    system: 'http://hl7.org/fhir/ValueSet/device-nametype'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Manufacturer name'.toFhirString,
  );

  /// model_name
  static final DeviceNameType model_name = DeviceNameType._(
    validatedValue: 'model-name',
    system: 'http://hl7.org/fhir/ValueSet/device-nametype'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Model name'.toFhirString,
  );

  /// other
  static final DeviceNameType other = DeviceNameType._(
    validatedValue: 'other',
    system: 'http://hl7.org/fhir/ValueSet/device-nametype'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'other'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final DeviceNameType elementOnly =
      DeviceNameType._(validatedValue: '');

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
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  DeviceNameType withElement(Element? newElement) {
    return DeviceNameType._(validatedValue: value, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  DeviceNameType copyWith({
    String? newValue,
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
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return DeviceNameType._(
      validatedValue: newValue ?? value,
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
