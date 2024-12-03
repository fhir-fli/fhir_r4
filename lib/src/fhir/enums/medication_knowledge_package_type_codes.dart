// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationKnowledge Package Type Codes
class MedicationKnowledgePackageTypeCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MedicationKnowledgePackageTypeCodes._(super.value, [super.element]);

  /// Factory constructor to create [MedicationKnowledgePackageTypeCodes] from JSON.
  factory MedicationKnowledgePackageTypeCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationKnowledgePackageTypeCodes.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'MedicationKnowledgePackageTypeCodes cannot be constructed from JSON.');
    }
    return MedicationKnowledgePackageTypeCodes._(value, element);
  }

  /// amp
  static final MedicationKnowledgePackageTypeCodes amp =
      MedicationKnowledgePackageTypeCodes._(
    'amp',
  );

  /// bag
  static final MedicationKnowledgePackageTypeCodes bag =
      MedicationKnowledgePackageTypeCodes._(
    'bag',
  );

  /// blstrpk
  static final MedicationKnowledgePackageTypeCodes blstrpk =
      MedicationKnowledgePackageTypeCodes._(
    'blstrpk',
  );

  /// bot
  static final MedicationKnowledgePackageTypeCodes bot =
      MedicationKnowledgePackageTypeCodes._(
    'bot',
  );

  /// box
  static final MedicationKnowledgePackageTypeCodes box =
      MedicationKnowledgePackageTypeCodes._(
    'box',
  );

  /// can
  static final MedicationKnowledgePackageTypeCodes can =
      MedicationKnowledgePackageTypeCodes._(
    'can',
  );

  /// cart
  static final MedicationKnowledgePackageTypeCodes cart =
      MedicationKnowledgePackageTypeCodes._(
    'cart',
  );

  /// disk
  static final MedicationKnowledgePackageTypeCodes disk =
      MedicationKnowledgePackageTypeCodes._(
    'disk',
  );

  /// doset
  static final MedicationKnowledgePackageTypeCodes doset =
      MedicationKnowledgePackageTypeCodes._(
    'doset',
  );

  /// jar
  static final MedicationKnowledgePackageTypeCodes jar =
      MedicationKnowledgePackageTypeCodes._(
    'jar',
  );

  /// jug
  static final MedicationKnowledgePackageTypeCodes jug =
      MedicationKnowledgePackageTypeCodes._(
    'jug',
  );

  /// minim
  static final MedicationKnowledgePackageTypeCodes minim =
      MedicationKnowledgePackageTypeCodes._(
    'minim',
  );

  /// nebamp
  static final MedicationKnowledgePackageTypeCodes nebamp =
      MedicationKnowledgePackageTypeCodes._(
    'nebamp',
  );

  /// ovul
  static final MedicationKnowledgePackageTypeCodes ovul =
      MedicationKnowledgePackageTypeCodes._(
    'ovul',
  );

  /// pch
  static final MedicationKnowledgePackageTypeCodes pch =
      MedicationKnowledgePackageTypeCodes._(
    'pch',
  );

  /// pkt
  static final MedicationKnowledgePackageTypeCodes pkt =
      MedicationKnowledgePackageTypeCodes._(
    'pkt',
  );

  /// sash
  static final MedicationKnowledgePackageTypeCodes sash =
      MedicationKnowledgePackageTypeCodes._(
    'sash',
  );

  /// strip
  static final MedicationKnowledgePackageTypeCodes strip =
      MedicationKnowledgePackageTypeCodes._(
    'strip',
  );

  /// tin
  static final MedicationKnowledgePackageTypeCodes tin =
      MedicationKnowledgePackageTypeCodes._(
    'tin',
  );

  /// tub
  static final MedicationKnowledgePackageTypeCodes tub =
      MedicationKnowledgePackageTypeCodes._(
    'tub',
  );

  /// tube
  static final MedicationKnowledgePackageTypeCodes tube =
      MedicationKnowledgePackageTypeCodes._(
    'tube',
  );

  /// vial
  static final MedicationKnowledgePackageTypeCodes vial =
      MedicationKnowledgePackageTypeCodes._(
    'vial',
  );

  /// For instances where an Element is present but not value

  static final MedicationKnowledgePackageTypeCodes elementOnly =
      MedicationKnowledgePackageTypeCodes._('');

  /// List of all enum-like values
  static final List<MedicationKnowledgePackageTypeCodes> values = [
    amp,
    bag,
    blstrpk,
    bot,
    box,
    can,
    cart,
    disk,
    doset,
    jar,
    jug,
    minim,
    nebamp,
    ovul,
    pch,
    pkt,
    sash,
    strip,
    tin,
    tub,
    tube,
    vial,
  ];

  /// Clones the current instance
  @override
  MedicationKnowledgePackageTypeCodes clone() =>
      MedicationKnowledgePackageTypeCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  MedicationKnowledgePackageTypeCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return MedicationKnowledgePackageTypeCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  MedicationKnowledgePackageTypeCodes withElement(Element? newElement) {
    return MedicationKnowledgePackageTypeCodes._(value, newElement);
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
  MedicationKnowledgePackageTypeCodes copyWith({
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
    return MedicationKnowledgePackageTypeCodes._(
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
