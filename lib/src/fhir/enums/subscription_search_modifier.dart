// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// FHIR search modifiers allowed for use in Subscriptions and SubscriptionTopics.
class SubscriptionSearchModifier extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  SubscriptionSearchModifier._(super.value, [super.element]);

  /// Factory constructor to create [SubscriptionSearchModifier] from JSON.
  factory SubscriptionSearchModifier.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriptionSearchModifier.elementOnly.withElement(element);
    }
    return SubscriptionSearchModifier._(value, element);
  }

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

  /// Clones the current instance
  @override
  SubscriptionSearchModifier clone() =>
      SubscriptionSearchModifier._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  SubscriptionSearchModifier setElement(String name, dynamic elementValue) {
    return SubscriptionSearchModifier._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  SubscriptionSearchModifier withElement(Element? newElement) {
    return SubscriptionSearchModifier._(value, newElement);
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
  SubscriptionSearchModifier copyWith({
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
    return SubscriptionSearchModifier._(
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
