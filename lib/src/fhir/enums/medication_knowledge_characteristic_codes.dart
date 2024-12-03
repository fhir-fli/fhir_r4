// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationKnowledge Characteristic Codes
class MedicationKnowledgeCharacteristicCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MedicationKnowledgeCharacteristicCodes._(super.value, [super.element]);

  /// Factory constructor to create [MedicationKnowledgeCharacteristicCodes] from JSON.
  factory MedicationKnowledgeCharacteristicCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationKnowledgeCharacteristicCodes.elementOnly
          .withElement(element);
    }
    return MedicationKnowledgeCharacteristicCodes._(value, element);
  }

  /// imprintcd
  static final MedicationKnowledgeCharacteristicCodes imprintcd =
      MedicationKnowledgeCharacteristicCodes._(
    'imprintcd',
  );

  /// size
  static final MedicationKnowledgeCharacteristicCodes size =
      MedicationKnowledgeCharacteristicCodes._(
    'size',
  );

  /// shape
  static final MedicationKnowledgeCharacteristicCodes shape =
      MedicationKnowledgeCharacteristicCodes._(
    'shape',
  );

  /// color
  static final MedicationKnowledgeCharacteristicCodes color =
      MedicationKnowledgeCharacteristicCodes._(
    'color',
  );

  /// coating
  static final MedicationKnowledgeCharacteristicCodes coating =
      MedicationKnowledgeCharacteristicCodes._(
    'coating',
  );

  /// scoring
  static final MedicationKnowledgeCharacteristicCodes scoring =
      MedicationKnowledgeCharacteristicCodes._(
    'scoring',
  );

  /// logo
  static final MedicationKnowledgeCharacteristicCodes logo =
      MedicationKnowledgeCharacteristicCodes._(
    'logo',
  );

  /// For instances where an Element is present but not value

  static final MedicationKnowledgeCharacteristicCodes elementOnly =
      MedicationKnowledgeCharacteristicCodes._('');

  /// List of all enum-like values
  static final List<MedicationKnowledgeCharacteristicCodes> values = [
    imprintcd,
    size,
    shape,
    color,
    coating,
    scoring,
    logo,
  ];

  /// Clones the current instance
  @override
  MedicationKnowledgeCharacteristicCodes clone() =>
      MedicationKnowledgeCharacteristicCodes._(
          value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  MedicationKnowledgeCharacteristicCodes setElement(
      String name, dynamic elementValue) {
    return MedicationKnowledgeCharacteristicCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  MedicationKnowledgeCharacteristicCodes withElement(Element? newElement) {
    return MedicationKnowledgeCharacteristicCodes._(value, newElement);
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
  MedicationKnowledgeCharacteristicCodes copyWith({
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
    return MedicationKnowledgeCharacteristicCodes._(
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
