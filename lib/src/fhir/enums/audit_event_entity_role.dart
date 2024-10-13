/// Code representing the role the entity played in the audit event.
enum AuditEventEntityRole {
  /// Display: Patient
  /// Definition: This object is the patient that is the subject of care related to this event.  It is identifiable by patient ID or equivalent.  The patient may be either human or animal.
  value1,

  /// Display: Location
  /// Definition: This is a location identified as related to the event.  This is usually the location where the event took place.  Note that for shipping, the usual events are arrival at a location or departure from a location.
  value2,

  /// Display: Report
  /// Definition: This object is any kind of persistent document created as a result of the event.  This could be a paper report, film, electronic report, DICOM Study, etc.  Issues related to medical records life cycle management are conveyed elsewhere.
  value3,

  /// Display: Domain Resource
  /// Definition: A logical object related to a health record event.  This is any healthcare  specific resource (object) not restricted to FHIR defined Resources.
  value4,

  /// Display: Master file
  /// Definition: This is any configurable file used to control creation of documents.  Examples include the objects maintained by the HL7 Master File transactions, Value Sets, etc.
  value5,

  /// Display: User
  /// Definition: A human participant not otherwise identified by some other category.
  value6,

  /// Display: List
  /// Definition: (deprecated).
  value7,

  /// Display: Doctor
  /// Definition: Typically, a licensed person who is providing or performing care related to the event, generally a physician.   The key distinction between doctor and practitioner is with regards to their role, not the licensing.  The doctor is the human who actually performed the work.  The practitioner is the human or organization that is responsible for the work.
  value8,

  /// Display: Subscriber
  /// Definition: A person or system that is being notified as part of the event.  This is relevant in situations where automated systems provide notifications to other parties when an event took place.
  value9,

  /// Display: Guarantor
  /// Definition: Insurance company, or any other organization who accepts responsibility for paying for the healthcare event.
  value10,

  /// Display: Security User Entity
  /// Definition: A person or active system object involved in the event with a security role.
  value11,

  /// Display: Security User Group
  /// Definition: A person or system object involved in the event with the authority to modify security roles of other objects.
  value12,

  /// Display: Security Resource
  /// Definition: A passive object, such as a role table, that is relevant to the event.
  value13,

  /// Display: Security Granularity Definition
  /// Definition: (deprecated)  Relevant to certain RBAC security methodologies.
  value14,

  /// Display: Practitioner
  /// Definition: Any person or organization responsible for providing care.  This encompasses all forms of care, licensed or otherwise, and all sorts of teams and care groups. Note the distinction between practitioner and the doctor that actually provided the care to the patient.
  value15,

  /// Display: Data Destination
  /// Definition: The source or destination for data transfer, when it does not match some other role.
  value16,

  /// Display: Data Repository
  /// Definition: A source or destination for data transfer that acts as an archive, database, or similar role.
  value17,

  /// Display: Schedule
  /// Definition: An object that holds schedule information.  This could be an appointment book, availability information, etc.
  value18,

  /// Display: Customer
  /// Definition: An organization or person that is the recipient of services.  This could be an organization that is buying services for a patient, or a person that is buying services for an animal.
  value19,

  /// Display: Job
  /// Definition: An order, task, work item, procedure step, or other description of work to be performed; e.g. a particular instance of an MPPS.
  value20,

  /// Display: Job Stream
  /// Definition: A list of jobs or a system that provides lists of jobs; e.g. an MWL SCP.
  value21,

  /// Display: Table
  /// Definition: (Deprecated).
  value22,

  /// Display: Routing Criteria
  /// Definition: An object that specifies or controls the routing or delivery of items.  For example, a distribution list is the routing criteria for mail.  The items delivered may be documents, jobs, or other objects.
  value23,

  /// Display: Query
  /// Definition: The contents of a query.  This is used to capture the contents of any kind of query.  For security surveillance purposes knowing the queries being made is very important.
  value24,
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
      case value16:
        return '16';
      case value17:
        return '17';
      case value18:
        return '18';
      case value19:
        return '19';
      case value20:
        return '20';
      case value21:
        return '21';
      case value22:
        return '22';
      case value23:
        return '23';
      case value24:
        return '24';
    }
  }

  /// Returns a [String] from a [AuditEventEntityRole] enum.
  String toJson() => toString();

  /// Returns a [AuditEventEntityRole] from a [String] enum.
  static AuditEventEntityRole fromString(String str) {
    switch (str) {
      case '1':
        return AuditEventEntityRole.value1;
      case '2':
        return AuditEventEntityRole.value2;
      case '3':
        return AuditEventEntityRole.value3;
      case '4':
        return AuditEventEntityRole.value4;
      case '5':
        return AuditEventEntityRole.value5;
      case '6':
        return AuditEventEntityRole.value6;
      case '7':
        return AuditEventEntityRole.value7;
      case '8':
        return AuditEventEntityRole.value8;
      case '9':
        return AuditEventEntityRole.value9;
      case '10':
        return AuditEventEntityRole.value10;
      case '11':
        return AuditEventEntityRole.value11;
      case '12':
        return AuditEventEntityRole.value12;
      case '13':
        return AuditEventEntityRole.value13;
      case '14':
        return AuditEventEntityRole.value14;
      case '15':
        return AuditEventEntityRole.value15;
      case '16':
        return AuditEventEntityRole.value16;
      case '17':
        return AuditEventEntityRole.value17;
      case '18':
        return AuditEventEntityRole.value18;
      case '19':
        return AuditEventEntityRole.value19;
      case '20':
        return AuditEventEntityRole.value20;
      case '21':
        return AuditEventEntityRole.value21;
      case '22':
        return AuditEventEntityRole.value22;
      case '23':
        return AuditEventEntityRole.value23;
      case '24':
        return AuditEventEntityRole.value24;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [AuditEventEntityRole] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static AuditEventEntityRole fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
