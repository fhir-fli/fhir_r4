// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Biologically Derived Product Category.
class BiologicallyDerivedProductCategory extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  BiologicallyDerivedProductCategory._(super.value, [super.element]);

  /// Factory constructor to create [BiologicallyDerivedProductCategory] from JSON.
  factory BiologicallyDerivedProductCategory.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BiologicallyDerivedProductCategory.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'BiologicallyDerivedProductCategory cannot be constructed from JSON.',
      );
    }
    return BiologicallyDerivedProductCategory._(value, element);
  }

  /// organ
  static final BiologicallyDerivedProductCategory organ =
      BiologicallyDerivedProductCategory._(
    'organ',
  );

  /// tissue
  static final BiologicallyDerivedProductCategory tissue =
      BiologicallyDerivedProductCategory._(
    'tissue',
  );

  /// fluid
  static final BiologicallyDerivedProductCategory fluid =
      BiologicallyDerivedProductCategory._(
    'fluid',
  );

  /// cells
  static final BiologicallyDerivedProductCategory cells =
      BiologicallyDerivedProductCategory._(
    'cells',
  );

  /// biologicalAgent
  static final BiologicallyDerivedProductCategory biologicalAgent =
      BiologicallyDerivedProductCategory._(
    'biologicalAgent',
  );

  /// For instances where an Element is present but not value

  static final BiologicallyDerivedProductCategory elementOnly =
      BiologicallyDerivedProductCategory._('');

  /// List of all enum-like values
  static final List<BiologicallyDerivedProductCategory> values = [
    organ,
    tissue,
    fluid,
    cells,
    biologicalAgent,
  ];

  /// Clones the current instance
  @override
  BiologicallyDerivedProductCategory clone() =>
      BiologicallyDerivedProductCategory._(
        value,
        element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  BiologicallyDerivedProductCategory withElement(Element? newElement) {
    return BiologicallyDerivedProductCategory._(value, newElement);
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
  BiologicallyDerivedProductCategory copyWith({
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
    return BiologicallyDerivedProductCategory._(
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
