// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The aspect of quality, confidence, or certainty.
class EvidenceCertaintyType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  EvidenceCertaintyType._(super.value, [super.element]);

  /// Factory constructor to create [EvidenceCertaintyType] from JSON.
  factory EvidenceCertaintyType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceCertaintyType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'EvidenceCertaintyType cannot be constructed from JSON.');
    }
    return EvidenceCertaintyType._(value, element);
  }

  /// Overall
  static final EvidenceCertaintyType Overall = EvidenceCertaintyType._(
    'Overall',
  );

  /// RiskOfBias
  static final EvidenceCertaintyType RiskOfBias = EvidenceCertaintyType._(
    'RiskOfBias',
  );

  /// Inconsistency
  static final EvidenceCertaintyType Inconsistency = EvidenceCertaintyType._(
    'Inconsistency',
  );

  /// Indirectness
  static final EvidenceCertaintyType Indirectness = EvidenceCertaintyType._(
    'Indirectness',
  );

  /// Imprecision
  static final EvidenceCertaintyType Imprecision = EvidenceCertaintyType._(
    'Imprecision',
  );

  /// PublicationBias
  static final EvidenceCertaintyType PublicationBias = EvidenceCertaintyType._(
    'PublicationBias',
  );

  /// DoseResponseGradient
  static final EvidenceCertaintyType DoseResponseGradient =
      EvidenceCertaintyType._(
    'DoseResponseGradient',
  );

  /// PlausibleConfounding
  static final EvidenceCertaintyType PlausibleConfounding =
      EvidenceCertaintyType._(
    'PlausibleConfounding',
  );

  /// LargeEffect
  static final EvidenceCertaintyType LargeEffect = EvidenceCertaintyType._(
    'LargeEffect',
  );

  /// For instances where an Element is present but not value

  static final EvidenceCertaintyType elementOnly = EvidenceCertaintyType._('');

  /// List of all enum-like values
  static final List<EvidenceCertaintyType> values = [
    Overall,
    RiskOfBias,
    Inconsistency,
    Indirectness,
    Imprecision,
    PublicationBias,
    DoseResponseGradient,
    PlausibleConfounding,
    LargeEffect,
  ];

  /// Clones the current instance
  @override
  EvidenceCertaintyType clone() => EvidenceCertaintyType._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  EvidenceCertaintyType setElement(
    String name,
    dynamic elementValue,
  ) {
    return EvidenceCertaintyType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  EvidenceCertaintyType withElement(Element? newElement) {
    return EvidenceCertaintyType._(value, newElement);
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
  EvidenceCertaintyType copyWith({
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
    return EvidenceCertaintyType._(
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
