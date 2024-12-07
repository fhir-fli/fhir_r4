// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Unified Code for Units of Measure (UCUM). This value set includes all UCUM codes
class CommonUCUMCodesForDuration extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  CommonUCUMCodesForDuration._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [CommonUCUMCodesForDuration] from JSON.
  factory CommonUCUMCodesForDuration.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommonUCUMCodesForDuration.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CommonUCUMCodesForDuration cannot be constructed from JSON.',
      );
    }
    return CommonUCUMCodesForDuration._(value: value, element: element);
  }

  /// ms
  static final CommonUCUMCodesForDuration ms = CommonUCUMCodesForDuration._(
    value: 'ms',
  );

  /// s
  static final CommonUCUMCodesForDuration s = CommonUCUMCodesForDuration._(
    value: 's',
  );

  /// min
  static final CommonUCUMCodesForDuration min = CommonUCUMCodesForDuration._(
    value: 'min',
  );

  /// h
  static final CommonUCUMCodesForDuration h = CommonUCUMCodesForDuration._(
    value: 'h',
  );

  /// d
  static final CommonUCUMCodesForDuration d = CommonUCUMCodesForDuration._(
    value: 'd',
  );

  /// wk
  static final CommonUCUMCodesForDuration wk = CommonUCUMCodesForDuration._(
    value: 'wk',
  );

  /// mo
  static final CommonUCUMCodesForDuration mo = CommonUCUMCodesForDuration._(
    value: 'mo',
  );

  /// a
  static final CommonUCUMCodesForDuration a = CommonUCUMCodesForDuration._(
    value: 'a',
  );

  /// For instances where an Element is present but not value

  static final CommonUCUMCodesForDuration elementOnly =
      CommonUCUMCodesForDuration._(value: '');

  /// List of all enum-like values
  static final List<CommonUCUMCodesForDuration> values = [
    ms,
    s,
    min,
    h,
    d,
    wk,
    mo,
    a,
  ];

  /// Clones the current instance
  @override
  CommonUCUMCodesForDuration clone() => CommonUCUMCodesForDuration._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  CommonUCUMCodesForDuration withElement(Element? newElement) {
    return CommonUCUMCodesForDuration._(value: value, element: newElement);
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
  CommonUCUMCodesForDuration copyWith({
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
    return CommonUCUMCodesForDuration._(
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
