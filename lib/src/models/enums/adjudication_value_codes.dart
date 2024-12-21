// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a smattering of Adjudication Value codes which includes codes to indicate the amounts eligible under the plan, the amount of benefit, copays etc.
class AdjudicationValueCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  AdjudicationValueCodes._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [AdjudicationValueCodes] from JSON.
  factory AdjudicationValueCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdjudicationValueCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AdjudicationValueCodes cannot be constructed from JSON.',
      );
    }
    return AdjudicationValueCodes._(value, element: element);
  }

  /// submitted
  static final AdjudicationValueCodes submitted = AdjudicationValueCodes._(
    'submitted',
  );

  /// copay
  static final AdjudicationValueCodes copay = AdjudicationValueCodes._(
    'copay',
  );

  /// eligible
  static final AdjudicationValueCodes eligible = AdjudicationValueCodes._(
    'eligible',
  );

  /// deductible
  static final AdjudicationValueCodes deductible = AdjudicationValueCodes._(
    'deductible',
  );

  /// unallocdeduct
  static final AdjudicationValueCodes unallocdeduct = AdjudicationValueCodes._(
    'unallocdeduct',
  );

  /// eligpercent
  static final AdjudicationValueCodes eligpercent = AdjudicationValueCodes._(
    'eligpercent',
  );

  /// tax
  static final AdjudicationValueCodes tax = AdjudicationValueCodes._(
    'tax',
  );

  /// benefit
  static final AdjudicationValueCodes benefit = AdjudicationValueCodes._(
    'benefit',
  );

  /// For instances where an Element is present but not value

  static final AdjudicationValueCodes elementOnly =
      AdjudicationValueCodes._('');

  /// List of all enum-like values
  static final List<AdjudicationValueCodes> values = [
    submitted,
    copay,
    eligible,
    deductible,
    unallocdeduct,
    eligpercent,
    tax,
    benefit,
  ];

  /// Clones the current instance
  @override
  AdjudicationValueCodes clone() => AdjudicationValueCodes._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AdjudicationValueCodes withElement(Element? newElement) {
    return AdjudicationValueCodes._(
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
  AdjudicationValueCodes copyWith({
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
    return AdjudicationValueCodes._(
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
