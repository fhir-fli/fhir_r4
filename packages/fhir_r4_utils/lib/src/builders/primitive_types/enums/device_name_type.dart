// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The type of name the device is referred by.
class DeviceNameTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DeviceNameTypeBuilder._({
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
  factory DeviceNameTypeBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    return DeviceNameTypeBuilder._(
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

  /// Create empty [DeviceNameTypeBuilder] with element only
  factory DeviceNameTypeBuilder.empty() =>
      DeviceNameTypeBuilder._(valueString: '');

  /// Factory constructor to create [DeviceNameTypeBuilder]
  /// from JSON.
  factory DeviceNameTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceNameTypeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceNameTypeBuilder cannot be constructed from JSON.',
      );
    }
    return DeviceNameTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// udi_label_name
  static DeviceNameTypeBuilder udi_label_name = DeviceNameTypeBuilder._(
    valueString: 'udi-label-name',
    system: 'http://hl7.org/fhir/ValueSet/device-nametype'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'UDI Label name'.toFhirStringBuilder,
  );

  /// user_friendly_name
  static DeviceNameTypeBuilder user_friendly_name = DeviceNameTypeBuilder._(
    valueString: 'user-friendly-name',
    system: 'http://hl7.org/fhir/ValueSet/device-nametype'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'User Friendly name'.toFhirStringBuilder,
  );

  /// patient_reported_name
  static DeviceNameTypeBuilder patient_reported_name = DeviceNameTypeBuilder._(
    valueString: 'patient-reported-name',
    system: 'http://hl7.org/fhir/ValueSet/device-nametype'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Patient Reported name'.toFhirStringBuilder,
  );

  /// manufacturer_name
  static DeviceNameTypeBuilder manufacturer_name = DeviceNameTypeBuilder._(
    valueString: 'manufacturer-name',
    system: 'http://hl7.org/fhir/ValueSet/device-nametype'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Manufacturer name'.toFhirStringBuilder,
  );

  /// model_name
  static DeviceNameTypeBuilder model_name = DeviceNameTypeBuilder._(
    valueString: 'model-name',
    system: 'http://hl7.org/fhir/ValueSet/device-nametype'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Model name'.toFhirStringBuilder,
  );

  /// other
  static DeviceNameTypeBuilder other = DeviceNameTypeBuilder._(
    valueString: 'other',
    system: 'http://hl7.org/fhir/ValueSet/device-nametype'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'other'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static DeviceNameTypeBuilder elementOnly =
      DeviceNameTypeBuilder._(valueString: '');

  /// List of all enum-like values
  static List<DeviceNameTypeBuilder> values = [
    udi_label_name,
    user_friendly_name,
    patient_reported_name,
    manufacturer_name,
    model_name,
    other,
  ];

  /// Clones the current instance
  @override
  DeviceNameTypeBuilder clone() => DeviceNameTypeBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  DeviceNameTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return DeviceNameTypeBuilder._(
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
  DeviceNameTypeBuilder copyWith({
    dynamic newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
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
    return DeviceNameTypeBuilder._(
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
