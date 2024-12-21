// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Type for strand.
class StrandType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  StrandType._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [StrandType] from JSON.
  factory StrandType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StrandType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StrandType cannot be constructed from JSON.',
      );
    }
    return StrandType._(value, element: element);
  }

  /// watson
  static final StrandType watson = StrandType._(
    'watson',
  );

  /// crick
  static final StrandType crick = StrandType._(
    'crick',
  );

  /// For instances where an Element is present but not value

  static final StrandType elementOnly = StrandType._('');

  /// List of all enum-like values
  static final List<StrandType> values = [
    watson,
    crick,
  ];

  /// Clones the current instance
  @override
  StrandType clone() => StrandType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  StrandType withElement(Element? newElement) {
    return StrandType._(
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
  StrandType copyWith({
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
    return StrandType._(
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
