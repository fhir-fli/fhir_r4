// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationKnowledge Package Type Codes
class MedicationKnowledgePackageTypeCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MedicationKnowledgePackageTypeCodes._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

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
        'MedicationKnowledgePackageTypeCodes cannot be constructed from JSON.',
      );
    }
    return MedicationKnowledgePackageTypeCodes._(
        value: value, element: element);
  }

  /// amp
  static final MedicationKnowledgePackageTypeCodes amp =
      MedicationKnowledgePackageTypeCodes._(
    value: 'amp',
  );

  /// bag
  static final MedicationKnowledgePackageTypeCodes bag =
      MedicationKnowledgePackageTypeCodes._(
    value: 'bag',
  );

  /// blstrpk
  static final MedicationKnowledgePackageTypeCodes blstrpk =
      MedicationKnowledgePackageTypeCodes._(
    value: 'blstrpk',
  );

  /// bot
  static final MedicationKnowledgePackageTypeCodes bot =
      MedicationKnowledgePackageTypeCodes._(
    value: 'bot',
  );

  /// box
  static final MedicationKnowledgePackageTypeCodes box =
      MedicationKnowledgePackageTypeCodes._(
    value: 'box',
  );

  /// can
  static final MedicationKnowledgePackageTypeCodes can =
      MedicationKnowledgePackageTypeCodes._(
    value: 'can',
  );

  /// cart
  static final MedicationKnowledgePackageTypeCodes cart =
      MedicationKnowledgePackageTypeCodes._(
    value: 'cart',
  );

  /// disk
  static final MedicationKnowledgePackageTypeCodes disk =
      MedicationKnowledgePackageTypeCodes._(
    value: 'disk',
  );

  /// doset
  static final MedicationKnowledgePackageTypeCodes doset =
      MedicationKnowledgePackageTypeCodes._(
    value: 'doset',
  );

  /// jar
  static final MedicationKnowledgePackageTypeCodes jar =
      MedicationKnowledgePackageTypeCodes._(
    value: 'jar',
  );

  /// jug
  static final MedicationKnowledgePackageTypeCodes jug =
      MedicationKnowledgePackageTypeCodes._(
    value: 'jug',
  );

  /// minim
  static final MedicationKnowledgePackageTypeCodes minim =
      MedicationKnowledgePackageTypeCodes._(
    value: 'minim',
  );

  /// nebamp
  static final MedicationKnowledgePackageTypeCodes nebamp =
      MedicationKnowledgePackageTypeCodes._(
    value: 'nebamp',
  );

  /// ovul
  static final MedicationKnowledgePackageTypeCodes ovul =
      MedicationKnowledgePackageTypeCodes._(
    value: 'ovul',
  );

  /// pch
  static final MedicationKnowledgePackageTypeCodes pch =
      MedicationKnowledgePackageTypeCodes._(
    value: 'pch',
  );

  /// pkt
  static final MedicationKnowledgePackageTypeCodes pkt =
      MedicationKnowledgePackageTypeCodes._(
    value: 'pkt',
  );

  /// sash
  static final MedicationKnowledgePackageTypeCodes sash =
      MedicationKnowledgePackageTypeCodes._(
    value: 'sash',
  );

  /// strip
  static final MedicationKnowledgePackageTypeCodes strip =
      MedicationKnowledgePackageTypeCodes._(
    value: 'strip',
  );

  /// tin
  static final MedicationKnowledgePackageTypeCodes tin =
      MedicationKnowledgePackageTypeCodes._(
    value: 'tin',
  );

  /// tub
  static final MedicationKnowledgePackageTypeCodes tub =
      MedicationKnowledgePackageTypeCodes._(
    value: 'tub',
  );

  /// tube
  static final MedicationKnowledgePackageTypeCodes tube =
      MedicationKnowledgePackageTypeCodes._(
    value: 'tube',
  );

  /// vial
  static final MedicationKnowledgePackageTypeCodes vial =
      MedicationKnowledgePackageTypeCodes._(
    value: 'vial',
  );

  /// For instances where an Element is present but not value

  static final MedicationKnowledgePackageTypeCodes elementOnly =
      MedicationKnowledgePackageTypeCodes._(value: '');

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
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  MedicationKnowledgePackageTypeCodes withElement(Element? newElement) {
    return MedicationKnowledgePackageTypeCodes._(
        value: value, element: newElement);
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
    return MedicationKnowledgePackageTypeCodes._(
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
