// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The assessment of quality, confidence, or certainty.
class EvidenceCertaintyRating extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  EvidenceCertaintyRating._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [EvidenceCertaintyRating] from JSON.
  factory EvidenceCertaintyRating.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceCertaintyRating.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EvidenceCertaintyRating cannot be constructed from JSON.',
      );
    }
    return EvidenceCertaintyRating._(value, element: element);
  }

  /// high
  static final EvidenceCertaintyRating high = EvidenceCertaintyRating._(
    'high',
  );

  /// moderate
  static final EvidenceCertaintyRating moderate = EvidenceCertaintyRating._(
    'moderate',
  );

  /// low
  static final EvidenceCertaintyRating low = EvidenceCertaintyRating._(
    'low',
  );

  /// very_low
  static final EvidenceCertaintyRating very_low = EvidenceCertaintyRating._(
    'very-low',
  );

  /// no_concern
  static final EvidenceCertaintyRating no_concern = EvidenceCertaintyRating._(
    'no-concern',
  );

  /// serious_concern
  static final EvidenceCertaintyRating serious_concern =
      EvidenceCertaintyRating._(
    'serious-concern',
  );

  /// very_serious_concern
  static final EvidenceCertaintyRating very_serious_concern =
      EvidenceCertaintyRating._(
    'very-serious-concern',
  );

  /// extremely_serious_concern
  static final EvidenceCertaintyRating extremely_serious_concern =
      EvidenceCertaintyRating._(
    'extremely-serious-concern',
  );

  /// present
  static final EvidenceCertaintyRating present = EvidenceCertaintyRating._(
    'present',
  );

  /// absent
  static final EvidenceCertaintyRating absent = EvidenceCertaintyRating._(
    'absent',
  );

  /// no_change
  static final EvidenceCertaintyRating no_change = EvidenceCertaintyRating._(
    'no-change',
  );

  /// downcode1
  static final EvidenceCertaintyRating downcode1 = EvidenceCertaintyRating._(
    'downcode1',
  );

  /// downcode2
  static final EvidenceCertaintyRating downcode2 = EvidenceCertaintyRating._(
    'downcode2',
  );

  /// downcode3
  static final EvidenceCertaintyRating downcode3 = EvidenceCertaintyRating._(
    'downcode3',
  );

  /// upcode1
  static final EvidenceCertaintyRating upcode1 = EvidenceCertaintyRating._(
    'upcode1',
  );

  /// upcode2
  static final EvidenceCertaintyRating upcode2 = EvidenceCertaintyRating._(
    'upcode2',
  );

  /// For instances where an Element is present but not value

  static final EvidenceCertaintyRating elementOnly =
      EvidenceCertaintyRating._('');

  /// List of all enum-like values
  static final List<EvidenceCertaintyRating> values = [
    high,
    moderate,
    low,
    very_low,
    no_concern,
    serious_concern,
    very_serious_concern,
    extremely_serious_concern,
    present,
    absent,
    no_change,
    downcode1,
    downcode2,
    downcode3,
    upcode1,
    upcode2,
  ];

  /// Clones the current instance
  @override
  EvidenceCertaintyRating clone() => EvidenceCertaintyRating._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  EvidenceCertaintyRating withElement(Element? newElement) {
    return EvidenceCertaintyRating._(value, element: newElement);
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
  EvidenceCertaintyRating copyWith({
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
    return EvidenceCertaintyRating._(
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
