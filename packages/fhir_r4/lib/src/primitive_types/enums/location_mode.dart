// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Indicates whether a resource instance represents a specific location or
/// a class of locations.
class LocationMode extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  LocationMode._({
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
  factory LocationMode(
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
    return LocationMode._(
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

  /// Create empty [LocationMode] with element only
  factory LocationMode.empty() => LocationMode._(valueString: '');

  /// Factory constructor to create [LocationMode] from JSON.
  factory LocationMode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LocationMode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'LocationMode cannot be constructed from JSON.',
      );
    }
    return LocationMode._(
      valueString: value,
      element: element,
    );
  }

  /// instance
  static final LocationMode instance = LocationMode._(
    valueString: 'instance',
    system: 'http://hl7.org/fhir/ValueSet/location-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Instance'.toFhirString,
  );

  /// kind
  static final LocationMode kind = LocationMode._(
    valueString: 'kind',
    system: 'http://hl7.org/fhir/ValueSet/location-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Kind'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final LocationMode elementOnly = LocationMode._(valueString: '');

  /// List of all enum-like values
  static final List<LocationMode> values = [
    instance,
    kind,
  ];

  /// Clones the current instance
  @override
  LocationMode clone() => LocationMode._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  LocationMode withElement(Element? newElement) {
    return LocationMode._(
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
  LocationMode copyWith({
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
      throw ArgumentError('Invalid input for LocationMode: $newValue');
    }
    return LocationMode._(
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
