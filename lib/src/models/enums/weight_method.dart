// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The method by which the substance weight was measured.
class WeightMethod extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  WeightMethod._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [WeightMethod] from JSON.
  factory WeightMethod.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return WeightMethod.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'WeightMethod cannot be constructed from JSON.',
      );
    }
    return WeightMethod._(value, element: element);
  }

  /// SDS_PAGE
  static final WeightMethod SDS_PAGE = WeightMethod._(
    'SDS-PAGE',
  );

  /// Calculated
  static final WeightMethod Calculated = WeightMethod._(
    'Calculated',
  );

  /// LighScattering
  static final WeightMethod LighScattering = WeightMethod._(
    'LighScattering',
  );

  /// Viscosity
  static final WeightMethod Viscosity = WeightMethod._(
    'Viscosity',
  );

  /// GelPermeationCentrifugation
  static final WeightMethod GelPermeationCentrifugation = WeightMethod._(
    'GelPermeationCentrifugation',
  );

  /// End_groupAnalysis
  static final WeightMethod End_groupAnalysis = WeightMethod._(
    'End-groupAnalysis',
  );

  /// End_groupTitration
  static final WeightMethod End_groupTitration = WeightMethod._(
    'End-groupTitration',
  );

  /// Size_ExclusionChromatography
  static final WeightMethod Size_ExclusionChromatography = WeightMethod._(
    'Size-ExclusionChromatography',
  );

  /// For instances where an Element is present but not value

  static final WeightMethod elementOnly = WeightMethod._('');

  /// List of all enum-like values
  static final List<WeightMethod> values = [
    SDS_PAGE,
    Calculated,
    LighScattering,
    Viscosity,
    GelPermeationCentrifugation,
    End_groupAnalysis,
    End_groupTitration,
    Size_ExclusionChromatography,
  ];

  /// Clones the current instance
  @override
  WeightMethod clone() => WeightMethod._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  WeightMethod withElement(Element? newElement) {
    return WeightMethod._(
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
  WeightMethod copyWith({
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
    return WeightMethod._(
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
