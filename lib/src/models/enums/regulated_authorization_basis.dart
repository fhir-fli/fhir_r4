// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A legal or regulatory framework against which an authorization is granted, or other reasons for it.
class RegulatedAuthorizationBasis extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  RegulatedAuthorizationBasis._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [RegulatedAuthorizationBasis] from JSON.
  factory RegulatedAuthorizationBasis.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RegulatedAuthorizationBasis.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RegulatedAuthorizationBasis cannot be constructed from JSON.',
      );
    }
    return RegulatedAuthorizationBasis._(value: value, element: element);
  }

  /// Full
  static final RegulatedAuthorizationBasis Full = RegulatedAuthorizationBasis._(
    value: 'Full',
  );

  /// NewSubstance
  static final RegulatedAuthorizationBasis NewSubstance =
      RegulatedAuthorizationBasis._(
    value: 'NewSubstance',
  );

  /// KnownSubstance
  static final RegulatedAuthorizationBasis KnownSubstance =
      RegulatedAuthorizationBasis._(
    value: 'KnownSubstance',
  );

  /// SimilarBiological
  static final RegulatedAuthorizationBasis SimilarBiological =
      RegulatedAuthorizationBasis._(
    value: 'SimilarBiological',
  );

  /// Well_establishedUse
  static final RegulatedAuthorizationBasis Well_establishedUse =
      RegulatedAuthorizationBasis._(
    value: 'Well-establishedUse',
  );

  /// TraditionalUse
  static final RegulatedAuthorizationBasis TraditionalUse =
      RegulatedAuthorizationBasis._(
    value: 'TraditionalUse',
  );

  /// Bibliographical
  static final RegulatedAuthorizationBasis Bibliographical =
      RegulatedAuthorizationBasis._(
    value: 'Bibliographical',
  );

  /// KnownHumanBlood
  static final RegulatedAuthorizationBasis KnownHumanBlood =
      RegulatedAuthorizationBasis._(
    value: 'KnownHumanBlood',
  );

  /// TemporaryUse
  static final RegulatedAuthorizationBasis TemporaryUse =
      RegulatedAuthorizationBasis._(
    value: 'TemporaryUse',
  );

  /// ParallelTrade
  static final RegulatedAuthorizationBasis ParallelTrade =
      RegulatedAuthorizationBasis._(
    value: 'ParallelTrade',
  );

  /// For instances where an Element is present but not value

  static final RegulatedAuthorizationBasis elementOnly =
      RegulatedAuthorizationBasis._(value: '');

  /// List of all enum-like values
  static final List<RegulatedAuthorizationBasis> values = [
    Full,
    NewSubstance,
    KnownSubstance,
    SimilarBiological,
    Well_establishedUse,
    TraditionalUse,
    Bibliographical,
    KnownHumanBlood,
    TemporaryUse,
    ParallelTrade,
  ];

  /// Clones the current instance
  @override
  RegulatedAuthorizationBasis clone() => RegulatedAuthorizationBasis._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  RegulatedAuthorizationBasis withElement(Element? newElement) {
    return RegulatedAuthorizationBasis._(value: value, element: newElement);
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
  RegulatedAuthorizationBasis copyWith({
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
    return RegulatedAuthorizationBasis._(
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
