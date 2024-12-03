// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of the measure report.
class MeasureReportType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MeasureReportType._(super.value, [super.element]);

  /// Factory constructor to create [MeasureReportType] from JSON.
  factory MeasureReportType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureReportType.elementOnly.withElement(element);
    }
    return MeasureReportType._(value, element);
  }

  /// individual
  static final MeasureReportType individual = MeasureReportType._(
    'individual',
  );

  /// subject_list
  static final MeasureReportType subject_list = MeasureReportType._(
    'subject-list',
  );

  /// summary
  static final MeasureReportType summary = MeasureReportType._(
    'summary',
  );

  /// data_collection
  static final MeasureReportType data_collection = MeasureReportType._(
    'data-collection',
  );

  /// For instances where an Element is present but not value

  static final MeasureReportType elementOnly = MeasureReportType._('');

  /// List of all enum-like values
  static final List<MeasureReportType> values = [
    individual,
    subject_list,
    summary,
    data_collection,
  ];

  /// Clones the current instance
  @override
  MeasureReportType clone() => MeasureReportType._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  MeasureReportType setElement(
    String name,
    dynamic elementValue,
  ) {
    return MeasureReportType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  MeasureReportType withElement(Element? newElement) {
    return MeasureReportType._(value, newElement);
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
  MeasureReportType copyWith({
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
    return MeasureReportType._(
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
