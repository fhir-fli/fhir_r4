// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The availability status of the device.
class FHIRDeviceStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  FHIRDeviceStatus._({
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
  factory FHIRDeviceStatus(
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
    return FHIRDeviceStatus._(
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

  /// Create empty [FHIRDeviceStatus] with element only
  factory FHIRDeviceStatus.empty() => FHIRDeviceStatus._(valueString: '');

  /// Factory constructor to create [FHIRDeviceStatus]
  /// from JSON.
  factory FHIRDeviceStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRDeviceStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FHIRDeviceStatus cannot be constructed from JSON.',
      );
    }
    return FHIRDeviceStatus._(
      valueString: value,
      element: element,
    );
  }

  /// active
  static final FHIRDeviceStatus active = FHIRDeviceStatus._(
    valueString: 'active',
    system: 'http://hl7.org/fhir/ValueSet/device-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Active'.toFhirString,
  );

  /// inactive
  static final FHIRDeviceStatus inactive = FHIRDeviceStatus._(
    valueString: 'inactive',
    system: 'http://hl7.org/fhir/ValueSet/device-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Inactive'.toFhirString,
  );

  /// entered_in_error
  static final FHIRDeviceStatus entered_in_error = FHIRDeviceStatus._(
    valueString: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/device-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in Error'.toFhirString,
  );

  /// unknown
  static final FHIRDeviceStatus unknown = FHIRDeviceStatus._(
    valueString: 'unknown',
    system: 'http://hl7.org/fhir/ValueSet/device-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Unknown'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final FHIRDeviceStatus elementOnly =
      FHIRDeviceStatus._(valueString: '');

  /// List of all enum-like values
  static final List<FHIRDeviceStatus> values = [
    active,
    inactive,
    entered_in_error,
    unknown,
  ];

  /// Clones the current instance
  @override
  FHIRDeviceStatus clone() => FHIRDeviceStatus._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  FHIRDeviceStatus withElement(Element? newElement) {
    return FHIRDeviceStatus._(
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
  FHIRDeviceStatus copyWith({
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
        'Invalid input for FHIRDeviceStatus: $newValue',
      );
    }
    return FHIRDeviceStatus._(
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
