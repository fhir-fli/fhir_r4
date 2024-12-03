// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Indicates the state of the consent.
class ConsentState extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ConsentState._(super.value, [super.element]);

  /// Factory constructor to create [ConsentState] from JSON.
  factory ConsentState.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentState.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError('ConsentState cannot be constructed from JSON.');
    }
    return ConsentState._(value, element);
  }

  /// draft
  static final ConsentState draft = ConsentState._(
    'draft',
  );

  /// proposed
  static final ConsentState proposed = ConsentState._(
    'proposed',
  );

  /// active
  static final ConsentState active = ConsentState._(
    'active',
  );

  /// rejected
  static final ConsentState rejected = ConsentState._(
    'rejected',
  );

  /// inactive
  static final ConsentState inactive = ConsentState._(
    'inactive',
  );

  /// entered_in_error
  static final ConsentState entered_in_error = ConsentState._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final ConsentState elementOnly = ConsentState._('');

  /// List of all enum-like values
  static final List<ConsentState> values = [
    draft,
    proposed,
    active,
    rejected,
    inactive,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  ConsentState clone() => ConsentState._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ConsentState setElement(
    String name,
    dynamic elementValue,
  ) {
    return ConsentState._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ConsentState withElement(Element? newElement) {
    return ConsentState._(value, newElement);
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
  ConsentState copyWith({
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
    return ConsentState._(
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
