// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// FHIR search modifiers allowed for use in Subscriptions and SubscriptionTopics.
class SubscriptionSearchModifier {
  // Private constructor for internal use (like enum)
  SubscriptionSearchModifier._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SubscriptionSearchModifier values
  /// eq
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionSearchModifier eq = SubscriptionSearchModifier._(
    '=',
  );

  /// ne
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionSearchModifier ne = SubscriptionSearchModifier._(
    'ne',
  );

  /// gt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionSearchModifier gt = SubscriptionSearchModifier._(
    'gt',
  );

  /// lt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionSearchModifier lt = SubscriptionSearchModifier._(
    'lt',
  );

  /// ge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionSearchModifier ge = SubscriptionSearchModifier._(
    'ge',
  );

  /// le
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionSearchModifier le = SubscriptionSearchModifier._(
    'le',
  );

  /// sa
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionSearchModifier sa = SubscriptionSearchModifier._(
    'sa',
  );

  /// eb
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionSearchModifier eb = SubscriptionSearchModifier._(
    'eb',
  );

  /// ap
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionSearchModifier ap = SubscriptionSearchModifier._(
    'ap',
  );

  /// above
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionSearchModifier above = SubscriptionSearchModifier._(
    'above',
  );

  /// below
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionSearchModifier below = SubscriptionSearchModifier._(
    'below',
  );

  /// in_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionSearchModifier in_ = SubscriptionSearchModifier._(
    'in',
  );

  /// not_in
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionSearchModifier not_in = SubscriptionSearchModifier._(
    'not-in',
  );

  /// of_type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriptionSearchModifier of_type =
      SubscriptionSearchModifier._(
    'of-type',
  );

  /// For instances where an Element is present but not value

  static final SubscriptionSearchModifier elementOnly =
      SubscriptionSearchModifier._('');

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
    return SubscriptionSearchModifier._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
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

  /// String representation
  @override
  String toString() => fhirCode;
}
