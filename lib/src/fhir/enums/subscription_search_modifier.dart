// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// FHIR search modifiers allowed for use in Subscriptions and SubscriptionTopics.
class SubscriptionSearchModifier {
  // Private constructor for internal use (like enum)
  SubscriptionSearchModifier._(this.fhirCode, {this.element});

  /// Factory constructor to create [SubscriptionSearchModifier] from JSON.
  factory SubscriptionSearchModifier.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriptionSearchModifier.elementOnly.withElement(element);
    }
    return SubscriptionSearchModifier._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SubscriptionSearchModifier values
  /// eq
  static final SubscriptionSearchModifier eq = SubscriptionSearchModifier._(
    '=',
  );

  /// ne
  static final SubscriptionSearchModifier ne = SubscriptionSearchModifier._(
    'ne',
  );

  /// gt
  static final SubscriptionSearchModifier gt = SubscriptionSearchModifier._(
    'gt',
  );

  /// lt
  static final SubscriptionSearchModifier lt = SubscriptionSearchModifier._(
    'lt',
  );

  /// ge
  static final SubscriptionSearchModifier ge = SubscriptionSearchModifier._(
    'ge',
  );

  /// le
  static final SubscriptionSearchModifier le = SubscriptionSearchModifier._(
    'le',
  );

  /// sa
  static final SubscriptionSearchModifier sa = SubscriptionSearchModifier._(
    'sa',
  );

  /// eb
  static final SubscriptionSearchModifier eb = SubscriptionSearchModifier._(
    'eb',
  );

  /// ap
  static final SubscriptionSearchModifier ap = SubscriptionSearchModifier._(
    'ap',
  );

  /// above
  static final SubscriptionSearchModifier above = SubscriptionSearchModifier._(
    'above',
  );

  /// below
  static final SubscriptionSearchModifier below = SubscriptionSearchModifier._(
    'below',
  );

  /// in_
  static final SubscriptionSearchModifier in_ = SubscriptionSearchModifier._(
    'in',
  );

  /// not_in
  static final SubscriptionSearchModifier not_in = SubscriptionSearchModifier._(
    'not-in',
  );

  /// of_type
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

  /// String representation
  @override
  String toString() => fhirCode;
}
