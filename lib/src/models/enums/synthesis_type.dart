// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Types of combining results from a body of evidence (eg. summary data meta-analysis).
class SynthesisType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  SynthesisType._(super.value, [super.element]);

  /// Factory constructor to create [SynthesisType] from JSON.
  factory SynthesisType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SynthesisType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SynthesisType cannot be constructed from JSON.',
      );
    }
    return SynthesisType._(value, element);
  }

  /// std_MA
  static final SynthesisType std_MA = SynthesisType._(
    'std-MA',
  );

  /// IPD_MA
  static final SynthesisType IPD_MA = SynthesisType._(
    'IPD-MA',
  );

  /// indirect_NMA
  static final SynthesisType indirect_NMA = SynthesisType._(
    'indirect-NMA',
  );

  /// combined_NMA
  static final SynthesisType combined_NMA = SynthesisType._(
    'combined-NMA',
  );

  /// range
  static final SynthesisType range = SynthesisType._(
    'range',
  );

  /// classification
  static final SynthesisType classification = SynthesisType._(
    'classification',
  );

  /// NotApplicable
  static final SynthesisType NotApplicable = SynthesisType._(
    'NotApplicable',
  );

  /// For instances where an Element is present but not value

  static final SynthesisType elementOnly = SynthesisType._('');

  /// List of all enum-like values
  static final List<SynthesisType> values = [
    std_MA,
    IPD_MA,
    indirect_NMA,
    combined_NMA,
    range,
    classification,
    NotApplicable,
  ];

  /// Clones the current instance
  @override
  SynthesisType clone() => SynthesisType._(
        value,
        element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SynthesisType withElement(Element? newElement) {
    return SynthesisType._(value, newElement);
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
  SynthesisType copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    Map<String, List<void Function()>>? propertyChanged,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return SynthesisType._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
