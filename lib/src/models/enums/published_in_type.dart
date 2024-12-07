// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of publication such as book, database, or journal.
class PublishedInType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  PublishedInType._(super.value, [super.element]);

  /// Factory constructor to create [PublishedInType] from JSON.
  factory PublishedInType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PublishedInType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'PublishedInType cannot be constructed from JSON.',
      );
    }
    return PublishedInType._(value, element);
  }

  /// D020492
  static final PublishedInType D020492 = PublishedInType._(
    'D020492',
  );

  /// D019991
  static final PublishedInType D019991 = PublishedInType._(
    'D019991',
  );

  /// D001877
  static final PublishedInType D001877 = PublishedInType._(
    'D001877',
  );

  /// D064886
  static final PublishedInType D064886 = PublishedInType._(
    'D064886',
  );

  /// For instances where an Element is present but not value

  static final PublishedInType elementOnly = PublishedInType._('');

  /// List of all enum-like values
  static final List<PublishedInType> values = [
    D020492,
    D019991,
    D001877,
    D064886,
  ];

  /// Clones the current instance
  @override
  PublishedInType clone() => PublishedInType._(
        value,
        element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  PublishedInType withElement(Element? newElement) {
    return PublishedInType._(value, newElement);
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
  PublishedInType copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    Map<String, List<void Function()>>? propertyChanged,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return PublishedInType._(
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
