// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The aspect of quality, confidence, or certainty.
class EvidenceCertaintyType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  EvidenceCertaintyType._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

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
        'EvidenceCertaintyType cannot be constructed from JSON.',
      );
    }
    return EvidenceCertaintyType._(value: value, element: element);
  }

  /// Overall
  static final EvidenceCertaintyType Overall = EvidenceCertaintyType._(
    value: 'Overall',
  );

  /// RiskOfBias
  static final EvidenceCertaintyType RiskOfBias = EvidenceCertaintyType._(
    value: 'RiskOfBias',
  );

  /// Inconsistency
  static final EvidenceCertaintyType Inconsistency = EvidenceCertaintyType._(
    value: 'Inconsistency',
  );

  /// Indirectness
  static final EvidenceCertaintyType Indirectness = EvidenceCertaintyType._(
    value: 'Indirectness',
  );

  /// Imprecision
  static final EvidenceCertaintyType Imprecision = EvidenceCertaintyType._(
    value: 'Imprecision',
  );

  /// PublicationBias
  static final EvidenceCertaintyType PublicationBias = EvidenceCertaintyType._(
    value: 'PublicationBias',
  );

  /// DoseResponseGradient
  static final EvidenceCertaintyType DoseResponseGradient =
      EvidenceCertaintyType._(
    value: 'DoseResponseGradient',
  );

  /// PlausibleConfounding
  static final EvidenceCertaintyType PlausibleConfounding =
      EvidenceCertaintyType._(
    value: 'PlausibleConfounding',
  );

  /// LargeEffect
  static final EvidenceCertaintyType LargeEffect = EvidenceCertaintyType._(
    value: 'LargeEffect',
  );

  /// For instances where an Element is present but not value

  static final EvidenceCertaintyType elementOnly =
      EvidenceCertaintyType._(value: '');

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
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  EvidenceCertaintyType withElement(Element? newElement) {
    return EvidenceCertaintyType._(value: value, element: newElement);
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
    return EvidenceCertaintyType._(
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
