// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Base values for the order of the items in a list resource.
class ListOrderCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ListOrderCodes._(super.value, [super.element]);

  /// Factory constructor to create [ListOrderCodes] from JSON.
  factory ListOrderCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ListOrderCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError('ListOrderCodes cannot be constructed from JSON.');
    }
    return ListOrderCodes._(value, element);
  }

  /// user
  static final ListOrderCodes user = ListOrderCodes._(
    'user',
  );

  /// system
  static final ListOrderCodes system = ListOrderCodes._(
    'system',
  );

  /// event_date
  static final ListOrderCodes event_date = ListOrderCodes._(
    'event-date',
  );

  /// entry_date
  static final ListOrderCodes entry_date = ListOrderCodes._(
    'entry-date',
  );

  /// priority
  static final ListOrderCodes priority = ListOrderCodes._(
    'priority',
  );

  /// alphabetic
  static final ListOrderCodes alphabetic = ListOrderCodes._(
    'alphabetic',
  );

  /// category
  static final ListOrderCodes category = ListOrderCodes._(
    'category',
  );

  /// patient
  static final ListOrderCodes patient = ListOrderCodes._(
    'patient',
  );

  /// For instances where an Element is present but not value

  static final ListOrderCodes elementOnly = ListOrderCodes._('');

  /// List of all enum-like values
  static final List<ListOrderCodes> values = [
    user,
    system,
    event_date,
    entry_date,
    priority,
    alphabetic,
    category,
    patient,
  ];

  /// Clones the current instance
  @override
  ListOrderCodes clone() => ListOrderCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ListOrderCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return ListOrderCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ListOrderCodes withElement(Element? newElement) {
    return ListOrderCodes._(value, newElement);
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
  ListOrderCodes copyWith({
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
    return ListOrderCodes._(
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
