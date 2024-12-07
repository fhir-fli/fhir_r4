// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes smattering of Adjudication Reason codes.
class AdjudicationReasonCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  AdjudicationReasonCodes._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [AdjudicationReasonCodes] from JSON.
  factory AdjudicationReasonCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdjudicationReasonCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AdjudicationReasonCodes cannot be constructed from JSON.',
      );
    }
    return AdjudicationReasonCodes._(value: value, element: element);
  }

  /// ar001
  static final AdjudicationReasonCodes ar001 = AdjudicationReasonCodes._(
    value: 'ar001',
  );

  /// ar002
  static final AdjudicationReasonCodes ar002 = AdjudicationReasonCodes._(
    value: 'ar002',
  );

  /// For instances where an Element is present but not value

  static final AdjudicationReasonCodes elementOnly =
      AdjudicationReasonCodes._(value: '');

  /// List of all enum-like values
  static final List<AdjudicationReasonCodes> values = [
    ar001,
    ar002,
  ];

  /// Clones the current instance
  @override
  AdjudicationReasonCodes clone() => AdjudicationReasonCodes._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AdjudicationReasonCodes withElement(Element? newElement) {
    return AdjudicationReasonCodes._(value: value, element: newElement);
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
  AdjudicationReasonCodes copyWith({
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
    return AdjudicationReasonCodes._(
      value: newValue ?? value,
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
