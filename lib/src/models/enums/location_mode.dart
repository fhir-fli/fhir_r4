// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Indicates whether a resource instance represents a specific location or a class of locations.
class LocationMode extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  LocationMode._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [LocationMode] from JSON.
  factory LocationMode.fromJson(
    Map<String, dynamic> json,
  ) {
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
    return LocationMode._(value, element: element);
  }

  /// instance
  static final LocationMode instance = LocationMode._(
    'instance',
  );

  /// kind
  static final LocationMode kind = LocationMode._(
    'kind',
  );

  /// For instances where an Element is present but not value

  static final LocationMode elementOnly = LocationMode._('');

  /// List of all enum-like values
  static final List<LocationMode> values = [
    instance,
    kind,
  ];

  /// Clones the current instance
  @override
  LocationMode clone() => LocationMode._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  LocationMode withElement(Element? newElement) {
    return LocationMode._(
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
  LocationMode copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return LocationMode._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
