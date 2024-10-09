import 'package:json_annotation/json_annotation.dart';

/// This example FHIR value set is comprised of lifecycle event codes. The FHIR Actor value set is based on    DICOM Audit Message, ParticipantObjectDataLifeCycle;   ISO Standard, TS 21089-2017;
enum ObjectLifecycleEvents {
  /// Display: Origination / Creation
  @JsonValue('1')
  value1,

  /// Display: Import / Copy
  @JsonValue('2')
  value2,

  /// Display: Amendment
  @JsonValue('3')
  value3,

  /// Display: Verification
  @JsonValue('4')
  value4,

  /// Display: Translation
  @JsonValue('5')
  value5,

  /// Display: Access / Use
  @JsonValue('6')
  value6,

  /// Display: De-identification
  @JsonValue('7')
  value7,

  /// Display: Aggregation / summarization / derivation
  @JsonValue('8')
  value8,

  /// Display: Report
  @JsonValue('9')
  value9,

  /// Display: Export
  @JsonValue('10')
  value10,

  /// Display: Disclosure
  @JsonValue('11')
  value11,

  /// Display: Receipt of disclosure
  @JsonValue('12')
  value12,

  /// Display: Archiving
  @JsonValue('13')
  value13,

  /// Display: Logical deletion
  @JsonValue('14')
  value14,

  /// Display: Permanent erasure / Physical destruction
  @JsonValue('15')
  value15,

  /// Display: Access/View Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to obtain and open a record entry for inspection or review.
  @JsonValue('access')
  access,

  /// Display: Add Legal Hold Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to tag or otherwise indicate special access management and suspension of record entry deletion/destruction, if deemed relevant to a lawsuit or which are reasonably anticipated to be relevant or to fulfill organizational policy under the legal doctrine of “duty to preserve”.
  @JsonValue('hold')
  hold,

  /// Display: Amend (Update) Record Lifecycle Event
  /// Definition: Occurs when an agent makes any change to record entry content currently residing in storage considered permanent (persistent).
  @JsonValue('amend')
  amend,

  /// Display: Archive Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to create and move archive artifacts containing record entry content, typically to long-term offline storage.
  @JsonValue('archive')
  archive,

  /// Display: Attest Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to capture the agent’s digital signature (or equivalent indication) during formal validation of record entry content.
  @JsonValue('attest')
  attest,

  /// Display: Decrypt Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to decode record entry content from a cipher.
  @JsonValue('decrypt')
  decrypt,

  /// Display: De-Identify (Anononymize) Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to scrub record entry content to reduce the association between a set of identifying data and the data subject in a way that might or might not be reversible.
  @JsonValue('deidentify')
  deidentify,

  /// Display: Deprecate Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to tag record entry(ies) as obsolete, erroneous or untrustworthy, to warn against its future use.
  @JsonValue('deprecate')
  deprecate,

  /// Display: Destroy/Delete Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to permanently erase record entry content from the system.
  @JsonValue('destroy')
  destroy,

  /// Display: Disclose Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to release, transfer, provision access to, or otherwise divulge record entry content.
  @JsonValue('disclose')
  disclose,

  /// Display: Encrypt Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to encode record entry content in a cipher.
  @JsonValue('encrypt')
  encrypt,

  /// Display: Extract Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to selectively pull out a subset of record entry content, based on explicit criteria.
  @JsonValue('extract')
  extract,

  /// Display: Link Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to connect related record entries.
  @JsonValue('link')
  link,

  /// Display: Merge Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to combine or join content from two or more record entries, resulting in a single logical record entry.
  @JsonValue('merge')
  merge,

  /// Display: Originate/Retain Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to: a) initiate capture of potential record content, and b) incorporate that content into the storage considered a permanent part of the health record.
  @JsonValue('originate')
  originate,

  /// Display: Pseudonymize Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to remove record entry content to reduce the association between a set of identifying data and the data subject in a way that may be reversible.
  @JsonValue('pseudonymize')
  pseudonymize,

  /// Display: Re-activate Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to recreate or restore full status to record entries previously deleted or deprecated.
  @JsonValue('reactivate')
  reactivate,

  /// Display: Receive/Retain Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to a) initiate capture of data content from elsewhere, and b) incorporate that content into the storage considered a permanent part of the health record.
  @JsonValue('receive')
  receive,

  /// Display: Re-identify Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to restore information to data that allows identification of information source and/or information subject.
  @JsonValue('reidentify')
  reidentify,

  /// Display: Remove Legal Hold Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to remove a tag or other cues for special access management had required to fulfill organizational policy under the legal doctrine of “duty to preserve”.
  @JsonValue('unhold')
  unhold,

  /// Display: Report (Output) Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to produce and deliver record entry content in a particular form and manner.
  @JsonValue('report')
  report,

  /// Display: Restore Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to recreate record entries and their content from a previous created archive artefact.
  @JsonValue('restore')
  restore,

  /// Display: Transform/Translate Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to change the form, language or code system used to represent record entry content.
  @JsonValue('transform')
  transform,

  /// Display: Transmit Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to send record entry content from one (EHR/PHR/other) system to another.
  @JsonValue('transmit')
  transmit,

  /// Display: Unlink Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to disconnect two or more record entries previously connected, rendering them separate (disconnected) again.
  @JsonValue('unlink')
  unlink,

  /// Display: Unmerge Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to reverse a previous record entry merge operation, rendering them separate again.
  @JsonValue('unmerge')
  unmerge,

  /// Display: Verify Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to confirm compliance of data or data objects with regulations, requirements, specifications, or other imposed conditions based on organizational policy.
  @JsonValue('verify')
  verify,
  ;

  @override
  String toString() {
    switch (this) {
      case value1:
        return '1';
      case value2:
        return '2';
      case value3:
        return '3';
      case value4:
        return '4';
      case value5:
        return '5';
      case value6:
        return '6';
      case value7:
        return '7';
      case value8:
        return '8';
      case value9:
        return '9';
      case value10:
        return '10';
      case value11:
        return '11';
      case value12:
        return '12';
      case value13:
        return '13';
      case value14:
        return '14';
      case value15:
        return '15';
      case access:
        return 'access';
      case hold:
        return 'hold';
      case amend:
        return 'amend';
      case archive:
        return 'archive';
      case attest:
        return 'attest';
      case decrypt:
        return 'decrypt';
      case deidentify:
        return 'deidentify';
      case deprecate:
        return 'deprecate';
      case destroy:
        return 'destroy';
      case disclose:
        return 'disclose';
      case encrypt:
        return 'encrypt';
      case extract:
        return 'extract';
      case link:
        return 'link';
      case merge:
        return 'merge';
      case originate:
        return 'originate';
      case pseudonymize:
        return 'pseudonymize';
      case reactivate:
        return 'reactivate';
      case receive:
        return 'receive';
      case reidentify:
        return 'reidentify';
      case unhold:
        return 'unhold';
      case report:
        return 'report';
      case restore:
        return 'restore';
      case transform:
        return 'transform';
      case transmit:
        return 'transmit';
      case unlink:
        return 'unlink';
      case unmerge:
        return 'unmerge';
      case verify:
        return 'verify';
    }
  }

  String toJson() => toString();
  static ObjectLifecycleEvents fromString(String str) {
    switch (str) {
      case '1':
        return ObjectLifecycleEvents.value1;
      case '2':
        return ObjectLifecycleEvents.value2;
      case '3':
        return ObjectLifecycleEvents.value3;
      case '4':
        return ObjectLifecycleEvents.value4;
      case '5':
        return ObjectLifecycleEvents.value5;
      case '6':
        return ObjectLifecycleEvents.value6;
      case '7':
        return ObjectLifecycleEvents.value7;
      case '8':
        return ObjectLifecycleEvents.value8;
      case '9':
        return ObjectLifecycleEvents.value9;
      case '10':
        return ObjectLifecycleEvents.value10;
      case '11':
        return ObjectLifecycleEvents.value11;
      case '12':
        return ObjectLifecycleEvents.value12;
      case '13':
        return ObjectLifecycleEvents.value13;
      case '14':
        return ObjectLifecycleEvents.value14;
      case '15':
        return ObjectLifecycleEvents.value15;
      case 'access':
        return ObjectLifecycleEvents.access;
      case 'hold':
        return ObjectLifecycleEvents.hold;
      case 'amend':
        return ObjectLifecycleEvents.amend;
      case 'archive':
        return ObjectLifecycleEvents.archive;
      case 'attest':
        return ObjectLifecycleEvents.attest;
      case 'decrypt':
        return ObjectLifecycleEvents.decrypt;
      case 'deidentify':
        return ObjectLifecycleEvents.deidentify;
      case 'deprecate':
        return ObjectLifecycleEvents.deprecate;
      case 'destroy':
        return ObjectLifecycleEvents.destroy;
      case 'disclose':
        return ObjectLifecycleEvents.disclose;
      case 'encrypt':
        return ObjectLifecycleEvents.encrypt;
      case 'extract':
        return ObjectLifecycleEvents.extract;
      case 'link':
        return ObjectLifecycleEvents.link;
      case 'merge':
        return ObjectLifecycleEvents.merge;
      case 'originate':
        return ObjectLifecycleEvents.originate;
      case 'pseudonymize':
        return ObjectLifecycleEvents.pseudonymize;
      case 'reactivate':
        return ObjectLifecycleEvents.reactivate;
      case 'receive':
        return ObjectLifecycleEvents.receive;
      case 'reidentify':
        return ObjectLifecycleEvents.reidentify;
      case 'unhold':
        return ObjectLifecycleEvents.unhold;
      case 'report':
        return ObjectLifecycleEvents.report;
      case 'restore':
        return ObjectLifecycleEvents.restore;
      case 'transform':
        return ObjectLifecycleEvents.transform;
      case 'transmit':
        return ObjectLifecycleEvents.transmit;
      case 'unlink':
        return ObjectLifecycleEvents.unlink;
      case 'unmerge':
        return ObjectLifecycleEvents.unmerge;
      case 'verify':
        return ObjectLifecycleEvents.verify;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ObjectLifecycleEvents fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
