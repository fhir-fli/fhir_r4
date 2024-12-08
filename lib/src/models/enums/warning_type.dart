// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Classification of warning type.
class WarningType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  WarningType._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [WarningType] from JSON.
  factory WarningType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return WarningType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'WarningType cannot be constructed from JSON.',
      );
    }
    return WarningType._(value, element: element);
  }

  /// P313
  static final WarningType P313 = WarningType._(
    'P313',
  );

  /// P314
  static final WarningType P314 = WarningType._(
    'P314',
  );

  /// P315
  static final WarningType P315 = WarningType._(
    'P315',
  );

  /// P320
  static final WarningType P320 = WarningType._(
    'P320',
  );

  /// P321
  static final WarningType P321 = WarningType._(
    'P321',
  );

  /// P322
  static final WarningType P322 = WarningType._(
    'P322',
  );

  /// P330
  static final WarningType P330 = WarningType._(
    'P330',
  );

  /// P331
  static final WarningType P331 = WarningType._(
    'P331',
  );

  /// P361
  static final WarningType P361 = WarningType._(
    'P361',
  );

  /// P363
  static final WarningType P363 = WarningType._(
    'P363',
  );

  /// For instances where an Element is present but not value

  static final WarningType elementOnly = WarningType._('');

  /// List of all enum-like values
  static final List<WarningType> values = [
    P313,
    P314,
    P315,
    P320,
    P321,
    P322,
    P330,
    P331,
    P361,
    P363,
  ];

  /// Clones the current instance
  @override
  WarningType clone() => WarningType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  WarningType withElement(Element? newElement) {
    return WarningType._(value, element: newElement);
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
  WarningType copyWith({
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
    return WarningType._(
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
