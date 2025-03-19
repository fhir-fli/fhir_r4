// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// FHIR search modifiers allowed for use in Subscriptions and
/// SubscriptionTopics.
class SubscriptionSearchModifier extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  SubscriptionSearchModifier._({
    required super.validatedValue,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory SubscriptionSearchModifier(
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return SubscriptionSearchModifier._(
      validatedValue: validated,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [SubscriptionSearchModifier] with element only
  factory SubscriptionSearchModifier.empty() =>
      SubscriptionSearchModifier._(validatedValue: '');

  /// Factory constructor to create [SubscriptionSearchModifier] from JSON.
  factory SubscriptionSearchModifier.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriptionSearchModifier.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SubscriptionSearchModifier cannot be constructed from JSON.',
      );
    }
    return SubscriptionSearchModifier._(
      validatedValue: value,
      element: element,
    );
  }

  /// eq
  static final SubscriptionSearchModifier eq = SubscriptionSearchModifier._(
    validatedValue: '=',
    system:
        'http://hl7.org/fhir/ValueSet/subscription-search-modifier'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: '='.toFhirString,
  );

  /// ne
  static final SubscriptionSearchModifier ne = SubscriptionSearchModifier._(
    validatedValue: 'ne',
    system:
        'http://hl7.org/fhir/ValueSet/subscription-search-modifier'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Not Equal'.toFhirString,
  );

  /// gt
  static final SubscriptionSearchModifier gt = SubscriptionSearchModifier._(
    validatedValue: 'gt',
    system:
        'http://hl7.org/fhir/ValueSet/subscription-search-modifier'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Greater Than'.toFhirString,
  );

  /// lt
  static final SubscriptionSearchModifier lt = SubscriptionSearchModifier._(
    validatedValue: 'lt',
    system:
        'http://hl7.org/fhir/ValueSet/subscription-search-modifier'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Less Than'.toFhirString,
  );

  /// ge
  static final SubscriptionSearchModifier ge = SubscriptionSearchModifier._(
    validatedValue: 'ge',
    system:
        'http://hl7.org/fhir/ValueSet/subscription-search-modifier'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Greater Than or Equal'.toFhirString,
  );

  /// le
  static final SubscriptionSearchModifier le = SubscriptionSearchModifier._(
    validatedValue: 'le',
    system:
        'http://hl7.org/fhir/ValueSet/subscription-search-modifier'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Less Than or Equal'.toFhirString,
  );

  /// sa
  static final SubscriptionSearchModifier sa = SubscriptionSearchModifier._(
    validatedValue: 'sa',
    system:
        'http://hl7.org/fhir/ValueSet/subscription-search-modifier'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Starts After'.toFhirString,
  );

  /// eb
  static final SubscriptionSearchModifier eb = SubscriptionSearchModifier._(
    validatedValue: 'eb',
    system:
        'http://hl7.org/fhir/ValueSet/subscription-search-modifier'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Ends Before'.toFhirString,
  );

  /// ap
  static final SubscriptionSearchModifier ap = SubscriptionSearchModifier._(
    validatedValue: 'ap',
    system:
        'http://hl7.org/fhir/ValueSet/subscription-search-modifier'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Approximately'.toFhirString,
  );

  /// above
  static final SubscriptionSearchModifier above = SubscriptionSearchModifier._(
    validatedValue: 'above',
    system:
        'http://hl7.org/fhir/ValueSet/subscription-search-modifier'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Above'.toFhirString,
  );

  /// below
  static final SubscriptionSearchModifier below = SubscriptionSearchModifier._(
    validatedValue: 'below',
    system:
        'http://hl7.org/fhir/ValueSet/subscription-search-modifier'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Below'.toFhirString,
  );

  /// in_
  static final SubscriptionSearchModifier in_ = SubscriptionSearchModifier._(
    validatedValue: 'in',
    system:
        'http://hl7.org/fhir/ValueSet/subscription-search-modifier'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'In'.toFhirString,
  );

  /// not_in
  static final SubscriptionSearchModifier not_in = SubscriptionSearchModifier._(
    validatedValue: 'not-in',
    system:
        'http://hl7.org/fhir/ValueSet/subscription-search-modifier'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Not In'.toFhirString,
  );

  /// of_type
  static final SubscriptionSearchModifier of_type =
      SubscriptionSearchModifier._(
    validatedValue: 'of-type',
    system:
        'http://hl7.org/fhir/ValueSet/subscription-search-modifier'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Of Type'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final SubscriptionSearchModifier elementOnly =
      SubscriptionSearchModifier._(validatedValue: '');

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
  SubscriptionSearchModifier clone() => SubscriptionSearchModifier._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SubscriptionSearchModifier withElement(Element? newElement) {
    return SubscriptionSearchModifier._(
      validatedValue: value,
      element: newElement,
    );
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
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return SubscriptionSearchModifier._(
      validatedValue: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}
