// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the administrative routes used during vaccination. This value set is provided as a suggestive example.
class ImmunizationRouteCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ImmunizationRouteCodes._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ImmunizationRouteCodes] from JSON.
  factory ImmunizationRouteCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationRouteCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ImmunizationRouteCodes cannot be constructed from JSON.',
      );
    }
    return ImmunizationRouteCodes._(value: value, element: element);
  }

  /// IDINJ
  static final ImmunizationRouteCodes IDINJ = ImmunizationRouteCodes._(
    value: 'IDINJ',
  );

  /// IM
  static final ImmunizationRouteCodes IM = ImmunizationRouteCodes._(
    value: 'IM',
  );

  /// NASINHLC
  static final ImmunizationRouteCodes NASINHLC = ImmunizationRouteCodes._(
    value: 'NASINHLC',
  );

  /// IVINJ
  static final ImmunizationRouteCodes IVINJ = ImmunizationRouteCodes._(
    value: 'IVINJ',
  );

  /// PO
  static final ImmunizationRouteCodes PO = ImmunizationRouteCodes._(
    value: 'PO',
  );

  /// SQ
  static final ImmunizationRouteCodes SQ = ImmunizationRouteCodes._(
    value: 'SQ',
  );

  /// TRNSDERM
  static final ImmunizationRouteCodes TRNSDERM = ImmunizationRouteCodes._(
    value: 'TRNSDERM',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationRouteCodes elementOnly =
      ImmunizationRouteCodes._(value: '');

  /// List of all enum-like values
  static final List<ImmunizationRouteCodes> values = [
    IDINJ,
    IM,
    NASINHLC,
    IVINJ,
    PO,
    SQ,
    TRNSDERM,
  ];

  /// Clones the current instance
  @override
  ImmunizationRouteCodes clone() => ImmunizationRouteCodes._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ImmunizationRouteCodes withElement(Element? newElement) {
    return ImmunizationRouteCodes._(value: value, element: newElement);
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
  ImmunizationRouteCodes copyWith({
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
    return ImmunizationRouteCodes._(
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
