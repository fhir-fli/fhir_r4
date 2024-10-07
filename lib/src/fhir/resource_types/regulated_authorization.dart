import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [RegulatedAuthorization] /// Regulatory approval, clearance or licencing related to a regulated product,
/// treatment, facility or activity that is cited in a guidance, regulation,
/// rule or legislative act. An example is Market Authorization relating to a
/// Medicinal Product.
class RegulatedAuthorization extends DomainResource {
  RegulatedAuthorization({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.subject,
    this.type,
    this.description,
    this.descriptionElement,
    this.region,
    this.status,
    this.statusDate,
    this.statusDateElement,
    this.validityPeriod,
    this.indication,
    this.intendedUse,
    this.basis,
    this.holder,
    this.regulator,
    this.case_,
  }) : super(resourceType: R4ResourceType.RegulatedAuthorization);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifier for the authorization, typically assigned by the
  /// authorizing body.
  final List<Identifier>? identifier;

  /// [subject] /// The product type, treatment, facility or activity that is being authorized.
  final List<Reference>? subject;

  /// [type] /// Overall type of this authorization, for example drug marketing approval,
  /// orphan drug designation.
  final CodeableConcept? type;

  /// [description] /// General textual supporting information.
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [region] /// The territory (e.g., country, jurisdiction etc.) in which the authorization
  /// has been granted.
  final List<CodeableConcept>? region;

  /// [status] /// The status that is authorised e.g. approved. Intermediate states and
  /// actions can be tracked with cases and applications.
  final CodeableConcept? status;

  /// [statusDate] /// The date at which the current status was assigned.
  final FhirDateTime? statusDate;
  final Element? statusDateElement;

  /// [validityPeriod] /// The time period in which the regulatory approval, clearance or licencing is
  /// in effect. As an example, a Marketing Authorization includes the date of
  /// authorization and/or an expiration date.
  final Period? validityPeriod;

  /// [indication] /// Condition for which the use of the regulated product applies.
  final CodeableReference? indication;

  /// [intendedUse] /// The intended use of the product, e.g. prevention, treatment, diagnosis.
  final CodeableConcept? intendedUse;

  /// [basis] /// The legal or regulatory framework against which this authorization is
  /// granted, or other reasons for it.
  final List<CodeableConcept>? basis;

  /// [holder] /// The organization that has been granted this authorization, by some
  /// authoritative body (the 'regulator').
  final Reference? holder;

  /// [regulator] /// The regulatory authority or authorizing body granting the authorization.
  /// For example, European Medicines Agency (EMA), Food and Drug Administration
  /// (FDA), Health Canada (HC), etc.
  final Reference? regulator;

  /// [case_] /// The case or regulatory procedure for granting or amending a regulated
  /// authorization. An authorization is granted in response to
  /// submissions/applications by those seeking authorization. A case is the
  /// administrative process that deals with the application(s) that relate to
  /// this and assesses them. Note: This area is subject to ongoing review and
  /// the workgroup is seeking implementer feedback on its use (see link at
  /// bottom of page).
  final RegulatedAuthorizationCase? case_;
  @override
  RegulatedAuthorization clone() => throw UnimplementedError();
  RegulatedAuthorization copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<Reference>? subject,
    CodeableConcept? type,
    FhirMarkdown? description,
    Element? descriptionElement,
    List<CodeableConcept>? region,
    CodeableConcept? status,
    FhirDateTime? statusDate,
    Element? statusDateElement,
    Period? validityPeriod,
    CodeableReference? indication,
    CodeableConcept? intendedUse,
    List<CodeableConcept>? basis,
    Reference? holder,
    Reference? regulator,
    RegulatedAuthorizationCase? case_,
  }) {
    return RegulatedAuthorization(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      subject: subject ?? this.subject,
      type: type ?? this.type,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      region: region ?? this.region,
      status: status ?? this.status,
      statusDate: statusDate ?? this.statusDate,
      statusDateElement: statusDateElement ?? this.statusDateElement,
      validityPeriod: validityPeriod ?? this.validityPeriod,
      indication: indication ?? this.indication,
      intendedUse: intendedUse ?? this.intendedUse,
      basis: basis ?? this.basis,
      holder: holder ?? this.holder,
      regulator: regulator ?? this.regulator,
      case_: case_ ?? this.case_,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [RegulatedAuthorizationCase] /// The case or regulatory procedure for granting or amending a regulated
/// authorization. An authorization is granted in response to
/// submissions/applications by those seeking authorization. A case is the
/// administrative process that deals with the application(s) that relate to
/// this and assesses them. Note: This area is subject to ongoing review and
/// the workgroup is seeking implementer feedback on its use (see link at
/// bottom of page).
class RegulatedAuthorizationCase extends BackboneElement {
  RegulatedAuthorizationCase({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.type,
    this.status,
    this.datePeriod,
    this.dateDateTime,
    this.dateDateTimeElement,
    this.application,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifier by which this case can be referenced.
  final Identifier? identifier;

  /// [type] /// The defining type of case.
  final CodeableConcept? type;

  /// [status] /// The status associated with the case.
  final CodeableConcept? status;

  /// [datePeriod] /// Relevant date for this case.
  final Period? datePeriod;

  /// [dateDateTime] /// Relevant date for this case.
  final FhirDateTime? dateDateTime;
  final Element? dateDateTimeElement;

  /// [application] /// A regulatory submission from an organization to a regulator, as part of an
  /// assessing case. Multiple applications may occur over time, with more or
  /// different information to support or modify the submission or the
  /// authorization. The applications can be considered as steps within the
  /// longer running case or procedure for this authorization process.
  final List<RegulatedAuthorizationCase>? application;
  @override
  RegulatedAuthorizationCase clone() => throw UnimplementedError();
  RegulatedAuthorizationCase copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    CodeableConcept? type,
    CodeableConcept? status,
    Period? datePeriod,
    FhirDateTime? dateDateTime,
    Element? dateDateTimeElement,
    List<RegulatedAuthorizationCase>? application,
  }) {
    return RegulatedAuthorizationCase(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      type: type ?? this.type,
      status: status ?? this.status,
      datePeriod: datePeriod ?? this.datePeriod,
      dateDateTime: dateDateTime ?? this.dateDateTime,
      dateDateTimeElement: dateDateTimeElement ?? this.dateDateTimeElement,
      application: application ?? this.application,
    );
  }
}
