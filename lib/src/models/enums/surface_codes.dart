// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a smattering of FDI tooth surface codes.
class SurfaceCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  SurfaceCodes._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [SurfaceCodes] from JSON.
  factory SurfaceCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SurfaceCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SurfaceCodes cannot be constructed from JSON.',
      );
    }
    return SurfaceCodes._(value: value, element: element);
  }

  /// M
  static final SurfaceCodes M = SurfaceCodes._(
    value: 'M',
  );

  /// O
  static final SurfaceCodes O = SurfaceCodes._(
    value: 'O',
  );

  /// I
  static final SurfaceCodes I = SurfaceCodes._(
    value: 'I',
  );

  /// D
  static final SurfaceCodes D = SurfaceCodes._(
    value: 'D',
  );

  /// B
  static final SurfaceCodes B = SurfaceCodes._(
    value: 'B',
  );

  /// V
  static final SurfaceCodes V = SurfaceCodes._(
    value: 'V',
  );

  /// L
  static final SurfaceCodes L = SurfaceCodes._(
    value: 'L',
  );

  /// MO
  static final SurfaceCodes MO = SurfaceCodes._(
    value: 'MO',
  );

  /// DO
  static final SurfaceCodes DO = SurfaceCodes._(
    value: 'DO',
  );

  /// DI
  static final SurfaceCodes DI = SurfaceCodes._(
    value: 'DI',
  );

  /// MOD
  static final SurfaceCodes MOD = SurfaceCodes._(
    value: 'MOD',
  );

  /// For instances where an Element is present but not value

  static final SurfaceCodes elementOnly = SurfaceCodes._(value: '');

  /// List of all enum-like values
  static final List<SurfaceCodes> values = [
    M,
    O,
    I,
    D,
    B,
    V,
    L,
    MO,
    DO,
    DI,
    MOD,
  ];

  /// Clones the current instance
  @override
  SurfaceCodes clone() => SurfaceCodes._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SurfaceCodes withElement(Element? newElement) {
    return SurfaceCodes._(value: value, element: newElement);
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
  SurfaceCodes copyWith({
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
    return SurfaceCodes._(
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
