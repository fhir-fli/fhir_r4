// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// Indicates whether the location is still in use.
class LocationStatus extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  LocationStatus._(
    super.value, {
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [LocationStatus] with element only
  factory LocationStatus.empty() => LocationStatus._('');

  /// Factory constructor to create [LocationStatus] from JSON.
  factory LocationStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LocationStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'LocationStatus cannot be constructed from JSON.',
      );
    }
    return LocationStatus._(
      value,
      element: element,
    );
  }

  /// active
  static final LocationStatus active = LocationStatus._(
    'active',
    system: 'http://hl7.org/fhir/ValueSet/location-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Active'.toFhirString,
  );

  /// suspended
  static final LocationStatus suspended = LocationStatus._(
    'suspended',
    system: 'http://hl7.org/fhir/ValueSet/location-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Suspended'.toFhirString,
  );

  /// inactive
  static final LocationStatus inactive = LocationStatus._(
    'inactive',
    system: 'http://hl7.org/fhir/ValueSet/location-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Inactive'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final LocationStatus elementOnly = LocationStatus._('');

  /// List of all enum-like values
  static final List<LocationStatus> values = [
    active,
    suspended,
    inactive,
  ];

  /// Clones the current instance
  @override
  LocationStatus clone() => LocationStatus._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  LocationStatus withElement(Element? newElement) {
    return LocationStatus._(
      value,
      element: newElement,
    );
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
  LocationStatus copyWith({
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
    return LocationStatus._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
