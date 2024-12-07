// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This example value set defines a set of codes that can be used to indicate the type of encounter: a specific code indicating type of service provided.
class EncounterType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  EncounterType._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [EncounterType] from JSON.
  factory EncounterType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EncounterType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EncounterType cannot be constructed from JSON.',
      );
    }
    return EncounterType._(value: value, element: element);
  }

  /// ADMS
  static final EncounterType ADMS = EncounterType._(
    value: 'ADMS',
  );

  /// BD_BM_clin
  static final EncounterType BD_BM_clin = EncounterType._(
    value: 'BD/BM-clin',
  );

  /// CCS60
  static final EncounterType CCS60 = EncounterType._(
    value: 'CCS60',
  );

  /// OKI
  static final EncounterType OKI = EncounterType._(
    value: 'OKI',
  );

  /// For instances where an Element is present but not value

  static final EncounterType elementOnly = EncounterType._(value: '');

  /// List of all enum-like values
  static final List<EncounterType> values = [
    ADMS,
    BD_BM_clin,
    CCS60,
    OKI,
  ];

  /// Clones the current instance
  @override
  EncounterType clone() => EncounterType._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  EncounterType withElement(Element? newElement) {
    return EncounterType._(value: value, element: newElement);
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
  EncounterType copyWith({
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
    return EncounterType._(
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
