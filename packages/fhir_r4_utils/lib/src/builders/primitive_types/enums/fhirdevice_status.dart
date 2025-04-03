// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The availability status of the device.
class FHIRDeviceStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  FHIRDeviceStatusBuilder._({
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
  factory FHIRDeviceStatusBuilder(
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
    return FHIRDeviceStatusBuilder._(
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

  /// Create empty [FHIRDeviceStatusBuilder] with element only
  factory FHIRDeviceStatusBuilder.empty() =>
      FHIRDeviceStatusBuilder._(valueString: '');

  /// Factory constructor to create [FHIRDeviceStatusBuilder]
  /// from JSON.
  factory FHIRDeviceStatusBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRDeviceStatusBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FHIRDeviceStatusBuilder cannot be constructed from JSON.',
      );
    }
    return FHIRDeviceStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// active
  static FHIRDeviceStatusBuilder active = FHIRDeviceStatusBuilder._(
    valueString: 'active',
    system: 'http://hl7.org/fhir/ValueSet/device-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Active'.toFhirStringBuilder,
  );

  /// inactive
  static FHIRDeviceStatusBuilder inactive = FHIRDeviceStatusBuilder._(
    valueString: 'inactive',
    system: 'http://hl7.org/fhir/ValueSet/device-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Inactive'.toFhirStringBuilder,
  );

  /// entered_in_error
  static FHIRDeviceStatusBuilder entered_in_error = FHIRDeviceStatusBuilder._(
    valueString: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/device-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered in Error'.toFhirStringBuilder,
  );

  /// unknown
  static FHIRDeviceStatusBuilder unknown = FHIRDeviceStatusBuilder._(
    valueString: 'unknown',
    system: 'http://hl7.org/fhir/ValueSet/device-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Unknown'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static FHIRDeviceStatusBuilder elementOnly =
      FHIRDeviceStatusBuilder._(valueString: '');

  /// List of all enum-like values
  static List<FHIRDeviceStatusBuilder> values = [
    active,
    inactive,
    entered_in_error,
    unknown,
  ];

  /// Clones the current instance
  @override
  FHIRDeviceStatusBuilder clone() => FHIRDeviceStatusBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  FHIRDeviceStatusBuilder withElement(ElementBuilder? newElement) {
    return FHIRDeviceStatusBuilder._(
        valueString: valueString, element: newElement);
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
  FHIRDeviceStatusBuilder copyWith({
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
      throw ArgumentError('Invalid input for FHIRDeviceStatus: $newValue');
    }
    return FHIRDeviceStatusBuilder._(
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
