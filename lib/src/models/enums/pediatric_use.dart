// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Extra measures defined for a Medicinal Product, such as heightened reporting requirements.
class PediatricUse extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  PediatricUse._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

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
    return PediatricUse._(value: value, element: element);
  }

  /// InUtero
  static final PediatricUse InUtero = PediatricUse._(
    value: 'InUtero',
  );

  /// PretermNewborn
  static final PediatricUse PretermNewborn = PediatricUse._(
    value: 'PretermNewborn',
  );

  /// TermNewborn
  static final PediatricUse TermNewborn = PediatricUse._(
    value: 'TermNewborn',
  );

  /// Infants
  static final PediatricUse Infants = PediatricUse._(
    value: 'Infants',
  );

  /// Children
  static final PediatricUse Children = PediatricUse._(
    value: 'Children',
  );

  /// Adolescents
  static final PediatricUse Adolescents = PediatricUse._(
    value: 'Adolescents',
  );

  /// Adults
  static final PediatricUse Adults = PediatricUse._(
    value: 'Adults',
  );

  /// Elderly
  static final PediatricUse Elderly = PediatricUse._(
    value: 'Elderly',
  );

  /// Neonate
  static final PediatricUse Neonate = PediatricUse._(
    value: 'Neonate',
  );

  /// PediatricPopulation
  static final PediatricUse PediatricPopulation = PediatricUse._(
    value: 'PediatricPopulation',
  );

  /// All
  static final PediatricUse All = PediatricUse._(
    value: 'All',
  );

  /// Prepubertal
  static final PediatricUse Prepubertal = PediatricUse._(
    value: 'Prepubertal',
  );

  /// AdultsAndElderly
  static final PediatricUse AdultsAndElderly = PediatricUse._(
    value: 'AdultsAndElderly',
  );

  /// PubertalAndPostpubertal
  static final PediatricUse PubertalAndPostpubertal = PediatricUse._(
    value: 'PubertalAndPostpubertal',
  );

  /// For instances where an Element is present but not value

  static final PediatricUse elementOnly = PediatricUse._(value: '');

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
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  PediatricUse withElement(Element? newElement) {
    return PediatricUse._(value: value, element: newElement);
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
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return PediatricUse._(
      value: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
