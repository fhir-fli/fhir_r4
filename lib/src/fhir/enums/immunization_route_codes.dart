// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the administrative routes used during vaccination. This value set is provided as a suggestive example.
class ImmunizationRouteCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ImmunizationRouteCodes._(super.value, [super.element]);

  /// Factory constructor to create [ImmunizationRouteCodes] from JSON.
  factory ImmunizationRouteCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationRouteCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'ImmunizationRouteCodes cannot be constructed from JSON.');
    }
    return ImmunizationRouteCodes._(value, element);
  }

  /// IDINJ
  static final ImmunizationRouteCodes IDINJ = ImmunizationRouteCodes._(
    'IDINJ',
  );

  /// IM
  static final ImmunizationRouteCodes IM = ImmunizationRouteCodes._(
    'IM',
  );

  /// NASINHLC
  static final ImmunizationRouteCodes NASINHLC = ImmunizationRouteCodes._(
    'NASINHLC',
  );

  /// IVINJ
  static final ImmunizationRouteCodes IVINJ = ImmunizationRouteCodes._(
    'IVINJ',
  );

  /// PO
  static final ImmunizationRouteCodes PO = ImmunizationRouteCodes._(
    'PO',
  );

  /// SQ
  static final ImmunizationRouteCodes SQ = ImmunizationRouteCodes._(
    'SQ',
  );

  /// TRNSDERM
  static final ImmunizationRouteCodes TRNSDERM = ImmunizationRouteCodes._(
    'TRNSDERM',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationRouteCodes elementOnly =
      ImmunizationRouteCodes._('');

  /// List of all enum-like values
  static final List<ImmunizationRouteCodes> values = [
    IDINJ,
    IM,
    NASINHLC,
    IVINJ,
    PO,
    SQ,
    TRNSDERM,
  ];

  /// Clones the current instance
  @override
  ImmunizationRouteCodes clone() => ImmunizationRouteCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ImmunizationRouteCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return ImmunizationRouteCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ImmunizationRouteCodes withElement(Element? newElement) {
    return ImmunizationRouteCodes._(value, newElement);
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
  ImmunizationRouteCodes copyWith({
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
    return ImmunizationRouteCodes._(
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
