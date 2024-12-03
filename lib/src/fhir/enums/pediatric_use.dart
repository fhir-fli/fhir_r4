// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Extra measures defined for a Medicinal Product, such as heightened reporting requirements.
class PediatricUse extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  PediatricUse._(super.value, [super.element]);

  /// Factory constructor to create [PediatricUse] from JSON.
  factory PediatricUse.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PediatricUse.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'PediatricUse cannot be constructed from JSON.',
      );
    }
    return PediatricUse._(value, element);
  }

  /// InUtero
  static final PediatricUse InUtero = PediatricUse._(
    'InUtero',
  );

  /// PretermNewborn
  static final PediatricUse PretermNewborn = PediatricUse._(
    'PretermNewborn',
  );

  /// TermNewborn
  static final PediatricUse TermNewborn = PediatricUse._(
    'TermNewborn',
  );

  /// Infants
  static final PediatricUse Infants = PediatricUse._(
    'Infants',
  );

  /// Children
  static final PediatricUse Children = PediatricUse._(
    'Children',
  );

  /// Adolescents
  static final PediatricUse Adolescents = PediatricUse._(
    'Adolescents',
  );

  /// Adults
  static final PediatricUse Adults = PediatricUse._(
    'Adults',
  );

  /// Elderly
  static final PediatricUse Elderly = PediatricUse._(
    'Elderly',
  );

  /// Neonate
  static final PediatricUse Neonate = PediatricUse._(
    'Neonate',
  );

  /// PediatricPopulation
  static final PediatricUse PediatricPopulation = PediatricUse._(
    'PediatricPopulation',
  );

  /// All
  static final PediatricUse All = PediatricUse._(
    'All',
  );

  /// Prepubertal
  static final PediatricUse Prepubertal = PediatricUse._(
    'Prepubertal',
  );

  /// AdultsAndElderly
  static final PediatricUse AdultsAndElderly = PediatricUse._(
    'AdultsAndElderly',
  );

  /// PubertalAndPostpubertal
  static final PediatricUse PubertalAndPostpubertal = PediatricUse._(
    'PubertalAndPostpubertal',
  );

  /// For instances where an Element is present but not value

  static final PediatricUse elementOnly = PediatricUse._('');

  /// List of all enum-like values
  static final List<PediatricUse> values = [
    InUtero,
    PretermNewborn,
    TermNewborn,
    Infants,
    Children,
    Adolescents,
    Adults,
    Elderly,
    Neonate,
    PediatricPopulation,
    All,
    Prepubertal,
    AdultsAndElderly,
    PubertalAndPostpubertal,
  ];

  /// Clones the current instance
  @override
  PediatricUse clone() => PediatricUse._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  PediatricUse setElement(
    String name,
    dynamic elementValue,
  ) {
    return PediatricUse._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  PediatricUse withElement(Element? newElement) {
    return PediatricUse._(value, newElement);
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
  PediatricUse copyWith({
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
    return PediatricUse._(
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
