// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This example value set defines a set of codes that can be used to indicate the type of encounter: a specific code indicating type of service provided.
class EncounterType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  EncounterType._(super.value, [super.element]);

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
    return EncounterType._(value, element);
  }

  /// ADMS
  static final EncounterType ADMS = EncounterType._(
    'ADMS',
  );

  /// BD_BM_clin
  static final EncounterType BD_BM_clin = EncounterType._(
    'BD/BM-clin',
  );

  /// CCS60
  static final EncounterType CCS60 = EncounterType._(
    'CCS60',
  );

  /// OKI
  static final EncounterType OKI = EncounterType._(
    'OKI',
  );

  /// For instances where an Element is present but not value

  static final EncounterType elementOnly = EncounterType._('');

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
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  EncounterType setElement(
    String name,
    dynamic elementValue,
  ) {
    return EncounterType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  EncounterType withElement(Element? newElement) {
    return EncounterType._(value, newElement);
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return EncounterType._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
