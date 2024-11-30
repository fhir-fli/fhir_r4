// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This example FHIR value set is comprised of lifecycle event codes. The FHIR Actor value set is based on DICOM Audit Message, ParticipantObjectDataLifeCycle; ISO Standard, TS 21089-2017;
class ObjectLifecycleEvents {
  // Private constructor for internal use (like enum)
  ObjectLifecycleEvents._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ObjectLifecycleEvents values
  /// value1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents value1 = ObjectLifecycleEvents._(
    '1',
  );

  /// value2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents value2 = ObjectLifecycleEvents._(
    '2',
  );

  /// value3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents value3 = ObjectLifecycleEvents._(
    '3',
  );

  /// value4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents value4 = ObjectLifecycleEvents._(
    '4',
  );

  /// value5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents value5 = ObjectLifecycleEvents._(
    '5',
  );

  /// value6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents value6 = ObjectLifecycleEvents._(
    '6',
  );

  /// value7
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents value7 = ObjectLifecycleEvents._(
    '7',
  );

  /// value8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents value8 = ObjectLifecycleEvents._(
    '8',
  );

  /// value9
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents value9 = ObjectLifecycleEvents._(
    '9',
  );

  /// value10
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents value10 = ObjectLifecycleEvents._(
    '10',
  );

  /// value11
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents value11 = ObjectLifecycleEvents._(
    '11',
  );

  /// value12
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents value12 = ObjectLifecycleEvents._(
    '12',
  );

  /// value13
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents value13 = ObjectLifecycleEvents._(
    '13',
  );

  /// value14
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents value14 = ObjectLifecycleEvents._(
    '14',
  );

  /// value15
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents value15 = ObjectLifecycleEvents._(
    '15',
  );

  /// access
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents access = ObjectLifecycleEvents._(
    'access',
  );

  /// hold
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents hold = ObjectLifecycleEvents._(
    'hold',
  );

  /// amend
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents amend = ObjectLifecycleEvents._(
    'amend',
  );

  /// archive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents archive = ObjectLifecycleEvents._(
    'archive',
  );

  /// attest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents attest = ObjectLifecycleEvents._(
    'attest',
  );

  /// decrypt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents decrypt = ObjectLifecycleEvents._(
    'decrypt',
  );

  /// deidentify
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents deidentify = ObjectLifecycleEvents._(
    'deidentify',
  );

  /// deprecate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents deprecate = ObjectLifecycleEvents._(
    'deprecate',
  );

  /// destroy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents destroy = ObjectLifecycleEvents._(
    'destroy',
  );

  /// disclose
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents disclose = ObjectLifecycleEvents._(
    'disclose',
  );

  /// encrypt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents encrypt = ObjectLifecycleEvents._(
    'encrypt',
  );

  /// extract
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents extract = ObjectLifecycleEvents._(
    'extract',
  );

  /// link
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents link = ObjectLifecycleEvents._(
    'link',
  );

  /// merge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents merge = ObjectLifecycleEvents._(
    'merge',
  );

  /// originate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents originate = ObjectLifecycleEvents._(
    'originate',
  );

  /// pseudonymize
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents pseudonymize = ObjectLifecycleEvents._(
    'pseudonymize',
  );

  /// reactivate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents reactivate = ObjectLifecycleEvents._(
    'reactivate',
  );

  /// receive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents receive = ObjectLifecycleEvents._(
    'receive',
  );

  /// reidentify
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents reidentify = ObjectLifecycleEvents._(
    'reidentify',
  );

  /// unhold
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents unhold = ObjectLifecycleEvents._(
    'unhold',
  );

  /// report
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents report = ObjectLifecycleEvents._(
    'report',
  );

  /// restore
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents restore = ObjectLifecycleEvents._(
    'restore',
  );

  /// transform
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents transform = ObjectLifecycleEvents._(
    'transform',
  );

  /// transmit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents transmit = ObjectLifecycleEvents._(
    'transmit',
  );

  /// unlink
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents unlink = ObjectLifecycleEvents._(
    'unlink',
  );

  /// unmerge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents unmerge = ObjectLifecycleEvents._(
    'unmerge',
  );

  /// verify
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
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

  /// Returns the enum value with an element attached
  ObjectLifecycleEvents withElement(Element? newElement) {
    return ObjectLifecycleEvents._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ObjectLifecycleEvents] from JSON.
  static ObjectLifecycleEvents fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObjectLifecycleEvents.elementOnly.withElement(element);
    }
    return ObjectLifecycleEvents._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
