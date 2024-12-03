// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Example use codes for the List resource - typical kinds of use.
class ExampleUseCodesForList extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ExampleUseCodesForList._(super.value, [super.element]);

  /// Factory constructor to create [ExampleUseCodesForList] from JSON.
  factory ExampleUseCodesForList.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleUseCodesForList.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'ExampleUseCodesForList cannot be constructed from JSON.');
    }
    return ExampleUseCodesForList._(value, element);
  }

  /// alerts
  static final ExampleUseCodesForList alerts = ExampleUseCodesForList._(
    'alerts',
  );

  /// adverserxns
  static final ExampleUseCodesForList adverserxns = ExampleUseCodesForList._(
    'adverserxns',
  );

  /// allergies
  static final ExampleUseCodesForList allergies = ExampleUseCodesForList._(
    'allergies',
  );

  /// medications
  static final ExampleUseCodesForList medications = ExampleUseCodesForList._(
    'medications',
  );

  /// problems
  static final ExampleUseCodesForList problems = ExampleUseCodesForList._(
    'problems',
  );

  /// worklist
  static final ExampleUseCodesForList worklist = ExampleUseCodesForList._(
    'worklist',
  );

  /// waiting
  static final ExampleUseCodesForList waiting = ExampleUseCodesForList._(
    'waiting',
  );

  /// protocols
  static final ExampleUseCodesForList protocols = ExampleUseCodesForList._(
    'protocols',
  );

  /// plans
  static final ExampleUseCodesForList plans = ExampleUseCodesForList._(
    'plans',
  );

  /// For instances where an Element is present but not value

  static final ExampleUseCodesForList elementOnly =
      ExampleUseCodesForList._('');

  /// List of all enum-like values
  static final List<ExampleUseCodesForList> values = [
    alerts,
    adverserxns,
    allergies,
    medications,
    problems,
    worklist,
    waiting,
    protocols,
    plans,
  ];

  /// Clones the current instance
  @override
  ExampleUseCodesForList clone() => ExampleUseCodesForList._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ExampleUseCodesForList setElement(
    String name,
    dynamic elementValue,
  ) {
    return ExampleUseCodesForList._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ExampleUseCodesForList withElement(Element? newElement) {
    return ExampleUseCodesForList._(value, newElement);
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
  ExampleUseCodesForList copyWith({
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
    return ExampleUseCodesForList._(
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
