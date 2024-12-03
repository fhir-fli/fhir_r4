// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Possible group measure aggregates (E.g. Mean, Median).
class GroupMeasure extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  GroupMeasure._(super.value, [super.element]);

  /// Factory constructor to create [GroupMeasure] from JSON.
  factory GroupMeasure.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GroupMeasure.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError('GroupMeasure cannot be constructed from JSON.');
    }
    return GroupMeasure._(value, element);
  }

  /// mean
  static final GroupMeasure mean = GroupMeasure._(
    'mean',
  );

  /// median
  static final GroupMeasure median = GroupMeasure._(
    'median',
  );

  /// mean_of_mean
  static final GroupMeasure mean_of_mean = GroupMeasure._(
    'mean-of-mean',
  );

  /// mean_of_median
  static final GroupMeasure mean_of_median = GroupMeasure._(
    'mean-of-median',
  );

  /// median_of_mean
  static final GroupMeasure median_of_mean = GroupMeasure._(
    'median-of-mean',
  );

  /// median_of_median
  static final GroupMeasure median_of_median = GroupMeasure._(
    'median-of-median',
  );

  /// For instances where an Element is present but not value

  static final GroupMeasure elementOnly = GroupMeasure._('');

  /// List of all enum-like values
  static final List<GroupMeasure> values = [
    mean,
    median,
    mean_of_mean,
    mean_of_median,
    median_of_mean,
    median_of_median,
  ];

  /// Clones the current instance
  @override
  GroupMeasure clone() => GroupMeasure._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  GroupMeasure setElement(
    String name,
    dynamic elementValue,
  ) {
    return GroupMeasure._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  GroupMeasure withElement(Element? newElement) {
    return GroupMeasure._(value, newElement);
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
  GroupMeasure copyWith({
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
    return GroupMeasure._(
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
