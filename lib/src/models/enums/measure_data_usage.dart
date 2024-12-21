// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The intended usage for supplemental data elements in the measure.
class MeasureDataUsage extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MeasureDataUsage._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [MeasureDataUsage] from JSON.
  factory MeasureDataUsage.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureDataUsage.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MeasureDataUsage cannot be constructed from JSON.',
      );
    }
    return MeasureDataUsage._(value, element: element);
  }

  /// supplemental_data
  static final MeasureDataUsage supplemental_data = MeasureDataUsage._(
    'supplemental-data',
  );

  /// risk_adjustment_factor
  static final MeasureDataUsage risk_adjustment_factor = MeasureDataUsage._(
    'risk-adjustment-factor',
  );

  /// For instances where an Element is present but not value

  static final MeasureDataUsage elementOnly = MeasureDataUsage._('');

  /// List of all enum-like values
  static final List<MeasureDataUsage> values = [
    supplemental_data,
    risk_adjustment_factor,
  ];

  /// Clones the current instance
  @override
  MeasureDataUsage clone() => MeasureDataUsage._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  MeasureDataUsage withElement(Element? newElement) {
    return MeasureDataUsage._(
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
  MeasureDataUsage copyWith({
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
    return MeasureDataUsage._(
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
