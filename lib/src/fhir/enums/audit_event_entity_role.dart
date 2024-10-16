import 'package:fhir_r4/fhir_r4.dart';

/// Code representing the role the entity played in the audit event.
enum AuditEventEntityRole {
  /// Display: Patient
  /// Definition: This object is the patient that is the subject of care related to this event. It is identifiable by patient ID or equivalent. The patient may be either human or animal.
  value1('1'),

  /// Display: Location
  /// Definition: This is a location identified as related to the event. This is usually the location where the event took place. Note that for shipping, the usual events are arrival at a location or departure from a location.
  value2('2'),

  /// Display: Report
  /// Definition: This object is any kind of persistent document created as a result of the event. This could be a paper report, film, electronic report, DICOM Study, etc. Issues related to medical records life cycle management are conveyed elsewhere.
  value3('3'),

  /// Display: Domain Resource
  /// Definition: A logical object related to a health record event. This is any healthcare specific resource (object) not restricted to FHIR defined Resources.
  value4('4'),

  /// Display: Master file
  /// Definition: This is any configurable file used to control creation of documents. Examples include the objects maintained by the HL7 Master File transactions, Value Sets, etc.
  value5('5'),

  /// Display: User
  /// Definition: A human participant not otherwise identified by some other category.
  value6('6'),

  /// Display: List
  /// Definition: (deprecated).
  value7('7'),

  /// Display: Doctor
  /// Definition: Typically, a licensed person who is providing or performing care related to the event, generally a physician. The key distinction between doctor and practitioner is with regards to their role, not the licensing. The doctor is the human who actually performed the work. The practitioner is the human or organization that is responsible for the work.
  value8('8'),

  /// Display: Subscriber
  /// Definition: A person or system that is being notified as part of the event. This is relevant in situations where automated systems provide notifications to other parties when an event took place.
  value9('9'),

  /// Display: Guarantor
  /// Definition: Insurance company, or any other organization who accepts responsibility for paying for the healthcare event.
  value10('10'),

  /// Display: Security User Entity
  /// Definition: A person or active system object involved in the event with a security role.
  value11('11'),

  /// Display: Security User Group
  /// Definition: A person or system object involved in the event with the authority to modify security roles of other objects.
  value12('12'),

  /// Display: Security Resource
  /// Definition: A passive object, such as a role table, that is relevant to the event.
  value13('13'),

  /// Display: Security Granularity Definition
  /// Definition: (deprecated) Relevant to certain RBAC security methodologies.
  value14('14'),

  /// Display: Practitioner
  /// Definition: Any person or organization responsible for providing care. This encompasses all forms of care, licensed or otherwise, and all sorts of teams and care groups. Note the distinction between practitioner and the doctor that actually provided the care to the patient.
  value15('15'),

  /// Display: Data Destination
  /// Definition: The source or destination for data transfer, when it does not match some other role.
  value16('16'),

  /// Display: Data Repository
  /// Definition: A source or destination for data transfer that acts as an archive, database, or similar role.
  value17('17'),

  /// Display: Schedule
  /// Definition: An object that holds schedule information. This could be an appointment book, availability information, etc.
  value18('18'),

  /// Display: Customer
  /// Definition: An organization or person that is the recipient of services. This could be an organization that is buying services for a patient, or a person that is buying services for an animal.
  value19('19'),

  /// Display: Job
  /// Definition: An order, task, work item, procedure step, or other description of work to be performed; e.g. a particular instance of an MPPS.
  value20('20'),

  /// Display: Job Stream
  /// Definition: A list of jobs or a system that provides lists of jobs; e.g. an MWL SCP.
  value21('21'),

  /// Display: Table
  /// Definition: (Deprecated).
  value22('22'),

  /// Display: Routing Criteria
  /// Definition: An object that specifies or controls the routing or delivery of items. For example, a distribution list is the routing criteria for mail. The items delivered may be documents, jobs, or other objects.
  value23('23'),

  /// Display: Query
  /// Definition: The contents of a query. This is used to capture the contents of any kind of query. For security surveillance purposes knowing the queries being made is very important.
  value24('24'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const AuditEventEntityRole(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static AuditEventEntityRole fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventEntityRole.elementOnly.withElement(element);
    }
    return AuditEventEntityRole.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  AuditEventEntityRole withElement(Element? newElement) {
    return AuditEventEntityRole.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
