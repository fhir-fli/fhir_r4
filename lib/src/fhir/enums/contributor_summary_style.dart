// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Used to code the format of the display string.
class ContributorSummaryStyle extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ContributorSummaryStyle._(super.value, [super.element]);

  /// Factory constructor to create [ContributorSummaryStyle] from JSON.
  factory ContributorSummaryStyle.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContributorSummaryStyle.elementOnly.withElement(element);
    }
    return ContributorSummaryStyle._(value, element);
  }

  /// a1full
  static final ContributorSummaryStyle a1full = ContributorSummaryStyle._(
    'a1full',
  );

  /// a1init
  static final ContributorSummaryStyle a1init = ContributorSummaryStyle._(
    'a1init',
  );

  /// a3full
  static final ContributorSummaryStyle a3full = ContributorSummaryStyle._(
    'a3full',
  );

  /// a3init
  static final ContributorSummaryStyle a3init = ContributorSummaryStyle._(
    'a3init',
  );

  /// a6full
  static final ContributorSummaryStyle a6full = ContributorSummaryStyle._(
    'a6full',
  );

  /// a6init
  static final ContributorSummaryStyle a6init = ContributorSummaryStyle._(
    'a6init',
  );

  /// aallfull
  static final ContributorSummaryStyle aallfull = ContributorSummaryStyle._(
    'aallfull',
  );

  /// aallfullwithand
  static final ContributorSummaryStyle aallfullwithand =
      ContributorSummaryStyle._(
    'aallfullwithand',
  );

  /// aallfullwithampersand
  static final ContributorSummaryStyle aallfullwithampersand =
      ContributorSummaryStyle._(
    'aallfullwithampersand',
  );

  /// aallinit
  static final ContributorSummaryStyle aallinit = ContributorSummaryStyle._(
    'aallinit',
  );

  /// aallinitwithand
  static final ContributorSummaryStyle aallinitwithand =
      ContributorSummaryStyle._(
    'aallinitwithand',
  );

  /// aallinitwithampersand
  static final ContributorSummaryStyle aallinitwithampersand =
      ContributorSummaryStyle._(
    'aallinitwithampersand',
  );

  /// contr_full_by_person
  static final ContributorSummaryStyle contr_full_by_person =
      ContributorSummaryStyle._(
    'contr-full-by-person',
  );

  /// contr_init_by_person
  static final ContributorSummaryStyle contr_init_by_person =
      ContributorSummaryStyle._(
    'contr-init-by-person',
  );

  /// contr_full_by_contr
  static final ContributorSummaryStyle contr_full_by_contr =
      ContributorSummaryStyle._(
    'contr-full-by-contr',
  );

  /// contr_init_by_contr
  static final ContributorSummaryStyle contr_init_by_contr =
      ContributorSummaryStyle._(
    'contr-init-by-contr',
  );

  /// For instances where an Element is present but not value

  static final ContributorSummaryStyle elementOnly =
      ContributorSummaryStyle._('');

  /// List of all enum-like values
  static final List<ContributorSummaryStyle> values = [
    a1full,
    a1init,
    a3full,
    a3init,
    a6full,
    a6init,
    aallfull,
    aallfullwithand,
    aallfullwithampersand,
    aallinit,
    aallinitwithand,
    aallinitwithampersand,
    contr_full_by_person,
    contr_init_by_person,
    contr_full_by_contr,
    contr_init_by_contr,
  ];

  /// Clones the current instance
  @override
  ContributorSummaryStyle clone() =>
      ContributorSummaryStyle._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ContributorSummaryStyle setElement(String name, dynamic elementValue) {
    return ContributorSummaryStyle._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ContributorSummaryStyle withElement(Element? newElement) {
    return ContributorSummaryStyle._(value, newElement);
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
  ContributorSummaryStyle copyWith({
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
    return ContributorSummaryStyle._(
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
