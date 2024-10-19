// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This example FHIR value set is comprised of lifecycle event codes. The FHIR Actor value set is based on DICOM Audit Message, ParticipantObjectDataLifeCycle; ISO Standard, TS 21089-2017;
@collection
class ObjectLifecycleEvents {
  /// Constructor for internal use (like enum)
  ObjectLifecycleEvents({this.fhirCode, this.element})
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

  /// ObjectLifecycleEvents values
  /// value1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents value1 = ObjectLifecycleEvents(
    fhirCode: '1',
  );

  /// value2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents value2 = ObjectLifecycleEvents(
    fhirCode: '2',
  );

  /// value3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents value3 = ObjectLifecycleEvents(
    fhirCode: '3',
  );

  /// value4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents value4 = ObjectLifecycleEvents(
    fhirCode: '4',
  );

  /// value5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents value5 = ObjectLifecycleEvents(
    fhirCode: '5',
  );

  /// value6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents value6 = ObjectLifecycleEvents(
    fhirCode: '6',
  );

  /// value7
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents value7 = ObjectLifecycleEvents(
    fhirCode: '7',
  );

  /// value8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents value8 = ObjectLifecycleEvents(
    fhirCode: '8',
  );

  /// value9
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents value9 = ObjectLifecycleEvents(
    fhirCode: '9',
  );

  /// value10
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents value10 = ObjectLifecycleEvents(
    fhirCode: '10',
  );

  /// value11
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents value11 = ObjectLifecycleEvents(
    fhirCode: '11',
  );

  /// value12
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents value12 = ObjectLifecycleEvents(
    fhirCode: '12',
  );

  /// value13
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents value13 = ObjectLifecycleEvents(
    fhirCode: '13',
  );

  /// value14
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents value14 = ObjectLifecycleEvents(
    fhirCode: '14',
  );

  /// value15
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents value15 = ObjectLifecycleEvents(
    fhirCode: '15',
  );

  /// access
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents access = ObjectLifecycleEvents(
    fhirCode: 'access',
  );

  /// hold
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents hold = ObjectLifecycleEvents(
    fhirCode: 'hold',
  );

  /// amend
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents amend = ObjectLifecycleEvents(
    fhirCode: 'amend',
  );

  /// archive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents archive = ObjectLifecycleEvents(
    fhirCode: 'archive',
  );

  /// attest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents attest = ObjectLifecycleEvents(
    fhirCode: 'attest',
  );

  /// decrypt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents decrypt = ObjectLifecycleEvents(
    fhirCode: 'decrypt',
  );

  /// deidentify
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents deidentify = ObjectLifecycleEvents(
    fhirCode: 'deidentify',
  );

  /// deprecate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents deprecate = ObjectLifecycleEvents(
    fhirCode: 'deprecate',
  );

  /// destroy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents destroy = ObjectLifecycleEvents(
    fhirCode: 'destroy',
  );

  /// disclose
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents disclose = ObjectLifecycleEvents(
    fhirCode: 'disclose',
  );

  /// encrypt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents encrypt = ObjectLifecycleEvents(
    fhirCode: 'encrypt',
  );

  /// extract
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents extract = ObjectLifecycleEvents(
    fhirCode: 'extract',
  );

  /// link
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents link = ObjectLifecycleEvents(
    fhirCode: 'link',
  );

  /// merge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents merge = ObjectLifecycleEvents(
    fhirCode: 'merge',
  );

  /// originate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents originate = ObjectLifecycleEvents(
    fhirCode: 'originate',
  );

  /// pseudonymize
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents pseudonymize = ObjectLifecycleEvents(
    fhirCode: 'pseudonymize',
  );

  /// reactivate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents reactivate = ObjectLifecycleEvents(
    fhirCode: 'reactivate',
  );

  /// receive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents receive = ObjectLifecycleEvents(
    fhirCode: 'receive',
  );

  /// reidentify
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents reidentify = ObjectLifecycleEvents(
    fhirCode: 'reidentify',
  );

  /// unhold
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents unhold = ObjectLifecycleEvents(
    fhirCode: 'unhold',
  );

  /// report
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents report = ObjectLifecycleEvents(
    fhirCode: 'report',
  );

  /// restore
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents restore = ObjectLifecycleEvents(
    fhirCode: 'restore',
  );

  /// transform
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents transform = ObjectLifecycleEvents(
    fhirCode: 'transform',
  );

  /// transmit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents transmit = ObjectLifecycleEvents(
    fhirCode: 'transmit',
  );

  /// unlink
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents unlink = ObjectLifecycleEvents(
    fhirCode: 'unlink',
  );

  /// unmerge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents unmerge = ObjectLifecycleEvents(
    fhirCode: 'unmerge',
  );

  /// verify
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObjectLifecycleEvents verify = ObjectLifecycleEvents(
    fhirCode: 'verify',
  );

  /// For instances where an Element is present but not value

  static final ObjectLifecycleEvents elementOnly = ObjectLifecycleEvents();

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
    return ObjectLifecycleEvents(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
    return ObjectLifecycleEvents.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ObjectLifecycleEvents.$fhirCode';
}
