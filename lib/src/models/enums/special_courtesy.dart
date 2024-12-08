// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that can be used to indicate special courtesies provided to the patient.
class SpecialCourtesy extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  SpecialCourtesy._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [SpecialCourtesy] from JSON.
  factory SpecialCourtesy.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SpecialCourtesy.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SpecialCourtesy cannot be constructed from JSON.',
      );
    }
    return SpecialCourtesy._(value, element: element);
  }

  /// EXT
  static final SpecialCourtesy EXT = SpecialCourtesy._(
    'EXT',
  );

  /// NRM
  static final SpecialCourtesy NRM = SpecialCourtesy._(
    'NRM',
  );

  /// PRF
  static final SpecialCourtesy PRF = SpecialCourtesy._(
    'PRF',
  );

  /// STF
  static final SpecialCourtesy STF = SpecialCourtesy._(
    'STF',
  );

  /// VIP
  static final SpecialCourtesy VIP = SpecialCourtesy._(
    'VIP',
  );

  /// UNK
  static final SpecialCourtesy UNK = SpecialCourtesy._(
    'UNK',
  );

  /// For instances where an Element is present but not value

  static final SpecialCourtesy elementOnly = SpecialCourtesy._('');

  /// List of all enum-like values
  static final List<SpecialCourtesy> values = [
    EXT,
    NRM,
    PRF,
    STF,
    VIP,
    UNK,
  ];

  /// Clones the current instance
  @override
  SpecialCourtesy clone() => SpecialCourtesy._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SpecialCourtesy withElement(Element? newElement) {
    return SpecialCourtesy._(value, element: newElement);
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
  SpecialCourtesy copyWith({
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
    return SpecialCourtesy._(
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
