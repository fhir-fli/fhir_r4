// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Unified Code for Units of Measure (UCUM). This value set includes common UCUM codes for units of distance
class CommonUCUMCodesForDistance extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  CommonUCUMCodesForDistance._(super.value, [super.element]);

  /// Factory constructor to create [CommonUCUMCodesForDistance] from JSON.
  factory CommonUCUMCodesForDistance.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommonUCUMCodesForDistance.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CommonUCUMCodesForDistance cannot be constructed from JSON.',
      );
    }
    return CommonUCUMCodesForDistance._(value, element);
  }

  /// nm
  static final CommonUCUMCodesForDistance nm = CommonUCUMCodesForDistance._(
    'nm',
  );

  /// um
  static final CommonUCUMCodesForDistance um = CommonUCUMCodesForDistance._(
    'um',
  );

  /// mm
  static final CommonUCUMCodesForDistance mm = CommonUCUMCodesForDistance._(
    'mm',
  );

  /// m
  static final CommonUCUMCodesForDistance m = CommonUCUMCodesForDistance._(
    'm',
  );

  /// km
  static final CommonUCUMCodesForDistance km = CommonUCUMCodesForDistance._(
    'km',
  );

  /// For instances where an Element is present but not value

  static final CommonUCUMCodesForDistance elementOnly =
      CommonUCUMCodesForDistance._('');

  /// List of all enum-like values
  static final List<CommonUCUMCodesForDistance> values = [
    nm,
    um,
    mm,
    m,
    km,
  ];

  /// Clones the current instance
  @override
  CommonUCUMCodesForDistance clone() => CommonUCUMCodesForDistance._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  CommonUCUMCodesForDistance setElement(
    String name,
    dynamic elementValue,
  ) {
    return CommonUCUMCodesForDistance._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  CommonUCUMCodesForDistance withElement(Element? newElement) {
    return CommonUCUMCodesForDistance._(value, newElement);
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
  CommonUCUMCodesForDistance copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return CommonUCUMCodesForDistance._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
