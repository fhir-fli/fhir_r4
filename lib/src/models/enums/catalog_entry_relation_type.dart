// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of relations between entries.
class CatalogEntryRelationType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  CatalogEntryRelationType._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [CatalogEntryRelationType] from JSON.
  factory CatalogEntryRelationType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CatalogEntryRelationType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CatalogEntryRelationType cannot be constructed from JSON.',
      );
    }
    return CatalogEntryRelationType._(
      value,
      element: element,
    );
  }

  /// triggers
  static final CatalogEntryRelationType triggers = CatalogEntryRelationType._(
    'triggers',
  );

  /// is_replaced_by
  static final CatalogEntryRelationType is_replaced_by =
      CatalogEntryRelationType._(
    'is-replaced-by',
  );

  /// For instances where an Element is present but not value

  static final CatalogEntryRelationType elementOnly =
      CatalogEntryRelationType._('');

  /// List of all enum-like values
  static final List<CatalogEntryRelationType> values = [
    triggers,
    is_replaced_by,
  ];

  /// Clones the current instance
  @override
  CatalogEntryRelationType clone() => CatalogEntryRelationType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  CatalogEntryRelationType withElement(Element? newElement) {
    return CatalogEntryRelationType._(
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
  CatalogEntryRelationType copyWith({
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
    return CatalogEntryRelationType._(
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
