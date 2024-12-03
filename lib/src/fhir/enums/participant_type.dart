// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that can be used to indicate how an individual participates in an encounter.
class ParticipantType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ParticipantType._(super.value, [super.element]);

  /// Factory constructor to create [ParticipantType] from JSON.
  factory ParticipantType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ParticipantType.elementOnly.withElement(element);
    }
    return ParticipantType._(value, element);
  }

  /// SPRF
  static final ParticipantType SPRF = ParticipantType._(
    'SPRF',
  );

  /// PPRF
  static final ParticipantType PPRF = ParticipantType._(
    'PPRF',
  );

  /// PART
  static final ParticipantType PART = ParticipantType._(
    'PART',
  );

  /// translator
  static final ParticipantType translator = ParticipantType._(
    'translator',
  );

  /// emergency
  static final ParticipantType emergency = ParticipantType._(
    'emergency',
  );

  /// For instances where an Element is present but not value

  static final ParticipantType elementOnly = ParticipantType._('');

  /// List of all enum-like values
  static final List<ParticipantType> values = [
    SPRF,
    PPRF,
    PART,
    translator,
    emergency,
  ];

  /// Clones the current instance
  @override
  ParticipantType clone() =>
      ParticipantType._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ParticipantType setElement(String name, dynamic elementValue) {
    return ParticipantType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ParticipantType withElement(Element? newElement) {
    return ParticipantType._(value, newElement);
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
  ParticipantType copyWith({
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
    return ParticipantType._(
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
