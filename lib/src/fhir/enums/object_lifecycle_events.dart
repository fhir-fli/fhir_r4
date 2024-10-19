// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This example FHIR value set is comprised of lifecycle event codes. The FHIR Actor value set is based on DICOM Audit Message, ParticipantObjectDataLifeCycle; ISO Standard, TS 21089-2017;
@Entity()
class ObjectLifecycleEvents extends FhirCode {
  /// Factory constructor to create [ObjectLifecycleEvents] from JSON.
  factory ObjectLifecycleEvents.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObjectLifecycleEvents.elementOnly(element);
    }
    if (values.contains(value)) {
      return ObjectLifecycleEvents._(value, element);
    }
    throw ArgumentError(
      'ObjectLifecycleEvents.fromJson: JSON value is not a valid value',
    );
  }

  /// value1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.value1([this.element])
      : dbValue = '1',
        super('1', element);

  /// value2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.value2([this.element])
      : dbValue = '2',
        super('2', element);

  /// value3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.value3([this.element])
      : dbValue = '3',
        super('3', element);

  /// value4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.value4([this.element])
      : dbValue = '4',
        super('4', element);

  /// value5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.value5([this.element])
      : dbValue = '5',
        super('5', element);

  /// value6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.value6([this.element])
      : dbValue = '6',
        super('6', element);

  /// value7
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.value7([this.element])
      : dbValue = '7',
        super('7', element);

  /// value8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.value8([this.element])
      : dbValue = '8',
        super('8', element);

  /// value9
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.value9([this.element])
      : dbValue = '9',
        super('9', element);

  /// value10
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.value10([this.element])
      : dbValue = '10',
        super('10', element);

  /// value11
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.value11([this.element])
      : dbValue = '11',
        super('11', element);

  /// value12
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.value12([this.element])
      : dbValue = '12',
        super('12', element);

  /// value13
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.value13([this.element])
      : dbValue = '13',
        super('13', element);

  /// value14
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.value14([this.element])
      : dbValue = '14',
        super('14', element);

  /// value15
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.value15([this.element])
      : dbValue = '15',
        super('15', element);

  /// access
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.access([this.element])
      : dbValue = 'access',
        super('access', element);

  /// hold
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.hold([this.element])
      : dbValue = 'hold',
        super('hold', element);

  /// amend
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.amend([this.element])
      : dbValue = 'amend',
        super('amend', element);

  /// archive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.archive([this.element])
      : dbValue = 'archive',
        super('archive', element);

  /// attest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.attest([this.element])
      : dbValue = 'attest',
        super('attest', element);

  /// decrypt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.decrypt([this.element])
      : dbValue = 'decrypt',
        super('decrypt', element);

  /// deidentify
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.deidentify([this.element])
      : dbValue = 'deidentify',
        super('deidentify', element);

  /// deprecate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.deprecate([this.element])
      : dbValue = 'deprecate',
        super('deprecate', element);

  /// destroy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.destroy([this.element])
      : dbValue = 'destroy',
        super('destroy', element);

  /// disclose
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.disclose([this.element])
      : dbValue = 'disclose',
        super('disclose', element);

  /// encrypt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.encrypt([this.element])
      : dbValue = 'encrypt',
        super('encrypt', element);

  /// extract
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.extract([this.element])
      : dbValue = 'extract',
        super('extract', element);

  /// link
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.link([this.element])
      : dbValue = 'link',
        super('link', element);

  /// merge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.merge([this.element])
      : dbValue = 'merge',
        super('merge', element);

  /// originate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.originate([this.element])
      : dbValue = 'originate',
        super('originate', element);

  /// pseudonymize
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.pseudonymize([this.element])
      : dbValue = 'pseudonymize',
        super('pseudonymize', element);

  /// reactivate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.reactivate([this.element])
      : dbValue = 'reactivate',
        super('reactivate', element);

  /// receive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.receive([this.element])
      : dbValue = 'receive',
        super('receive', element);

  /// reidentify
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.reidentify([this.element])
      : dbValue = 'reidentify',
        super('reidentify', element);

  /// unhold
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.unhold([this.element])
      : dbValue = 'unhold',
        super('unhold', element);

  /// report
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.report([this.element])
      : dbValue = 'report',
        super('report', element);

  /// restore
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.restore([this.element])
      : dbValue = 'restore',
        super('restore', element);

  /// transform
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.transform([this.element])
      : dbValue = 'transform',
        super('transform', element);

  /// transmit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.transmit([this.element])
      : dbValue = 'transmit',
        super('transmit', element);

  /// unlink
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.unlink([this.element])
      : dbValue = 'unlink',
        super('unlink', element);

  /// unmerge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.unmerge([this.element])
      : dbValue = 'unmerge',
        super('unmerge', element);

  /// verify
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObjectLifecycleEvents.verify([this.element])
      : dbValue = 'verify',
        super('verify', element);

  /// For instances where an Element is present but not value

  ObjectLifecycleEvents.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ObjectLifecycleEvents._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    'access',
    'hold',
    'amend',
    'archive',
    'attest',
    'decrypt',
    'deidentify',
    'deprecate',
    'destroy',
    'disclose',
    'encrypt',
    'extract',
    'link',
    'merge',
    'originate',
    'pseudonymize',
    'reactivate',
    'receive',
    'reidentify',
    'unhold',
    'report',
    'restore',
    'transform',
    'transmit',
    'unlink',
    'unmerge',
    'verify',
  ];

  /// Returns the enum value with an element attached
  ObjectLifecycleEvents withElement(Element? newElement) {
    return ObjectLifecycleEvents._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ObjectLifecycleEvents.$value';
}
