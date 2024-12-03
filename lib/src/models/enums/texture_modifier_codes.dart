// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// TextureModifier: Codes for food consistency types or texture modifications to apply to foods. This value set is composed of SNOMED CT (US Extension and Core) Concepts from SCTID 229961002 Food consistency types (substance) hierarchy and is provided as a suggestive example.
class TextureModifierCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  TextureModifierCodes._(super.value, [super.element]);

  /// Factory constructor to create [TextureModifierCodes] from JSON.
  factory TextureModifierCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TextureModifierCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TextureModifierCodes cannot be constructed from JSON.',
      );
    }
    return TextureModifierCodes._(value, element);
  }

  /// value228053002
  static final TextureModifierCodes value228053002 = TextureModifierCodes._(
    '228053002',
  );

  /// value439091000124107
  static final TextureModifierCodes value439091000124107 =
      TextureModifierCodes._(
    '439091000124107',
  );

  /// value228049004
  static final TextureModifierCodes value228049004 = TextureModifierCodes._(
    '228049004',
  );

  /// value441881000124103
  static final TextureModifierCodes value441881000124103 =
      TextureModifierCodes._(
    '441881000124103',
  );

  /// value441761000124103
  static final TextureModifierCodes value441761000124103 =
      TextureModifierCodes._(
    '441761000124103',
  );

  /// value441751000124100
  static final TextureModifierCodes value441751000124100 =
      TextureModifierCodes._(
    '441751000124100',
  );

  /// value228059003
  static final TextureModifierCodes value228059003 = TextureModifierCodes._(
    '228059003',
  );

  /// value441791000124106
  static final TextureModifierCodes value441791000124106 =
      TextureModifierCodes._(
    '441791000124106',
  );

  /// value228055009
  static final TextureModifierCodes value228055009 = TextureModifierCodes._(
    '228055009',
  );

  /// value228056005
  static final TextureModifierCodes value228056005 = TextureModifierCodes._(
    '228056005',
  );

  /// value441771000124105
  static final TextureModifierCodes value441771000124105 =
      TextureModifierCodes._(
    '441771000124105',
  );

  /// value228057001
  static final TextureModifierCodes value228057001 = TextureModifierCodes._(
    '228057001',
  );

  /// value228058006
  static final TextureModifierCodes value228058006 = TextureModifierCodes._(
    '228058006',
  );

  /// value228060008
  static final TextureModifierCodes value228060008 = TextureModifierCodes._(
    '228060008',
  );

  /// For instances where an Element is present but not value

  static final TextureModifierCodes elementOnly = TextureModifierCodes._('');

  /// List of all enum-like values
  static final List<TextureModifierCodes> values = [
    value228053002,
    value439091000124107,
    value228049004,
    value441881000124103,
    value441761000124103,
    value441751000124100,
    value228059003,
    value441791000124106,
    value228055009,
    value228056005,
    value441771000124105,
    value228057001,
    value228058006,
    value228060008,
  ];

  /// Clones the current instance
  @override
  TextureModifierCodes clone() => TextureModifierCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  TextureModifierCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return TextureModifierCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  TextureModifierCodes withElement(Element? newElement) {
    return TextureModifierCodes._(value, newElement);
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
  TextureModifierCodes copyWith({
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
    return TextureModifierCodes._(
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
