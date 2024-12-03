// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that can be used to indicate the meaning/use of a reference range for a particular target population.
class ObservationReferenceRangeMeaningCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ObservationReferenceRangeMeaningCodes._(super.value, [super.element]);

  /// Factory constructor to create [ObservationReferenceRangeMeaningCodes] from JSON.
  factory ObservationReferenceRangeMeaningCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationReferenceRangeMeaningCodes.elementOnly
          .withElement(element);
    }
    return ObservationReferenceRangeMeaningCodes._(value, element);
  }

  /// type
  static final ObservationReferenceRangeMeaningCodes type =
      ObservationReferenceRangeMeaningCodes._(
    'type',
  );

  /// normal
  static final ObservationReferenceRangeMeaningCodes normal =
      ObservationReferenceRangeMeaningCodes._(
    'normal',
  );

  /// recommended
  static final ObservationReferenceRangeMeaningCodes recommended =
      ObservationReferenceRangeMeaningCodes._(
    'recommended',
  );

  /// treatment
  static final ObservationReferenceRangeMeaningCodes treatment =
      ObservationReferenceRangeMeaningCodes._(
    'treatment',
  );

  /// therapeutic
  static final ObservationReferenceRangeMeaningCodes therapeutic =
      ObservationReferenceRangeMeaningCodes._(
    'therapeutic',
  );

  /// pre
  static final ObservationReferenceRangeMeaningCodes pre =
      ObservationReferenceRangeMeaningCodes._(
    'pre',
  );

  /// post
  static final ObservationReferenceRangeMeaningCodes post =
      ObservationReferenceRangeMeaningCodes._(
    'post',
  );

  /// endocrine
  static final ObservationReferenceRangeMeaningCodes endocrine =
      ObservationReferenceRangeMeaningCodes._(
    'endocrine',
  );

  /// pre_puberty
  static final ObservationReferenceRangeMeaningCodes pre_puberty =
      ObservationReferenceRangeMeaningCodes._(
    'pre-puberty',
  );

  /// follicular
  static final ObservationReferenceRangeMeaningCodes follicular =
      ObservationReferenceRangeMeaningCodes._(
    'follicular',
  );

  /// midcycle
  static final ObservationReferenceRangeMeaningCodes midcycle =
      ObservationReferenceRangeMeaningCodes._(
    'midcycle',
  );

  /// luteal
  static final ObservationReferenceRangeMeaningCodes luteal =
      ObservationReferenceRangeMeaningCodes._(
    'luteal',
  );

  /// postmenopausal
  static final ObservationReferenceRangeMeaningCodes postmenopausal =
      ObservationReferenceRangeMeaningCodes._(
    'postmenopausal',
  );

  /// For instances where an Element is present but not value

  static final ObservationReferenceRangeMeaningCodes elementOnly =
      ObservationReferenceRangeMeaningCodes._('');

  /// List of all enum-like values
  static final List<ObservationReferenceRangeMeaningCodes> values = [
    type,
    normal,
    recommended,
    treatment,
    therapeutic,
    pre,
    post,
    endocrine,
    pre_puberty,
    follicular,
    midcycle,
    luteal,
    postmenopausal,
  ];

  /// Clones the current instance
  @override
  ObservationReferenceRangeMeaningCodes clone() =>
      ObservationReferenceRangeMeaningCodes._(
          value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ObservationReferenceRangeMeaningCodes setElement(
      String name, dynamic elementValue) {
    return ObservationReferenceRangeMeaningCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ObservationReferenceRangeMeaningCodes withElement(Element? newElement) {
    return ObservationReferenceRangeMeaningCodes._(value, newElement);
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
  ObservationReferenceRangeMeaningCodes copyWith({
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
    return ObservationReferenceRangeMeaningCodes._(
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
