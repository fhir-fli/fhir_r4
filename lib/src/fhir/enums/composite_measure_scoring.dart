// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The composite scoring method of the measure.
class CompositeMeasureScoring extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  CompositeMeasureScoring._(super.value, [super.element]);

  /// Factory constructor to create [CompositeMeasureScoring] from JSON.
  factory CompositeMeasureScoring.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CompositeMeasureScoring.elementOnly.withElement(element);
    }
    return CompositeMeasureScoring._(value, element);
  }

  /// opportunity
  static final CompositeMeasureScoring opportunity = CompositeMeasureScoring._(
    'opportunity',
  );

  /// all_or_nothing
  static final CompositeMeasureScoring all_or_nothing =
      CompositeMeasureScoring._(
    'all-or-nothing',
  );

  /// linear
  static final CompositeMeasureScoring linear = CompositeMeasureScoring._(
    'linear',
  );

  /// weighted
  static final CompositeMeasureScoring weighted = CompositeMeasureScoring._(
    'weighted',
  );

  /// For instances where an Element is present but not value

  static final CompositeMeasureScoring elementOnly =
      CompositeMeasureScoring._('');

  /// List of all enum-like values
  static final List<CompositeMeasureScoring> values = [
    opportunity,
    all_or_nothing,
    linear,
    weighted,
  ];

  /// Clones the current instance
  @override
  CompositeMeasureScoring clone() => CompositeMeasureScoring._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  CompositeMeasureScoring setElement(
    String name,
    dynamic elementValue,
  ) {
    return CompositeMeasureScoring._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  CompositeMeasureScoring withElement(Element? newElement) {
    return CompositeMeasureScoring._(value, newElement);
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
  CompositeMeasureScoring copyWith({
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
    return CompositeMeasureScoring._(
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
