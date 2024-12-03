// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// An authority that officates substance names.
class SubstanceNameAuthority extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  SubstanceNameAuthority._(super.value, [super.element]);

  /// Factory constructor to create [SubstanceNameAuthority] from JSON.
  factory SubstanceNameAuthority.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubstanceNameAuthority.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SubstanceNameAuthority cannot be constructed from JSON.',
      );
    }
    return SubstanceNameAuthority._(value, element);
  }

  /// BAN
  static final SubstanceNameAuthority BAN = SubstanceNameAuthority._(
    'BAN',
  );

  /// COSING
  static final SubstanceNameAuthority COSING = SubstanceNameAuthority._(
    'COSING',
  );

  /// Ph_Eur_
  static final SubstanceNameAuthority Ph_Eur_ = SubstanceNameAuthority._(
    'Ph.Eur.',
  );

  /// FCC
  static final SubstanceNameAuthority FCC = SubstanceNameAuthority._(
    'FCC',
  );

  /// INCI
  static final SubstanceNameAuthority INCI = SubstanceNameAuthority._(
    'INCI',
  );

  /// INN
  static final SubstanceNameAuthority INN = SubstanceNameAuthority._(
    'INN',
  );

  /// JAN
  static final SubstanceNameAuthority JAN = SubstanceNameAuthority._(
    'JAN',
  );

  /// JECFA
  static final SubstanceNameAuthority JECFA = SubstanceNameAuthority._(
    'JECFA',
  );

  /// MARTINDALE
  static final SubstanceNameAuthority MARTINDALE = SubstanceNameAuthority._(
    'MARTINDALE',
  );

  /// USAN
  static final SubstanceNameAuthority USAN = SubstanceNameAuthority._(
    'USAN',
  );

  /// USP
  static final SubstanceNameAuthority USP = SubstanceNameAuthority._(
    'USP',
  );

  /// PHF
  static final SubstanceNameAuthority PHF = SubstanceNameAuthority._(
    'PHF',
  );

  /// HAB
  static final SubstanceNameAuthority HAB = SubstanceNameAuthority._(
    'HAB',
  );

  /// PhF
  static final SubstanceNameAuthority PhF = SubstanceNameAuthority._(
    'PhF',
  );

  /// IUIS
  static final SubstanceNameAuthority IUIS = SubstanceNameAuthority._(
    'IUIS',
  );

  /// For instances where an Element is present but not value

  static final SubstanceNameAuthority elementOnly =
      SubstanceNameAuthority._('');

  /// List of all enum-like values
  static final List<SubstanceNameAuthority> values = [
    BAN,
    COSING,
    Ph_Eur_,
    FCC,
    INCI,
    INN,
    JAN,
    JECFA,
    MARTINDALE,
    USAN,
    USP,
    PHF,
    HAB,
    PhF,
    IUIS,
  ];

  /// Clones the current instance
  @override
  SubstanceNameAuthority clone() => SubstanceNameAuthority._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  SubstanceNameAuthority setElement(
    String name,
    dynamic elementValue,
  ) {
    return SubstanceNameAuthority._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  SubstanceNameAuthority withElement(Element? newElement) {
    return SubstanceNameAuthority._(value, newElement);
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
  SubstanceNameAuthority copyWith({
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
    return SubstanceNameAuthority._(
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
