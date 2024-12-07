// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// EnteralRouteOfAdministration: Codes specifying the route of administration of enteral formula. This value set is composed of HL7 V3 codes and is provided as a suggestive example.
class EnteralRouteCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  EnteralRouteCodes._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [EnteralRouteCodes] from JSON.
  factory EnteralRouteCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EnteralRouteCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EnteralRouteCodes cannot be constructed from JSON.',
      );
    }
    return EnteralRouteCodes._(value: value, element: element);
  }

  /// PO
  static final EnteralRouteCodes PO = EnteralRouteCodes._(
    value: 'PO',
  );

  /// EFT
  static final EnteralRouteCodes EFT = EnteralRouteCodes._(
    value: 'EFT',
  );

  /// ENTINSTL
  static final EnteralRouteCodes ENTINSTL = EnteralRouteCodes._(
    value: 'ENTINSTL',
  );

  /// GT
  static final EnteralRouteCodes GT = EnteralRouteCodes._(
    value: 'GT',
  );

  /// NGT
  static final EnteralRouteCodes NGT = EnteralRouteCodes._(
    value: 'NGT',
  );

  /// OGT
  static final EnteralRouteCodes OGT = EnteralRouteCodes._(
    value: 'OGT',
  );

  /// GJT
  static final EnteralRouteCodes GJT = EnteralRouteCodes._(
    value: 'GJT',
  );

  /// JJTINSTL
  static final EnteralRouteCodes JJTINSTL = EnteralRouteCodes._(
    value: 'JJTINSTL',
  );

  /// OJJ
  static final EnteralRouteCodes OJJ = EnteralRouteCodes._(
    value: 'OJJ',
  );

  /// For instances where an Element is present but not value

  static final EnteralRouteCodes elementOnly = EnteralRouteCodes._(value: '');

  /// List of all enum-like values
  static final List<EnteralRouteCodes> values = [
    PO,
    EFT,
    ENTINSTL,
    GT,
    NGT,
    OGT,
    GJT,
    JJTINSTL,
    OJJ,
  ];

  /// Clones the current instance
  @override
  EnteralRouteCodes clone() => EnteralRouteCodes._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  EnteralRouteCodes withElement(Element? newElement) {
    return EnteralRouteCodes._(value: value, element: newElement);
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
  EnteralRouteCodes copyWith({
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
    return EnteralRouteCodes._(
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
