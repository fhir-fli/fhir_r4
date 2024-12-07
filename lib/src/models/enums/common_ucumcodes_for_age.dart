// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Unified Code for Units of Measure (UCUM). This value set includes all UCUM codes
class CommonUCUMCodesForAge extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  CommonUCUMCodesForAge._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [CommonUCUMCodesForAge] from JSON.
  factory CommonUCUMCodesForAge.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommonUCUMCodesForAge.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CommonUCUMCodesForAge cannot be constructed from JSON.',
      );
    }
    return CommonUCUMCodesForAge._(value: value, element: element);
  }

  /// min
  static final CommonUCUMCodesForAge min = CommonUCUMCodesForAge._(
    value: 'min',
  );

  /// h
  static final CommonUCUMCodesForAge h = CommonUCUMCodesForAge._(
    value: 'h',
  );

  /// d
  static final CommonUCUMCodesForAge d = CommonUCUMCodesForAge._(
    value: 'd',
  );

  /// wk
  static final CommonUCUMCodesForAge wk = CommonUCUMCodesForAge._(
    value: 'wk',
  );

  /// mo
  static final CommonUCUMCodesForAge mo = CommonUCUMCodesForAge._(
    value: 'mo',
  );

  /// a
  static final CommonUCUMCodesForAge a = CommonUCUMCodesForAge._(
    value: 'a',
  );

  /// For instances where an Element is present but not value

  static final CommonUCUMCodesForAge elementOnly =
      CommonUCUMCodesForAge._(value: '');

  /// List of all enum-like values
  static final List<CommonUCUMCodesForAge> values = [
    min,
    h,
    d,
    wk,
    mo,
    a,
  ];

  /// Clones the current instance
  @override
  CommonUCUMCodesForAge clone() => CommonUCUMCodesForAge._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  CommonUCUMCodesForAge withElement(Element? newElement) {
    return CommonUCUMCodesForAge._(value: value, element: newElement);
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
  CommonUCUMCodesForAge copyWith({
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
    return CommonUCUMCodesForAge._(
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
