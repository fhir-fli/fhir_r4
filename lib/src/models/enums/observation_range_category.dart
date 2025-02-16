// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// Codes identifying the category of observation range.
class ObservationRangeCategory extends FhirCode {
  // Private constructor for internal use (like enum)
  ObservationRangeCategory._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [ObservationRangeCategory] with element only
  factory ObservationRangeCategory.empty() => ObservationRangeCategory._('');

  /// Factory constructor to create [ObservationRangeCategory] from JSON.
  factory ObservationRangeCategory.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationRangeCategory.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ObservationRangeCategory cannot be constructed from JSON.',
      );
    }
    return ObservationRangeCategory._(
      value,
      element: element,
    );
  }

  /// reference
  static final ObservationRangeCategory reference = ObservationRangeCategory._(
    'reference',
  );

  /// critical
  static final ObservationRangeCategory critical = ObservationRangeCategory._(
    'critical',
  );

  /// absolute
  static final ObservationRangeCategory absolute = ObservationRangeCategory._(
    'absolute',
  );

  /// For instances where an Element is present but not value

  static final ObservationRangeCategory elementOnly =
      ObservationRangeCategory._('');

  /// List of all enum-like values
  static final List<ObservationRangeCategory> values = [
    reference,
    critical,
    absolute,
  ];

  /// Clones the current instance
  @override
  ObservationRangeCategory clone() => ObservationRangeCategory._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ObservationRangeCategory withElement(Element? newElement) {
    return ObservationRangeCategory._(
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
  ObservationRangeCategory copyWith({
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
    return ObservationRangeCategory._(
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
