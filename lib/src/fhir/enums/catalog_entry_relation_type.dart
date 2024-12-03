// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of relations between entries.
class CatalogEntryRelationType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  CatalogEntryRelationType._(super.value, [super.element]);

  /// Factory constructor to create [CatalogEntryRelationType] from JSON.
  factory CatalogEntryRelationType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CatalogEntryRelationType.elementOnly.withElement(element);
    }
    return CatalogEntryRelationType._(value, element);
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
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  CatalogEntryRelationType setElement(
    String name,
    dynamic elementValue,
  ) {
    return CatalogEntryRelationType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  CatalogEntryRelationType withElement(Element? newElement) {
    return CatalogEntryRelationType._(value, newElement);
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return CatalogEntryRelationType._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
