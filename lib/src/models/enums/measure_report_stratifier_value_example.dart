// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Example Measure Stratification Value for MeasureReports Resource.
class MeasureReportStratifierValueExample extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MeasureReportStratifierValueExample._(super.value, [super.element]);

  /// Factory constructor to create [MeasureReportStratifierValueExample] from JSON.
  factory MeasureReportStratifierValueExample.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureReportStratifierValueExample.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MeasureReportStratifierValueExample cannot be constructed from JSON.',
      );
    }
    return MeasureReportStratifierValueExample._(value, element);
  }

  /// northwest
  static final MeasureReportStratifierValueExample northwest =
      MeasureReportStratifierValueExample._(
    'northwest',
  );

  /// northeast
  static final MeasureReportStratifierValueExample northeast =
      MeasureReportStratifierValueExample._(
    'northeast',
  );

  /// southwest
  static final MeasureReportStratifierValueExample southwest =
      MeasureReportStratifierValueExample._(
    'southwest',
  );

  /// southeast
  static final MeasureReportStratifierValueExample southeast =
      MeasureReportStratifierValueExample._(
    'southeast',
  );

  /// For instances where an Element is present but not value

  static final MeasureReportStratifierValueExample elementOnly =
      MeasureReportStratifierValueExample._('');

  /// List of all enum-like values
  static final List<MeasureReportStratifierValueExample> values = [
    northwest,
    northeast,
    southwest,
    southeast,
  ];

  /// Clones the current instance
  @override
  MeasureReportStratifierValueExample clone() =>
      MeasureReportStratifierValueExample._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  MeasureReportStratifierValueExample setElement(
    String name,
    dynamic elementValue,
  ) {
    return MeasureReportStratifierValueExample._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  MeasureReportStratifierValueExample withElement(Element? newElement) {
    return MeasureReportStratifierValueExample._(value, newElement);
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
  MeasureReportStratifierValueExample copyWith({
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
    return MeasureReportStratifierValueExample._(
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
