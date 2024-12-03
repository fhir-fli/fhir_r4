// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Performer function of an agent in an imaging study series
class ImagingStudySeriesPerformerFunction extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ImagingStudySeriesPerformerFunction._(super.value, [super.element]);

  /// Factory constructor to create [ImagingStudySeriesPerformerFunction] from JSON.
  factory ImagingStudySeriesPerformerFunction.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImagingStudySeriesPerformerFunction.elementOnly
          .withElement(element);
    }
    return ImagingStudySeriesPerformerFunction._(value, element);
  }

  /// CON
  static final ImagingStudySeriesPerformerFunction CON =
      ImagingStudySeriesPerformerFunction._(
    'CON',
  );

  /// VRF
  static final ImagingStudySeriesPerformerFunction VRF =
      ImagingStudySeriesPerformerFunction._(
    'VRF',
  );

  /// PRF
  static final ImagingStudySeriesPerformerFunction PRF =
      ImagingStudySeriesPerformerFunction._(
    'PRF',
  );

  /// SPRF
  static final ImagingStudySeriesPerformerFunction SPRF =
      ImagingStudySeriesPerformerFunction._(
    'SPRF',
  );

  /// REF
  static final ImagingStudySeriesPerformerFunction REF =
      ImagingStudySeriesPerformerFunction._(
    'REF',
  );

  /// For instances where an Element is present but not value

  static final ImagingStudySeriesPerformerFunction elementOnly =
      ImagingStudySeriesPerformerFunction._('');

  /// List of all enum-like values
  static final List<ImagingStudySeriesPerformerFunction> values = [
    CON,
    VRF,
    PRF,
    SPRF,
    REF,
  ];

  /// Clones the current instance
  @override
  ImagingStudySeriesPerformerFunction clone() =>
      ImagingStudySeriesPerformerFunction._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ImagingStudySeriesPerformerFunction setElement(
    String name,
    dynamic elementValue,
  ) {
    return ImagingStudySeriesPerformerFunction._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ImagingStudySeriesPerformerFunction withElement(Element? newElement) {
    return ImagingStudySeriesPerformerFunction._(value, newElement);
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
  ImagingStudySeriesPerformerFunction copyWith({
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
    return ImagingStudySeriesPerformerFunction._(
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
