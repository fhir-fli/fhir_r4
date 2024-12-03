// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The quality standard, established benchmark, to which a substance complies.
class SubstanceGrade extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  SubstanceGrade._(super.value, [super.element]);

  /// Factory constructor to create [SubstanceGrade] from JSON.
  factory SubstanceGrade.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubstanceGrade.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError('SubstanceGrade cannot be constructed from JSON.');
    }
    return SubstanceGrade._(value, element);
  }

  /// USP_NF
  static final SubstanceGrade USP_NF = SubstanceGrade._(
    'USP-NF',
  );

  /// Ph_Eur
  static final SubstanceGrade Ph_Eur = SubstanceGrade._(
    'Ph.Eur',
  );

  /// JP
  static final SubstanceGrade JP = SubstanceGrade._(
    'JP',
  );

  /// BP
  static final SubstanceGrade BP = SubstanceGrade._(
    'BP',
  );

  /// CompanyStandard
  static final SubstanceGrade CompanyStandard = SubstanceGrade._(
    'CompanyStandard',
  );

  /// For instances where an Element is present but not value

  static final SubstanceGrade elementOnly = SubstanceGrade._('');

  /// List of all enum-like values
  static final List<SubstanceGrade> values = [
    USP_NF,
    Ph_Eur,
    JP,
    BP,
    CompanyStandard,
  ];

  /// Clones the current instance
  @override
  SubstanceGrade clone() => SubstanceGrade._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  SubstanceGrade setElement(
    String name,
    dynamic elementValue,
  ) {
    return SubstanceGrade._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  SubstanceGrade withElement(Element? newElement) {
    return SubstanceGrade._(value, newElement);
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
  SubstanceGrade copyWith({
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
    return SubstanceGrade._(
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
