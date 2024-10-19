// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// FHIR search modifiers allowed for use in Subscriptions and SubscriptionTopics.
@collection
class SubscriptionSearchModifier {
  /// Constructor for internal use (like enum)
  SubscriptionSearchModifier({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SubscriptionSearchModifier values
  /// eq
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionSearchModifier eq = SubscriptionSearchModifier(
    fhirCode: '=',
  );

  /// ne
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionSearchModifier ne = SubscriptionSearchModifier(
    fhirCode: 'ne',
  );

  /// gt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionSearchModifier gt = SubscriptionSearchModifier(
    fhirCode: 'gt',
  );

  /// lt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionSearchModifier lt = SubscriptionSearchModifier(
    fhirCode: 'lt',
  );

  /// ge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionSearchModifier ge = SubscriptionSearchModifier(
    fhirCode: 'ge',
  );

  /// le
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionSearchModifier le = SubscriptionSearchModifier(
    fhirCode: 'le',
  );

  /// sa
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionSearchModifier sa = SubscriptionSearchModifier(
    fhirCode: 'sa',
  );

  /// eb
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionSearchModifier eb = SubscriptionSearchModifier(
    fhirCode: 'eb',
  );

  /// ap
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionSearchModifier ap = SubscriptionSearchModifier(
    fhirCode: 'ap',
  );

  /// above
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionSearchModifier above = SubscriptionSearchModifier(
    fhirCode: 'above',
  );

  /// below
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionSearchModifier below = SubscriptionSearchModifier(
    fhirCode: 'below',
  );

  /// in_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionSearchModifier in_ = SubscriptionSearchModifier(
    fhirCode: 'in',
  );

  /// not_in
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionSearchModifier not_in = SubscriptionSearchModifier(
    fhirCode: 'not-in',
  );

  /// of_type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionSearchModifier of_type = SubscriptionSearchModifier(
    fhirCode: 'of-type',
  );

  /// For instances where an Element is present but not value

  static final SubscriptionSearchModifier elementOnly =
      SubscriptionSearchModifier();

  /// List of all enum-like values
  static final List<SubscriptionSearchModifier> values = [
    eq,
    ne,
    gt,
    lt,
    ge,
    le,
    sa,
    eb,
    ap,
    above,
    below,
    in_,
    not_in,
    of_type,
  ];

  /// Returns the enum value with an element attached
  SubscriptionSearchModifier withElement(Element? newElement) {
    return SubscriptionSearchModifier(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SubscriptionSearchModifier] from JSON.
  static SubscriptionSearchModifier fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriptionSearchModifier.elementOnly.withElement(element);
    }
    return SubscriptionSearchModifier.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SubscriptionSearchModifier.$fhirCode';
}
