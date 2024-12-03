// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// TextureModifiedFoodType: Codes for types of foods that are texture-modified. This value set is composed SNOMED CT Concepts from SCTID 255620007 Foods (substance) and is provided as a suggestive example.
class TextureModifiedFoodTypeCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  TextureModifiedFoodTypeCodes._(super.value, [super.element]);

  /// Factory constructor to create [TextureModifiedFoodTypeCodes] from JSON.
  factory TextureModifiedFoodTypeCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TextureModifiedFoodTypeCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TextureModifiedFoodTypeCodes cannot be constructed from JSON.',
      );
    }
    return TextureModifiedFoodTypeCodes._(value, element);
  }

  /// value255620007
  static final TextureModifiedFoodTypeCodes value255620007 =
      TextureModifiedFoodTypeCodes._(
    '255620007',
  );

  /// value28647000
  static final TextureModifiedFoodTypeCodes value28647000 =
      TextureModifiedFoodTypeCodes._(
    '28647000',
  );

  /// value22836000
  static final TextureModifiedFoodTypeCodes value22836000 =
      TextureModifiedFoodTypeCodes._(
    '22836000',
  );

  /// value72511004
  static final TextureModifiedFoodTypeCodes value72511004 =
      TextureModifiedFoodTypeCodes._(
    '72511004',
  );

  /// value226760005
  static final TextureModifiedFoodTypeCodes value226760005 =
      TextureModifiedFoodTypeCodes._(
    '226760005',
  );

  /// value226887002
  static final TextureModifiedFoodTypeCodes value226887002 =
      TextureModifiedFoodTypeCodes._(
    '226887002',
  );

  /// value102263004
  static final TextureModifiedFoodTypeCodes value102263004 =
      TextureModifiedFoodTypeCodes._(
    '102263004',
  );

  /// value74242007
  static final TextureModifiedFoodTypeCodes value74242007 =
      TextureModifiedFoodTypeCodes._(
    '74242007',
  );

  /// value227415002
  static final TextureModifiedFoodTypeCodes value227415002 =
      TextureModifiedFoodTypeCodes._(
    '227415002',
  );

  /// value264331002
  static final TextureModifiedFoodTypeCodes value264331002 =
      TextureModifiedFoodTypeCodes._(
    '264331002',
  );

  /// value227518002
  static final TextureModifiedFoodTypeCodes value227518002 =
      TextureModifiedFoodTypeCodes._(
    '227518002',
  );

  /// value44027008
  static final TextureModifiedFoodTypeCodes value44027008 =
      TextureModifiedFoodTypeCodes._(
    '44027008',
  );

  /// value226529007
  static final TextureModifiedFoodTypeCodes value226529007 =
      TextureModifiedFoodTypeCodes._(
    '226529007',
  );

  /// value227210005
  static final TextureModifiedFoodTypeCodes value227210005 =
      TextureModifiedFoodTypeCodes._(
    '227210005',
  );

  /// For instances where an Element is present but not value

  static final TextureModifiedFoodTypeCodes elementOnly =
      TextureModifiedFoodTypeCodes._('');

  /// List of all enum-like values
  static final List<TextureModifiedFoodTypeCodes> values = [
    value255620007,
    value28647000,
    value22836000,
    value72511004,
    value226760005,
    value226887002,
    value102263004,
    value74242007,
    value227415002,
    value264331002,
    value227518002,
    value44027008,
    value226529007,
    value227210005,
  ];

  /// Clones the current instance
  @override
  TextureModifiedFoodTypeCodes clone() => TextureModifiedFoodTypeCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  TextureModifiedFoodTypeCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return TextureModifiedFoodTypeCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  TextureModifiedFoodTypeCodes withElement(Element? newElement) {
    return TextureModifiedFoodTypeCodes._(value, newElement);
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
  TextureModifiedFoodTypeCodes copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return TextureModifiedFoodTypeCodes._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
