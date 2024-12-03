// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This example FHIR value set is comprised of lifecycle event codes. The FHIR Actor value set is based on DICOM Audit Message, ParticipantObjectDataLifeCycle; ISO Standard, TS 21089-2017;
class ObjectLifecycleEvents extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ObjectLifecycleEvents._(super.value, [super.element]);

  /// Factory constructor to create [ObjectLifecycleEvents] from JSON.
  factory ObjectLifecycleEvents.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObjectLifecycleEvents.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ObjectLifecycleEvents cannot be constructed from JSON.',
      );
    }
    return ObjectLifecycleEvents._(value, element);
  }

  /// value1
  static final ObjectLifecycleEvents value1 = ObjectLifecycleEvents._(
    '1',
  );

  /// value2
  static final ObjectLifecycleEvents value2 = ObjectLifecycleEvents._(
    '2',
  );

  /// value3
  static final ObjectLifecycleEvents value3 = ObjectLifecycleEvents._(
    '3',
  );

  /// value4
  static final ObjectLifecycleEvents value4 = ObjectLifecycleEvents._(
    '4',
  );

  /// value5
  static final ObjectLifecycleEvents value5 = ObjectLifecycleEvents._(
    '5',
  );

  /// value6
  static final ObjectLifecycleEvents value6 = ObjectLifecycleEvents._(
    '6',
  );

  /// value7
  static final ObjectLifecycleEvents value7 = ObjectLifecycleEvents._(
    '7',
  );

  /// value8
  static final ObjectLifecycleEvents value8 = ObjectLifecycleEvents._(
    '8',
  );

  /// value9
  static final ObjectLifecycleEvents value9 = ObjectLifecycleEvents._(
    '9',
  );

  /// value10
  static final ObjectLifecycleEvents value10 = ObjectLifecycleEvents._(
    '10',
  );

  /// value11
  static final ObjectLifecycleEvents value11 = ObjectLifecycleEvents._(
    '11',
  );

  /// value12
  static final ObjectLifecycleEvents value12 = ObjectLifecycleEvents._(
    '12',
  );

  /// value13
  static final ObjectLifecycleEvents value13 = ObjectLifecycleEvents._(
    '13',
  );

  /// value14
  static final ObjectLifecycleEvents value14 = ObjectLifecycleEvents._(
    '14',
  );

  /// value15
  static final ObjectLifecycleEvents value15 = ObjectLifecycleEvents._(
    '15',
  );

  /// access
  static final ObjectLifecycleEvents access = ObjectLifecycleEvents._(
    'access',
  );

  /// hold
  static final ObjectLifecycleEvents hold = ObjectLifecycleEvents._(
    'hold',
  );

  /// amend
  static final ObjectLifecycleEvents amend = ObjectLifecycleEvents._(
    'amend',
  );

  /// archive
  static final ObjectLifecycleEvents archive = ObjectLifecycleEvents._(
    'archive',
  );

  /// attest
  static final ObjectLifecycleEvents attest = ObjectLifecycleEvents._(
    'attest',
  );

  /// decrypt
  static final ObjectLifecycleEvents decrypt = ObjectLifecycleEvents._(
    'decrypt',
  );

  /// deidentify
  static final ObjectLifecycleEvents deidentify = ObjectLifecycleEvents._(
    'deidentify',
  );

  /// deprecate
  static final ObjectLifecycleEvents deprecate = ObjectLifecycleEvents._(
    'deprecate',
  );

  /// destroy
  static final ObjectLifecycleEvents destroy = ObjectLifecycleEvents._(
    'destroy',
  );

  /// disclose
  static final ObjectLifecycleEvents disclose = ObjectLifecycleEvents._(
    'disclose',
  );

  /// encrypt
  static final ObjectLifecycleEvents encrypt = ObjectLifecycleEvents._(
    'encrypt',
  );

  /// extract
  static final ObjectLifecycleEvents extract = ObjectLifecycleEvents._(
    'extract',
  );

  /// link
  static final ObjectLifecycleEvents link = ObjectLifecycleEvents._(
    'link',
  );

  /// merge
  static final ObjectLifecycleEvents merge = ObjectLifecycleEvents._(
    'merge',
  );

  /// originate
  static final ObjectLifecycleEvents originate = ObjectLifecycleEvents._(
    'originate',
  );

  /// pseudonymize
  static final ObjectLifecycleEvents pseudonymize = ObjectLifecycleEvents._(
    'pseudonymize',
  );

  /// reactivate
  static final ObjectLifecycleEvents reactivate = ObjectLifecycleEvents._(
    'reactivate',
  );

  /// receive
  static final ObjectLifecycleEvents receive = ObjectLifecycleEvents._(
    'receive',
  );

  /// reidentify
  static final ObjectLifecycleEvents reidentify = ObjectLifecycleEvents._(
    'reidentify',
  );

  /// unhold
  static final ObjectLifecycleEvents unhold = ObjectLifecycleEvents._(
    'unhold',
  );

  /// report
  static final ObjectLifecycleEvents report = ObjectLifecycleEvents._(
    'report',
  );

  /// restore
  static final ObjectLifecycleEvents restore = ObjectLifecycleEvents._(
    'restore',
  );

  /// transform
  static final ObjectLifecycleEvents transform = ObjectLifecycleEvents._(
    'transform',
  );

  /// transmit
  static final ObjectLifecycleEvents transmit = ObjectLifecycleEvents._(
    'transmit',
  );

  /// unlink
  static final ObjectLifecycleEvents unlink = ObjectLifecycleEvents._(
    'unlink',
  );

  /// unmerge
  static final ObjectLifecycleEvents unmerge = ObjectLifecycleEvents._(
    'unmerge',
  );

  /// verify
  static final ObjectLifecycleEvents verify = ObjectLifecycleEvents._(
    'verify',
  );

  /// For instances where an Element is present but not value

  static final ObjectLifecycleEvents elementOnly = ObjectLifecycleEvents._('');

  /// List of all enum-like values
  static final List<ObjectLifecycleEvents> values = [
    value1,
    value2,
    value3,
    value4,
    value5,
    value6,
    value7,
    value8,
    value9,
    value10,
    value11,
    value12,
    value13,
    value14,
    value15,
    access,
    hold,
    amend,
    archive,
    attest,
    decrypt,
    deidentify,
    deprecate,
    destroy,
    disclose,
    encrypt,
    extract,
    link,
    merge,
    originate,
    pseudonymize,
    reactivate,
    receive,
    reidentify,
    unhold,
    report,
    restore,
    transform,
    transmit,
    unlink,
    unmerge,
    verify,
  ];

  /// Clones the current instance
  @override
  ObjectLifecycleEvents clone() => ObjectLifecycleEvents._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ObjectLifecycleEvents setElement(
    String name,
    dynamic elementValue,
  ) {
    return ObjectLifecycleEvents._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ObjectLifecycleEvents withElement(Element? newElement) {
    return ObjectLifecycleEvents._(value, newElement);
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
  ObjectLifecycleEvents copyWith({
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
    return ObjectLifecycleEvents._(
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
