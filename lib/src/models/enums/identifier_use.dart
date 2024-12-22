// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Identifies the purpose for this identifier, if known .
class IdentifierUse extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  IdentifierUse._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [IdentifierUse] from JSON.
  factory IdentifierUse.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IdentifierUse.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'IdentifierUse cannot be constructed from JSON.',
      );
    }
    return IdentifierUse._(
      value,
      element: element,
    );
  }

  /// usual
  static final IdentifierUse usual = IdentifierUse._(
    'usual',
  );

  /// official
  static final IdentifierUse official = IdentifierUse._(
    'official',
  );

  /// temp
  static final IdentifierUse temp = IdentifierUse._(
    'temp',
  );

  /// secondary
  static final IdentifierUse secondary = IdentifierUse._(
    'secondary',
  );

  /// old
  static final IdentifierUse old = IdentifierUse._(
    'old',
  );

  /// For instances where an Element is present but not value

  static final IdentifierUse elementOnly = IdentifierUse._('');

  /// List of all enum-like values
  static final List<IdentifierUse> values = [
    usual,
    official,
    temp,
    secondary,
    old,
  ];

  /// Clones the current instance
  @override
  IdentifierUse clone() => IdentifierUse._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  IdentifierUse withElement(Element? newElement) {
    return IdentifierUse._(
      value,
      element: newElement,
    );
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
  IdentifierUse copyWith({
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
    return IdentifierUse._(
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
