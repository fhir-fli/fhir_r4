// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Example list of general categories for flagged issues. (Not complete or necessarily appropriate.)
class FlagCategory extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  FlagCategory._(super.value, [super.element]);

  /// Factory constructor to create [FlagCategory] from JSON.
  factory FlagCategory.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FlagCategory.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FlagCategory cannot be constructed from JSON.',
      );
    }
    return FlagCategory._(value, element);
  }

  /// diet
  static final FlagCategory diet = FlagCategory._(
    'diet',
  );

  /// drug
  static final FlagCategory drug = FlagCategory._(
    'drug',
  );

  /// lab
  static final FlagCategory lab = FlagCategory._(
    'lab',
  );

  /// admin
  static final FlagCategory admin = FlagCategory._(
    'admin',
  );

  /// contact
  static final FlagCategory contact = FlagCategory._(
    'contact',
  );

  /// clinical
  static final FlagCategory clinical = FlagCategory._(
    'clinical',
  );

  /// behavioral
  static final FlagCategory behavioral = FlagCategory._(
    'behavioral',
  );

  /// research
  static final FlagCategory research = FlagCategory._(
    'research',
  );

  /// advance_directive
  static final FlagCategory advance_directive = FlagCategory._(
    'advance-directive',
  );

  /// safety
  static final FlagCategory safety = FlagCategory._(
    'safety',
  );

  /// For instances where an Element is present but not value

  static final FlagCategory elementOnly = FlagCategory._('');

  /// List of all enum-like values
  static final List<FlagCategory> values = [
    diet,
    drug,
    lab,
    admin,
    contact,
    clinical,
    behavioral,
    research,
    advance_directive,
    safety,
  ];

  /// Clones the current instance
  @override
  FlagCategory clone() => FlagCategory._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  FlagCategory setElement(
    String name,
    dynamic elementValue,
  ) {
    return FlagCategory._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  FlagCategory withElement(Element? newElement) {
    return FlagCategory._(value, newElement);
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
  FlagCategory copyWith({
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
    return FlagCategory._(
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
