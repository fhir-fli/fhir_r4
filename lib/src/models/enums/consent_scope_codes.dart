// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes the four Consent scope codes.
class ConsentScopeCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ConsentScopeCodes._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ConsentScopeCodes] from JSON.
  factory ConsentScopeCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentScopeCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConsentScopeCodes cannot be constructed from JSON.',
      );
    }
    return ConsentScopeCodes._(value, element: element);
  }

  /// adr
  static final ConsentScopeCodes adr = ConsentScopeCodes._(
    'adr',
  );

  /// research
  static final ConsentScopeCodes research = ConsentScopeCodes._(
    'research',
  );

  /// patient_privacy
  static final ConsentScopeCodes patient_privacy = ConsentScopeCodes._(
    'patient-privacy',
  );

  /// treatment
  static final ConsentScopeCodes treatment = ConsentScopeCodes._(
    'treatment',
  );

  /// For instances where an Element is present but not value

  static final ConsentScopeCodes elementOnly = ConsentScopeCodes._('');

  /// List of all enum-like values
  static final List<ConsentScopeCodes> values = [
    adr,
    research,
    patient_privacy,
    treatment,
  ];

  /// Clones the current instance
  @override
  ConsentScopeCodes clone() => ConsentScopeCodes._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ConsentScopeCodes withElement(Element? newElement) {
    return ConsentScopeCodes._(value, element: newElement);
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
  ConsentScopeCodes copyWith({
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
    return ConsentScopeCodes._(
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
