// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines codes for resources not yet supported by (or which will never be supported by) FHIR. Many of the codes listed here will eventually be turned into official resources. However, there is no guarantee that any particular resource will be created nor that the scope will be exactly as defined by the codes presented here. Codes in this set will be deprecated if/when formal resources are defined that encompass these concepts.
class BasicResourceTypes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  BasicResourceTypes._(super.value, [super.element]);

  /// Factory constructor to create [BasicResourceTypes] from JSON.
  factory BasicResourceTypes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BasicResourceTypes.elementOnly.withElement(element);
    }
    return BasicResourceTypes._(value, element);
  }

  /// consent
  static final BasicResourceTypes consent = BasicResourceTypes._(
    'consent',
  );

  /// referral
  static final BasicResourceTypes referral = BasicResourceTypes._(
    'referral',
  );

  /// advevent
  static final BasicResourceTypes advevent = BasicResourceTypes._(
    'advevent',
  );

  /// aptmtreq
  static final BasicResourceTypes aptmtreq = BasicResourceTypes._(
    'aptmtreq',
  );

  /// transfer
  static final BasicResourceTypes transfer = BasicResourceTypes._(
    'transfer',
  );

  /// diet
  static final BasicResourceTypes diet = BasicResourceTypes._(
    'diet',
  );

  /// adminact
  static final BasicResourceTypes adminact = BasicResourceTypes._(
    'adminact',
  );

  /// exposure
  static final BasicResourceTypes exposure = BasicResourceTypes._(
    'exposure',
  );

  /// investigation
  static final BasicResourceTypes investigation = BasicResourceTypes._(
    'investigation',
  );

  /// account
  static final BasicResourceTypes account = BasicResourceTypes._(
    'account',
  );

  /// invoice
  static final BasicResourceTypes invoice = BasicResourceTypes._(
    'invoice',
  );

  /// adjudicat
  static final BasicResourceTypes adjudicat = BasicResourceTypes._(
    'adjudicat',
  );

  /// predetreq
  static final BasicResourceTypes predetreq = BasicResourceTypes._(
    'predetreq',
  );

  /// predetermine
  static final BasicResourceTypes predetermine = BasicResourceTypes._(
    'predetermine',
  );

  /// study
  static final BasicResourceTypes study = BasicResourceTypes._(
    'study',
  );

  /// protocol
  static final BasicResourceTypes protocol = BasicResourceTypes._(
    'protocol',
  );

  /// For instances where an Element is present but not value

  static final BasicResourceTypes elementOnly = BasicResourceTypes._('');

  /// List of all enum-like values
  static final List<BasicResourceTypes> values = [
    consent,
    referral,
    advevent,
    aptmtreq,
    transfer,
    diet,
    adminact,
    exposure,
    investigation,
    account,
    invoice,
    adjudicat,
    predetreq,
    predetermine,
    study,
    protocol,
  ];

  /// Clones the current instance
  @override
  BasicResourceTypes clone() => BasicResourceTypes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  BasicResourceTypes setElement(
    String name,
    dynamic elementValue,
  ) {
    return BasicResourceTypes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  BasicResourceTypes withElement(Element? newElement) {
    return BasicResourceTypes._(value, newElement);
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
  BasicResourceTypes copyWith({
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
    return BasicResourceTypes._(
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
