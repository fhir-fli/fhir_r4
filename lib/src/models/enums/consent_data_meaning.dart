// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How a resource reference is interpreted when testing consent restrictions.
class ConsentDataMeaning extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ConsentDataMeaning._(super.value, [super.element]);

  /// Factory constructor to create [ConsentDataMeaning] from JSON.
  factory ConsentDataMeaning.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentDataMeaning.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConsentDataMeaning cannot be constructed from JSON.',
      );
    }
    return ConsentDataMeaning._(value, element);
  }

  /// instance
  static final ConsentDataMeaning instance = ConsentDataMeaning._(
    'instance',
  );

  /// related
  static final ConsentDataMeaning related = ConsentDataMeaning._(
    'related',
  );

  /// dependents
  static final ConsentDataMeaning dependents = ConsentDataMeaning._(
    'dependents',
  );

  /// authoredby
  static final ConsentDataMeaning authoredby = ConsentDataMeaning._(
    'authoredby',
  );

  /// For instances where an Element is present but not value

  static final ConsentDataMeaning elementOnly = ConsentDataMeaning._('');

  /// List of all enum-like values
  static final List<ConsentDataMeaning> values = [
    instance,
    related,
    dependents,
    authoredby,
  ];

  /// Clones the current instance
  @override
  ConsentDataMeaning clone() => ConsentDataMeaning._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ConsentDataMeaning setElement(
    String name,
    dynamic elementValue,
  ) {
    return ConsentDataMeaning._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ConsentDataMeaning withElement(Element? newElement) {
    return ConsentDataMeaning._(value, newElement);
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
  ConsentDataMeaning copyWith({
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
    return ConsentDataMeaning._(
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
