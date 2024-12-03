// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Code for a known / defined timing pattern.
class TimingAbbreviation extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  TimingAbbreviation._(super.value, [super.element]);

  /// Factory constructor to create [TimingAbbreviation] from JSON.
  factory TimingAbbreviation.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TimingAbbreviation.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TimingAbbreviation cannot be constructed from JSON.',
      );
    }
    return TimingAbbreviation._(value, element);
  }

  /// BID
  static final TimingAbbreviation BID = TimingAbbreviation._(
    'BID',
  );

  /// TID
  static final TimingAbbreviation TID = TimingAbbreviation._(
    'TID',
  );

  /// QID
  static final TimingAbbreviation QID = TimingAbbreviation._(
    'QID',
  );

  /// AM
  static final TimingAbbreviation AM = TimingAbbreviation._(
    'AM',
  );

  /// PM
  static final TimingAbbreviation PM = TimingAbbreviation._(
    'PM',
  );

  /// QD
  static final TimingAbbreviation QD = TimingAbbreviation._(
    'QD',
  );

  /// QOD
  static final TimingAbbreviation QOD = TimingAbbreviation._(
    'QOD',
  );

  /// Q1H
  static final TimingAbbreviation Q1H = TimingAbbreviation._(
    'Q1H',
  );

  /// Q2H
  static final TimingAbbreviation Q2H = TimingAbbreviation._(
    'Q2H',
  );

  /// Q3H
  static final TimingAbbreviation Q3H = TimingAbbreviation._(
    'Q3H',
  );

  /// Q4H
  static final TimingAbbreviation Q4H = TimingAbbreviation._(
    'Q4H',
  );

  /// Q6H
  static final TimingAbbreviation Q6H = TimingAbbreviation._(
    'Q6H',
  );

  /// Q8H
  static final TimingAbbreviation Q8H = TimingAbbreviation._(
    'Q8H',
  );

  /// BED
  static final TimingAbbreviation BED = TimingAbbreviation._(
    'BED',
  );

  /// WK
  static final TimingAbbreviation WK = TimingAbbreviation._(
    'WK',
  );

  /// MO
  static final TimingAbbreviation MO = TimingAbbreviation._(
    'MO',
  );

  /// For instances where an Element is present but not value

  static final TimingAbbreviation elementOnly = TimingAbbreviation._('');

  /// List of all enum-like values
  static final List<TimingAbbreviation> values = [
    BID,
    TID,
    QID,
    AM,
    PM,
    QD,
    QOD,
    Q1H,
    Q2H,
    Q3H,
    Q4H,
    Q6H,
    Q8H,
    BED,
    WK,
    MO,
  ];

  /// Clones the current instance
  @override
  TimingAbbreviation clone() => TimingAbbreviation._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  TimingAbbreviation setElement(
    String name,
    dynamic elementValue,
  ) {
    return TimingAbbreviation._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  TimingAbbreviation withElement(Element? newElement) {
    return TimingAbbreviation._(value, newElement);
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
  TimingAbbreviation copyWith({
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
    return TimingAbbreviation._(
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
