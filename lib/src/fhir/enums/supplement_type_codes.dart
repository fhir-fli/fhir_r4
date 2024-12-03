// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// SupplementType : Codes for nutritional supplements to be provided to the patient. This value set is composed of SNOMED CT (US Extension) Concepts from SCTID 470581016 (Enteral+supplement feeds hierarchy (product)) and is provided as a suggestive example.
class SupplementTypeCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  SupplementTypeCodes._(super.value, [super.element]);

  /// Factory constructor to create [SupplementTypeCodes] from JSON.
  factory SupplementTypeCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SupplementTypeCodes.elementOnly.withElement(element);
    }
    return SupplementTypeCodes._(value, element);
  }

  /// value442901000124106
  static final SupplementTypeCodes value442901000124106 = SupplementTypeCodes._(
    '442901000124106',
  );

  /// value443031000124106
  static final SupplementTypeCodes value443031000124106 = SupplementTypeCodes._(
    '443031000124106',
  );

  /// value443051000124104
  static final SupplementTypeCodes value443051000124104 = SupplementTypeCodes._(
    '443051000124104',
  );

  /// value442911000124109
  static final SupplementTypeCodes value442911000124109 = SupplementTypeCodes._(
    '442911000124109',
  );

  /// value443021000124108
  static final SupplementTypeCodes value443021000124108 = SupplementTypeCodes._(
    '443021000124108',
  );

  /// value442971000124100
  static final SupplementTypeCodes value442971000124100 = SupplementTypeCodes._(
    '442971000124100',
  );

  /// value442981000124102
  static final SupplementTypeCodes value442981000124102 = SupplementTypeCodes._(
    '442981000124102',
  );

  /// value442991000124104
  static final SupplementTypeCodes value442991000124104 = SupplementTypeCodes._(
    '442991000124104',
  );

  /// value443011000124100
  static final SupplementTypeCodes value443011000124100 = SupplementTypeCodes._(
    '443011000124100',
  );

  /// value442961000124107
  static final SupplementTypeCodes value442961000124107 = SupplementTypeCodes._(
    '442961000124107',
  );

  /// value442951000124105
  static final SupplementTypeCodes value442951000124105 = SupplementTypeCodes._(
    '442951000124105',
  );

  /// value442941000124108
  static final SupplementTypeCodes value442941000124108 = SupplementTypeCodes._(
    '442941000124108',
  );

  /// value442921000124101
  static final SupplementTypeCodes value442921000124101 = SupplementTypeCodes._(
    '442921000124101',
  );

  /// value442931000124103
  static final SupplementTypeCodes value442931000124103 = SupplementTypeCodes._(
    '442931000124103',
  );

  /// value444331000124106
  static final SupplementTypeCodes value444331000124106 = SupplementTypeCodes._(
    '444331000124106',
  );

  /// value443361000124100
  static final SupplementTypeCodes value443361000124100 = SupplementTypeCodes._(
    '443361000124100',
  );

  /// value443391000124108
  static final SupplementTypeCodes value443391000124108 = SupplementTypeCodes._(
    '443391000124108',
  );

  /// value443401000124105
  static final SupplementTypeCodes value443401000124105 = SupplementTypeCodes._(
    '443401000124105',
  );

  /// value443491000124103
  static final SupplementTypeCodes value443491000124103 = SupplementTypeCodes._(
    '443491000124103',
  );

  /// value443501000124106
  static final SupplementTypeCodes value443501000124106 = SupplementTypeCodes._(
    '443501000124106',
  );

  /// value443421000124100
  static final SupplementTypeCodes value443421000124100 = SupplementTypeCodes._(
    '443421000124100',
  );

  /// value443471000124104
  static final SupplementTypeCodes value443471000124104 = SupplementTypeCodes._(
    '443471000124104',
  );

  /// value444431000124104
  static final SupplementTypeCodes value444431000124104 = SupplementTypeCodes._(
    '444431000124104',
  );

  /// value443451000124109
  static final SupplementTypeCodes value443451000124109 = SupplementTypeCodes._(
    '443451000124109',
  );

  /// value444321000124108
  static final SupplementTypeCodes value444321000124108 = SupplementTypeCodes._(
    '444321000124108',
  );

  /// value441561000124106
  static final SupplementTypeCodes value441561000124106 = SupplementTypeCodes._(
    '441561000124106',
  );

  /// value443461000124106
  static final SupplementTypeCodes value443461000124106 = SupplementTypeCodes._(
    '443461000124106',
  );

  /// value441531000124102
  static final SupplementTypeCodes value441531000124102 = SupplementTypeCodes._(
    '441531000124102',
  );

  /// value443561000124107
  static final SupplementTypeCodes value443561000124107 = SupplementTypeCodes._(
    '443561000124107',
  );

  /// value443481000124101
  static final SupplementTypeCodes value443481000124101 = SupplementTypeCodes._(
    '443481000124101',
  );

  /// value441571000124104
  static final SupplementTypeCodes value441571000124104 = SupplementTypeCodes._(
    '441571000124104',
  );

  /// value441591000124103
  static final SupplementTypeCodes value441591000124103 = SupplementTypeCodes._(
    '441591000124103',
  );

  /// value441601000124106
  static final SupplementTypeCodes value441601000124106 = SupplementTypeCodes._(
    '441601000124106',
  );

  /// value443351000124102
  static final SupplementTypeCodes value443351000124102 = SupplementTypeCodes._(
    '443351000124102',
  );

  /// value443771000124106
  static final SupplementTypeCodes value443771000124106 = SupplementTypeCodes._(
    '443771000124106',
  );

  /// value441671000124100
  static final SupplementTypeCodes value441671000124100 = SupplementTypeCodes._(
    '441671000124100',
  );

  /// value443111000124101
  static final SupplementTypeCodes value443111000124101 = SupplementTypeCodes._(
    '443111000124101',
  );

  /// value443431000124102
  static final SupplementTypeCodes value443431000124102 = SupplementTypeCodes._(
    '443431000124102',
  );

  /// value443411000124108
  static final SupplementTypeCodes value443411000124108 = SupplementTypeCodes._(
    '443411000124108',
  );

  /// value444361000124102
  static final SupplementTypeCodes value444361000124102 = SupplementTypeCodes._(
    '444361000124102',
  );

  /// value444401000124107
  static final SupplementTypeCodes value444401000124107 = SupplementTypeCodes._(
    '444401000124107',
  );

  /// value444381000124107
  static final SupplementTypeCodes value444381000124107 = SupplementTypeCodes._(
    '444381000124107',
  );

  /// value444371000124109
  static final SupplementTypeCodes value444371000124109 = SupplementTypeCodes._(
    '444371000124109',
  );

  /// value443441000124107
  static final SupplementTypeCodes value443441000124107 = SupplementTypeCodes._(
    '443441000124107',
  );

  /// value442651000124102
  static final SupplementTypeCodes value442651000124102 = SupplementTypeCodes._(
    '442651000124102',
  );

  /// For instances where an Element is present but not value

  static final SupplementTypeCodes elementOnly = SupplementTypeCodes._('');

  /// List of all enum-like values
  static final List<SupplementTypeCodes> values = [
    value442901000124106,
    value443031000124106,
    value443051000124104,
    value442911000124109,
    value443021000124108,
    value442971000124100,
    value442981000124102,
    value442991000124104,
    value443011000124100,
    value442961000124107,
    value442951000124105,
    value442941000124108,
    value442921000124101,
    value442931000124103,
    value444331000124106,
    value443361000124100,
    value443391000124108,
    value443401000124105,
    value443491000124103,
    value443501000124106,
    value443421000124100,
    value443471000124104,
    value444431000124104,
    value443451000124109,
    value444321000124108,
    value441561000124106,
    value443461000124106,
    value441531000124102,
    value443561000124107,
    value443481000124101,
    value441571000124104,
    value441591000124103,
    value441601000124106,
    value443351000124102,
    value443771000124106,
    value441671000124100,
    value443111000124101,
    value443431000124102,
    value443411000124108,
    value444361000124102,
    value444401000124107,
    value444381000124107,
    value444371000124109,
    value443441000124107,
    value442651000124102,
  ];

  /// Clones the current instance
  @override
  SupplementTypeCodes clone() => SupplementTypeCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  SupplementTypeCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return SupplementTypeCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  SupplementTypeCodes withElement(Element? newElement) {
    return SupplementTypeCodes._(value, newElement);
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
  SupplementTypeCodes copyWith({
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
    return SupplementTypeCodes._(
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
