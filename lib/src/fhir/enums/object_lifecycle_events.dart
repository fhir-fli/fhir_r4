import 'package:fhir_r4/fhir_r4.dart';

/// This example FHIR value set is comprised of lifecycle event codes. The FHIR Actor value set is based on DICOM Audit Message, ParticipantObjectDataLifeCycle; ISO Standard, TS 21089-2017;
enum ObjectLifecycleEvents {
  /// Display: Origination / Creation
  /// Definition:
  value1('1'),

  /// Display: Import / Copy
  /// Definition:
  value2('2'),

  /// Display: Amendment
  /// Definition:
  value3('3'),

  /// Display: Verification
  /// Definition:
  value4('4'),

  /// Display: Translation
  /// Definition:
  value5('5'),

  /// Display: Access / Use
  /// Definition:
  value6('6'),

  /// Display: De-identification
  /// Definition:
  value7('7'),

  /// Display: Aggregation / summarization / derivation
  /// Definition:
  value8('8'),

  /// Display: Report
  /// Definition:
  value9('9'),

  /// Display: Export
  /// Definition:
  value10('10'),

  /// Display: Disclosure
  /// Definition:
  value11('11'),

  /// Display: Receipt of disclosure
  /// Definition:
  value12('12'),

  /// Display: Archiving
  /// Definition:
  value13('13'),

  /// Display: Logical deletion
  /// Definition:
  value14('14'),

  /// Display: Permanent erasure / Physical destruction
  /// Definition:
  value15('15'),

  /// Display: Access/View Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to obtain and open a record entry for inspection or review.
  access('access'),

  /// Display: Add Legal Hold Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to tag or otherwise indicate special access management and suspension of record entry deletion/destruction, if deemed relevant to a lawsuit or which are reasonably anticipated to be relevant or to fulfill organizational policy under the legal doctrine of “duty to preserve”.
  hold('hold'),

  /// Display: Amend (Update) Record Lifecycle Event
  /// Definition: Occurs when an agent makes any change to record entry content currently residing in storage considered permanent (persistent).
  amend('amend'),

  /// Display: Archive Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to create and move archive artifacts containing record entry content, typically to long-term offline storage.
  archive('archive'),

  /// Display: Attest Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to capture the agent’s digital signature (or equivalent indication) during formal validation of record entry content.
  attest('attest'),

  /// Display: Decrypt Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to decode record entry content from a cipher.
  decrypt('decrypt'),

  /// Display: De-Identify (Anononymize) Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to scrub record entry content to reduce the association between a set of identifying data and the data subject in a way that might or might not be reversible.
  deidentify('deidentify'),

  /// Display: Deprecate Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to tag record entry(ies) as obsolete, erroneous or untrustworthy, to warn against its future use.
  deprecate('deprecate'),

  /// Display: Destroy/Delete Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to permanently erase record entry content from the system.
  destroy('destroy'),

  /// Display: Disclose Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to release, transfer, provision access to, or otherwise divulge record entry content.
  disclose('disclose'),

  /// Display: Encrypt Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to encode record entry content in a cipher.
  encrypt('encrypt'),

  /// Display: Extract Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to selectively pull out a subset of record entry content, based on explicit criteria.
  extract('extract'),

  /// Display: Link Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to connect related record entries.
  link('link'),

  /// Display: Merge Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to combine or join content from two or more record entries, resulting in a single logical record entry.
  merge('merge'),

  /// Display: Originate/Retain Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to: a) initiate capture of potential record content, and b) incorporate that content into the storage considered a permanent part of the health record.
  originate('originate'),

  /// Display: Pseudonymize Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to remove record entry content to reduce the association between a set of identifying data and the data subject in a way that may be reversible.
  pseudonymize('pseudonymize'),

  /// Display: Re-activate Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to recreate or restore full status to record entries previously deleted or deprecated.
  reactivate('reactivate'),

  /// Display: Receive/Retain Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to a) initiate capture of data content from elsewhere, and b) incorporate that content into the storage considered a permanent part of the health record.
  receive('receive'),

  /// Display: Re-identify Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to restore information to data that allows identification of information source and/or information subject.
  reidentify('reidentify'),

  /// Display: Remove Legal Hold Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to remove a tag or other cues for special access management had required to fulfill organizational policy under the legal doctrine of “duty to preserve”.
  unhold('unhold'),

  /// Display: Report (Output) Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to produce and deliver record entry content in a particular form and manner.
  report('report'),

  /// Display: Restore Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to recreate record entries and their content from a previous created archive artefact.
  restore('restore'),

  /// Display: Transform/Translate Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to change the form, language or code system used to represent record entry content.
  transform('transform'),

  /// Display: Transmit Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to send record entry content from one (EHR/PHR/other) system to another.
  transmit('transmit'),

  /// Display: Unlink Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to disconnect two or more record entries previously connected, rendering them separate (disconnected) again.
  unlink('unlink'),

  /// Display: Unmerge Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to reverse a previous record entry merge operation, rendering them separate again.
  unmerge('unmerge'),

  /// Display: Verify Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to confirm compliance of data or data objects with regulations, requirements, specifications, or other imposed conditions based on organizational policy.
  verify('verify'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ObjectLifecycleEvents(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ObjectLifecycleEvents fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObjectLifecycleEvents.elementOnly.withElement(element);
    }
    return ObjectLifecycleEvents.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ObjectLifecycleEvents withElement(Element? newElement) {
    return ObjectLifecycleEvents.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
