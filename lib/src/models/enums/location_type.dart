// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This example value set defines a set of codes that can be used to indicate the physical form of the Location.
class LocationType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  LocationType._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [LocationType] from JSON.
  factory LocationType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LocationType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'LocationType cannot be constructed from JSON.',
      );
    }
    return LocationType._(value, element: element);
  }

  /// si
  static final LocationType si = LocationType._(
    'si',
  );

  /// bu
  static final LocationType bu = LocationType._(
    'bu',
  );

  /// wi
  static final LocationType wi = LocationType._(
    'wi',
  );

  /// wa
  static final LocationType wa = LocationType._(
    'wa',
  );

  /// lvl
  static final LocationType lvl = LocationType._(
    'lvl',
  );

  /// co
  static final LocationType co = LocationType._(
    'co',
  );

  /// ro
  static final LocationType ro = LocationType._(
    'ro',
  );

  /// bd
  static final LocationType bd = LocationType._(
    'bd',
  );

  /// ve
  static final LocationType ve = LocationType._(
    've',
  );

  /// ho
  static final LocationType ho = LocationType._(
    'ho',
  );

  /// ca
  static final LocationType ca = LocationType._(
    'ca',
  );

  /// rd
  static final LocationType rd = LocationType._(
    'rd',
  );

  /// area
  static final LocationType area = LocationType._(
    'area',
  );

  /// jdn
  static final LocationType jdn = LocationType._(
    'jdn',
  );

  /// For instances where an Element is present but not value

  static final LocationType elementOnly = LocationType._('');

  /// List of all enum-like values
  static final List<LocationType> values = [
    si,
    bu,
    wi,
    wa,
    lvl,
    co,
    ro,
    bd,
    ve,
    ho,
    ca,
    rd,
    area,
    jdn,
  ];

  /// Clones the current instance
  @override
  LocationType clone() => LocationType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  LocationType withElement(Element? newElement) {
    return LocationType._(
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
  LocationType copyWith({
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
    return LocationType._(
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
