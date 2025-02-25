import 'package:fhir_r4/fhir_r4.dart';

/// Polymorphic types for FHIR data types.
abstract class PolymorphicType {}

/// A code, group definition, or canonical reference that describes or
/// identifies the intended subject of the activity being defined.
/// Canonical references are allowed to support the definition of protocols
/// for drug and substance quality specifications, and is allowed to
/// reference a MedicinalProductDefinition, SubstanceDefinition,
/// AdministrableProductDefinition, ManufacturedItemDefinition, or
/// PackagedProductDefinition resource.
abstract class SubjectXActivityDefinition extends DataType
    implements PolymorphicType {}

/// The period, timing or frequency upon which the described activity is to
/// occur.
abstract class TimingXActivityDefinition extends DataType
    implements PolymorphicType {}

/// Identifies the food, drug or other product being consumed or supplied
/// in the activity.
abstract class ProductXActivityDefinition extends DataType
    implements PolymorphicType {}

/// A value for the characteristic.
abstract class ValueXAdministrableProductDefinitionProperty extends DataType
    implements PolymorphicType {}

/// Estimated or actual date, date-time, or age when allergy or intolerance
/// was identified.
abstract class OnsetXAllergyIntolerance extends DataType
    implements PolymorphicType {}

/// The value of the extra detail.
abstract class ValueXAuditEventDetail extends DataType
    implements PolymorphicType {}

/// Time of product collection.
abstract class CollectedXBiologicallyDerivedProductCollection extends DataType
    implements PolymorphicType {}

/// Time of processing.
abstract class TimeXBiologicallyDerivedProductProcessing extends DataType
    implements PolymorphicType {}

/// Time of manipulation.
abstract class TimeXBiologicallyDerivedProductManipulation extends DataType
    implements PolymorphicType {}

/// The period, timing or frequency upon which the described activity is to
/// occur.
abstract class ScheduledXCarePlanDetail extends DataType
    implements PolymorphicType {}

/// Identifies the food, drug or other product to be consumed or supplied
/// in the activity.
abstract class ProductXCarePlanDetail extends DataType
    implements PolymorphicType {}

/// Date/time(s) or duration when the charged service was applied.
abstract class OccurrenceXChargeItem extends DataType
    implements PolymorphicType {}

/// Identifies the device, food, drug or other product being charged either
/// by type code or reference to an instance.
abstract class ProductXChargeItem extends DataType implements PolymorphicType {}

/// The article or artifact that the Citation Resource is related to.
abstract class TargetXCitationRelatesTo extends DataType
    implements PolymorphicType {}

/// The article or artifact that the cited artifact is related to.
abstract class TargetXCitationRelatesTo1 extends DataType
    implements PolymorphicType {}

/// The date when or period to which this information refers.
abstract class TimingXClaimSupportingInfo extends DataType
    implements PolymorphicType {}

/// Additional data or information such as resources, documents, images
/// etc. including references to the data or the actual inclusion of the
/// data.
abstract class ValueXClaimSupportingInfo extends DataType
    implements PolymorphicType {}

/// The nature of illness or problem in a coded form or as a reference to
/// an external defined Condition.
abstract class DiagnosisXClaimDiagnosis extends DataType
    implements PolymorphicType {}

/// The code or reference to a Procedure resource which identifies the
/// clinical intervention performed.
abstract class ProcedureXClaimProcedure extends DataType
    implements PolymorphicType {}

/// The physical location of the accident event.
abstract class LocationXClaimAccident extends DataType
    implements PolymorphicType {}

/// The date or dates when the service or product was supplied, performed
/// or completed.
abstract class ServicedXClaimItem extends DataType implements PolymorphicType {}

/// Where the product or service was provided.
abstract class LocationXClaimItem extends DataType implements PolymorphicType {}

/// The date or dates when the service or product was supplied, performed
/// or completed.
abstract class ServicedXClaimResponseAddItem extends DataType
    implements PolymorphicType {}

/// Where the product or service was provided.
abstract class LocationXClaimResponseAddItem extends DataType
    implements PolymorphicType {}

/// The point in time or period over which the subject was assessed.
abstract class EffectiveXClinicalImpression extends DataType
    implements PolymorphicType {}

/// Timing or duration information, that may be associated with use with
/// the indicated condition e.g. Adult patients suffering from myocardial
/// infarction (from a few days until less than 35 days), ischaemic stroke
/// (from 7 days until less than 6 months).
abstract class DurationXClinicalUseDefinitionIndication extends DataType
    implements PolymorphicType {}

/// The specific medication, food or laboratory test that interacts.
abstract class ItemXClinicalUseDefinitionInteractant extends DataType
    implements PolymorphicType {}

/// The value of this property.
abstract class ValueXCodeSystemProperty extends DataType
    implements PolymorphicType {}

/// A communicated content (or for multi-part communications, one portion
/// of the communication).
abstract class ContentXCommunicationPayload extends DataType
    implements PolymorphicType {}

/// The time when this communication is to occur.
abstract class OccurrenceXCommunicationRequest extends DataType
    implements PolymorphicType {}

/// The communicated content (or for multi-part communications, one portion
/// of the communication).
abstract class ContentXCommunicationRequestPayload extends DataType
    implements PolymorphicType {}

/// The target composition/document of this relationship.
abstract class TargetXCompositionRelatesTo extends DataType
    implements PolymorphicType {}

/// Identifier for the source value set that contains the concepts that are
/// being mapped and provides context for the mappings.
abstract class SourceXConceptMap extends DataType implements PolymorphicType {}

/// The target value set provides context for the mappings. Note that the
/// mapping is made between concepts, not between value sets, but the value
/// set provides important context about how the concept mapping choices
/// are made.
abstract class TargetXConceptMap extends DataType implements PolymorphicType {}

/// Estimated or actual date or date-time the condition began, in the
/// opinion of the clinician.
abstract class OnsetXCondition extends DataType implements PolymorphicType {}

/// The date or estimated date that the condition resolved or went into
/// remission. This is called "abatement" because of the many overloaded
/// connotations associated with "remission" or "resolution" - Conditions
/// are never really resolved, but they can abate.
abstract class AbatementXCondition extends DataType
    implements PolymorphicType {}

/// The source on which this consent statement is based. The source might
/// be a scanned original paper form, or a reference to a consent that
/// links back to such a source, a reference to a document repository (e.g.
/// XDS) that stores the original consent document.
abstract class SourceXConsent extends DataType implements PolymorphicType {}

/// Narrows the range of legal concerns to focus on the achievement of
/// specific contractual objectives.
abstract class TopicXContract extends DataType implements PolymorphicType {}

/// Legally binding Contract: This is the signed and legally recognized
/// representation of the Contract, which is considered the "source of
/// truth" and which would be the basis for legal action related to
/// enforcement of this Contract.
abstract class LegallyBindingXContract extends DataType
    implements PolymorphicType {}

/// The entity that the term applies to.
abstract class TopicXContractTerm extends DataType implements PolymorphicType {}

/// Response to an offer clause or question text, which enables selection
/// of values to be agreed to, e.g., the period of participation, the date
/// of occupancy of a rental, warrently duration, or whether biospecimen
/// may be used for further research.
abstract class ValueXContractAnswer extends DataType
    implements PolymorphicType {}

/// Specific type of Contract Valued Item that may be priced.
abstract class EntityXContractValuedItem extends DataType
    implements PolymorphicType {}

/// When action happens.
abstract class OccurrenceXContractAction extends DataType
    implements PolymorphicType {}

/// Human readable rendering of this Contract in a format and
/// representation intended to enhance comprehension and ensure
/// understandability.
abstract class ContentXContractFriendly extends DataType
    implements PolymorphicType {}

/// Contract legal text in human renderable form.
abstract class ContentXContractLegal extends DataType
    implements PolymorphicType {}

/// Computable Contract conveyed using a policy rule language (e.g. XACML,
/// DKAL, SecPal).
abstract class ContentXContractRule extends DataType
    implements PolymorphicType {}

/// The amount due from the patient for the cost category.
abstract class ValueXCoverageCostToBeneficiary extends DataType
    implements PolymorphicType {}

/// The date or dates when the enclosed suite of services were performed or
/// completed.
abstract class ServicedXCoverageEligibilityRequest extends DataType
    implements PolymorphicType {}

/// The nature of illness or problem in a coded form or as a reference to
/// an external defined Condition.
abstract class DiagnosisXCoverageEligibilityRequestDiagnosis extends DataType
    implements PolymorphicType {}

/// The date or dates when the enclosed suite of services were performed or
/// completed.
abstract class ServicedXCoverageEligibilityResponse extends DataType
    implements PolymorphicType {}

/// The quantity of the benefit which is permitted under the coverage.
abstract class AllowedXCoverageEligibilityResponseBenefit extends DataType
    implements PolymorphicType {}

/// The quantity of the benefit which have been consumed to date.
abstract class UsedXCoverageEligibilityResponseBenefit extends DataType
    implements PolymorphicType {}

/// The date or period when the detected issue was initially identified.
abstract class IdentifiedXDetectedIssue extends DataType
    implements PolymorphicType {}

/// A name of the manufacturer.
abstract class ManufacturerXDeviceDefinition extends DataType
    implements PolymorphicType {}

/// The details of the device to be used.
abstract class CodeXDeviceRequest extends DataType implements PolymorphicType {}

/// The timing schedule for the use of the device. The Schedule data type
/// allows many different expressions, for example. "Every 8 hours"; "Three
/// times a day"; "1/2 an hour before breakfast for 10 days from 23-Dec
/// 2011:"; "15 Oct 2013, 17 Oct 2013 and 1 Nov 2013".
abstract class OccurrenceXDeviceRequest extends DataType
    implements PolymorphicType {}

/// The value of the device detail.
abstract class ValueXDeviceRequestParameter extends DataType
    implements PolymorphicType {}

/// How often the device was used.
abstract class TimingXDeviceUseStatement extends DataType
    implements PolymorphicType {}

/// The time or time-period the observed values are related to. When the
/// subject of the report is a patient, this is usually either the time of
/// the procedure or of specimen collection(s), but very often the source
/// of the date/time is not known, only the date/time itself.
abstract class EffectiveXDiagnosticReport extends DataType
    implements PolymorphicType {}

/// A code or group definition that describes the intended subject of the
/// event definition.
abstract class SubjectXEventDefinition extends DataType
    implements PolymorphicType {}

/// Citation Resource or display of suggested citation for this evidence.
abstract class CiteAsXEvidence extends DataType implements PolymorphicType {}

/// Citation Resource or display of suggested citation for this report.
abstract class CiteAsXEvidenceReport extends DataType
    implements PolymorphicType {}

/// Characteristic value.
abstract class ValueXEvidenceReportCharacteristic extends DataType
    implements PolymorphicType {}

/// The target composition/document of this relationship.
abstract class TargetXEvidenceReportRelatesTo extends DataType
    implements PolymorphicType {}

/// Define members of the evidence element using Codes (such as condition,
/// medication, or observation), Expressions ( using an expression language
/// such as FHIRPath or CQL) or DataRequirements (such as Diabetes
/// diagnosis onset in the last year).
abstract class DefinitionXEvidenceVariableCharacteristic extends DataType
    implements PolymorphicType {}

/// Value or set of values that define the grouping.
abstract class ValueXEvidenceVariableCategory extends DataType
    implements PolymorphicType {}

/// The date when or period to which this information refers.
abstract class TimingXExplanationOfBenefitSupportingInfo extends DataType
    implements PolymorphicType {}

/// Additional data or information such as resources, documents, images
/// etc. including references to the data or the actual inclusion of the
/// data.
abstract class ValueXExplanationOfBenefitSupportingInfo extends DataType
    implements PolymorphicType {}

/// The nature of illness or problem in a coded form or as a reference to
/// an external defined Condition.
abstract class DiagnosisXExplanationOfBenefitDiagnosis extends DataType
    implements PolymorphicType {}

/// The code or reference to a Procedure resource which identifies the
/// clinical intervention performed.
abstract class ProcedureXExplanationOfBenefitProcedure extends DataType
    implements PolymorphicType {}

/// The physical location of the accident event.
abstract class LocationXExplanationOfBenefitAccident extends DataType
    implements PolymorphicType {}

/// The date or dates when the service or product was supplied, performed
/// or completed.
abstract class ServicedXExplanationOfBenefitItem extends DataType
    implements PolymorphicType {}

/// Where the product or service was provided.
abstract class LocationXExplanationOfBenefitItem extends DataType
    implements PolymorphicType {}

/// The date or dates when the service or product was supplied, performed
/// or completed.
abstract class ServicedXExplanationOfBenefitAddItem extends DataType
    implements PolymorphicType {}

/// Where the product or service was provided.
abstract class LocationXExplanationOfBenefitAddItem extends DataType
    implements PolymorphicType {}

/// The quantity of the benefit which is permitted under the coverage.
abstract class AllowedXExplanationOfBenefitFinancial extends DataType
    implements PolymorphicType {}

/// The quantity of the benefit which have been consumed to date.
abstract class UsedXExplanationOfBenefitFinancial extends DataType
    implements PolymorphicType {}

/// The actual or approximate date of birth of the relative.
abstract class BornXFamilyMemberHistory extends DataType
    implements PolymorphicType {}

/// The age of the relative at the time the family member history is
/// recorded.
abstract class AgeXFamilyMemberHistory extends DataType
    implements PolymorphicType {}

/// Deceased flag or the actual or approximate age of the relative at the
/// time of death for the family member history record.
abstract class DeceasedXFamilyMemberHistory extends DataType
    implements PolymorphicType {}

/// Either the age of onset, range of approximate age or descriptive string
/// can be recorded. For conditions with multiple occurrences, this
/// describes the first known occurrence.
abstract class OnsetXFamilyMemberHistoryCondition extends DataType
    implements PolymorphicType {}

/// The date or event after which the goal should begin being pursued.
abstract class StartXGoal extends DataType implements PolymorphicType {}

/// The target value of the focus to be achieved to signify the fulfillment
/// of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both
/// values of the range can be specified. When a low value is missing, it
/// indicates that the goal is achieved at any focus value at or below the
/// high value. Similarly, if the high value is missing, it indicates that
/// the goal is achieved at any focus value at or above the low value.
abstract class DetailXGoalTarget extends DataType implements PolymorphicType {}

/// Indicates either the date or the duration after start by which the goal
/// should be met.
abstract class DueXGoalTarget extends DataType implements PolymorphicType {}

/// The value of the trait that holds (or does not hold - see 'exclude')
/// for members of the group.
abstract class ValueXGroupCharacteristic extends DataType
    implements PolymorphicType {}

/// An identifier, CodeableConcept or canonical reference to the guidance
/// that was requested.
abstract class ModuleXGuidanceResponse extends DataType
    implements PolymorphicType {}

/// Date vaccine administered or was to be administered.
abstract class OccurrenceXImmunization extends DataType
    implements PolymorphicType {}

/// Nominal position in a series.
abstract class DoseNumberXImmunizationProtocolApplied extends DataType
    implements PolymorphicType {}

/// The recommended number of doses to achieve immunity.
abstract class SeriesDosesXImmunizationProtocolApplied extends DataType
    implements PolymorphicType {}

/// Nominal position in a series.
abstract class DoseNumberXImmunizationEvaluation extends DataType
    implements PolymorphicType {}

/// The recommended number of doses to achieve immunity.
abstract class SeriesDosesXImmunizationEvaluation extends DataType
    implements PolymorphicType {}

/// Nominal position of the recommended dose in a series (e.g. dose 2 is
/// the next recommended dose).
abstract class DoseNumberXImmunizationRecommendationRecommendation
    extends DataType implements PolymorphicType {}

/// The recommended number of doses to achieve immunity.
abstract class SeriesDosesXImmunizationRecommendationRecommendation
    extends DataType implements PolymorphicType {}

/// If true or a reference, indicates the resource is an example instance.
/// If a reference is present, indicates that the example is an example of
/// the specified profile.
abstract class ExampleXImplementationGuideResource extends DataType
    implements PolymorphicType {}

/// The source address for the page.
abstract class NameXImplementationGuidePage extends DataType
    implements PolymorphicType {}

/// If true or a reference, indicates the resource is an example instance.
/// If a reference is present, indicates that the example is an example of
/// the specified profile.
abstract class ExampleXImplementationGuideResource1 extends DataType
    implements PolymorphicType {}

/// The quantity of substance in the unit of presentation, or in the volume
/// (or mass) of the single pharmaceutical product or manufactured item.
/// Unit of presentation refers to the quantity that the item occurs in
/// e.g. a strength per tablet size, perhaps 'per 20mg' (the size of the
/// tablet). It is not generally normalized as a unitary unit, which would
/// be 'per mg').
abstract class PresentationXIngredientStrength extends DataType
    implements PolymorphicType {}

/// The strength per unitary volume (or mass).
abstract class ConcentrationXIngredientStrength extends DataType
    implements PolymorphicType {}

/// Strength expressed in terms of a reference substance.
abstract class StrengthXIngredientReferenceStrength extends DataType
    implements PolymorphicType {}

/// The ChargeItem contains information such as the billing code, date,
/// amount etc. If no further details are required for the lineItem, inline
/// billing codes can be added using the CodeableConcept data type instead
/// of the Reference.
abstract class ChargeItemXInvoiceLineItem extends DataType
    implements PolymorphicType {}

/// A code or group definition that describes the intended subject of the
/// contents of the library.
abstract class SubjectXLibrary extends DataType implements PolymorphicType {}

/// A value for the characteristic.
abstract class ValueXManufacturedItemDefinitionProperty extends DataType
    implements PolymorphicType {}

/// The intended subjects for the measure. If this element is not provided,
/// a Patient subject is assumed, but the subject of the measure can be
/// anything.
abstract class SubjectXMeasure extends DataType implements PolymorphicType {}

/// The date and time(s) at which the media was collected.
abstract class CreatedXMedia extends DataType implements PolymorphicType {}

/// The actual ingredient - either a substance (simple ingredient) or
/// another medication of a medication.
abstract class ItemXMedicationIngredient extends DataType
    implements PolymorphicType {}

/// Identifies the medication that was administered. This is either a link
/// to a resource representing the details of the medication or a simple
/// attribute carrying a code that identifies the medication from a known
/// list of medications.
abstract class MedicationXMedicationAdministration extends DataType
    implements PolymorphicType {}

/// A specific date/time or interval of time during which the
/// administration took place (or did not take place, when the 'notGiven'
/// attribute is true). For many administrations, such as swallowing a
/// tablet the use of dateTime is more appropriate.
abstract class EffectiveXMedicationAdministration extends DataType
    implements PolymorphicType {}

/// Identifies the speed with which the medication was or will be
/// introduced into the patient. Typically, the rate for an infusion e.g.
/// 100 ml per 1 hour or 100 ml/hr. May also be expressed as a rate per
/// unit of time, e.g. 500 ml per 2 hours. Other examples: 200 mcg/min or
/// 200 mcg/1 minute; 1 liter/8 hours.
abstract class RateXMedicationAdministrationDosage extends DataType
    implements PolymorphicType {}

/// Indicates the reason why a dispense was not performed.
abstract class StatusReasonXMedicationDispense extends DataType
    implements PolymorphicType {}

/// Identifies the medication being administered. This is either a link to
/// a resource representing the details of the medication or a simple
/// attribute carrying a code that identifies the medication from a known
/// list of medications.
abstract class MedicationXMedicationDispense extends DataType
    implements PolymorphicType {}

/// The actual ingredient - either a substance (simple ingredient) or
/// another medication.
abstract class ItemXMedicationKnowledgeIngredient extends DataType
    implements PolymorphicType {}

/// Indication for use that apply to the specific administration
/// guidelines.
abstract class IndicationXMedicationKnowledgeAdministrationGuidelines
    extends DataType implements PolymorphicType {}

/// Specific characteristic that is relevant to the administration
/// guideline (e.g. height, weight, gender).
abstract class CharacteristicXMedicationKnowledgePatientCharacteristics
    extends DataType implements PolymorphicType {}

/// Description of the characteristic.
abstract class ValueXMedicationKnowledgeDrugCharacteristic extends DataType
    implements PolymorphicType {}

/// Indicates if this record was captured as a secondary 'reported' record
/// rather than as an original primary source-of-truth record. It may also
/// indicate the source of the report.
abstract class ReportedXMedicationRequest extends DataType
    implements PolymorphicType {}

/// Identifies the medication being requested. This is a link to a resource
/// that represents the medication which may be the details of the
/// medication or simply an attribute carrying a code that identifies the
/// medication from a known list of medications.
abstract class MedicationXMedicationRequest extends DataType
    implements PolymorphicType {}

/// True if the prescriber allows a different drug to be dispensed from
/// what was prescribed.
abstract class AllowedXMedicationRequestSubstitution extends DataType
    implements PolymorphicType {}

/// Identifies the medication being administered. This is either a link to
/// a resource representing the details of the medication or a simple
/// attribute carrying a code that identifies the medication from a known
/// list of medications.
abstract class MedicationXMedicationStatement extends DataType
    implements PolymorphicType {}

/// The interval of time during which it is being asserted that the patient
/// is/was/will be taking the medication (or was not taking, when the
/// MedicationStatement.taken element is No).
abstract class EffectiveXMedicationStatement extends DataType
    implements PolymorphicType {}

/// A value for the characteristic.
abstract class ValueXMedicinalProductDefinitionCharacteristic extends DataType
    implements PolymorphicType {}

/// Event code or link to the EventDefinition.
abstract class EventXMessageDefinition extends DataType
    implements PolymorphicType {}

/// Code that identifies the event this message represents and connects it
/// with its definition. Events defined as part of the FHIR specification
/// have the system value
/// "http://terminology.hl7.org/CodeSystem/message-events". Alternatively
/// uri to the EventDefinition.
abstract class EventXMessageHeader extends DataType
    implements PolymorphicType {}

/// The rate of administration of formula via a feeding pump, e.g. 60 mL
/// per hour, according to the specified schedule.
abstract class RateXNutritionOrderAdministration extends DataType
    implements PolymorphicType {}

/// The actual characteristic value corresponding to the type.
abstract class ValueXNutritionProductProductCharacteristic extends DataType
    implements PolymorphicType {}

/// The time or time-period the observed value is asserted as being true.
/// For biological subjects - e.g. human patients - this is usually called
/// the "physiologically relevant time". This is usually either the time of
/// the procedure or of specimen collection, but very often the source of
/// the date/time is not known, only the date/time itself.
abstract class EffectiveXObservation extends DataType
    implements PolymorphicType {}

/// The information determined as a result of making the observation, if
/// the information has a simple value.
abstract class ValueXObservation extends DataType implements PolymorphicType {}

/// The information determined as a result of making the observation, if
/// the information has a simple value.
abstract class ValueXObservationComponent extends DataType
    implements PolymorphicType {}

/// The shelf life time period can be specified using a numerical value for
/// the period of time and its unit of time measurement The unit of
/// measurement shall be specified in accordance with ISO 11240 and the
/// resulting terminology The symbol and the symbol identifier shall be
/// used.
abstract class PeriodXPackagedProductDefinitionShelfLifeStorage extends DataType
    implements PolymorphicType {}

/// A value for the characteristic.
abstract class ValueXPackagedProductDefinitionProperty extends DataType
    implements PolymorphicType {}

/// Conveys the content if the parameter is a data type.
abstract class ValueXParametersParameter extends DataType
    implements PolymorphicType {}

/// Indicates if the individual is deceased or not.
abstract class DeceasedXPatient extends DataType implements PolymorphicType {}

/// Indicates whether the patient is part of a multiple (boolean) or
/// indicates the actual birth order (integer).
abstract class MultipleBirthXPatient extends DataType
    implements PolymorphicType {}

/// A code, group definition, or canonical reference that describes or
/// identifies the intended subject of the plan definition. Canonical
/// references are allowed to support the definition of protocols for drug
/// and substance quality specifications, and is allowed to reference a
/// MedicinalProductDefinition, SubstanceDefinition,
/// AdministrableProductDefinition, ManufacturedItemDefinition, or
/// PackagedProductDefinition resource.
abstract class SubjectXPlanDefinition extends DataType
    implements PolymorphicType {}

/// The target value of the measure to be achieved to signify fulfillment
/// of the goal, e.g. 150 pounds or 7.0%, or in the case of pharmaceutical
/// quality - NMT 0.6%, Clear solution, etc. Either the high or low or both
/// values of the range can be specified. When a low value is missing, it
/// indicates that the goal is achieved at any value at or below the high
/// value. Similarly, if the high value is missing, it indicates that the
/// goal is achieved at any value at or above the low value.
abstract class DetailXPlanDefinitionTarget extends DataType
    implements PolymorphicType {}

/// A code, group definition, or canonical reference that describes the
/// intended subject of the action and its children, if any. Canonical
/// references are allowed to support the definition of protocols for drug
/// and substance quality specifications, and is allowed to reference a
/// MedicinalProductDefinition, SubstanceDefinition,
/// AdministrableProductDefinition, ManufacturedItemDefinition, or
/// PackagedProductDefinition resource.
abstract class SubjectXPlanDefinitionAction extends DataType
    implements PolymorphicType {}

/// An optional value describing when the action should be performed.
abstract class TimingXPlanDefinitionAction extends DataType
    implements PolymorphicType {}

/// A reference to an ActivityDefinition that describes the action to be
/// taken in detail, or a PlanDefinition that describes a series of actions
/// to be taken.
abstract class DefinitionXPlanDefinitionAction extends DataType
    implements PolymorphicType {}

/// A duration or range of durations to apply to the relationship. For
/// example, 30-60 minutes before.
abstract class OffsetXPlanDefinitionRelatedAction extends DataType
    implements PolymorphicType {}

/// Estimated or actual date, date-time, period, or age when the procedure
/// was performed. Allows a period to support complex procedures that span
/// more than one date, and also allows for the length of the procedure to
/// be captured.
abstract class PerformedXProcedure extends DataType
    implements PolymorphicType {}

/// The period during which the activity occurred.
abstract class OccurredXProvenance extends DataType
    implements PolymorphicType {}

/// A value that the referenced question is tested using the specified
/// operator in order for the item to be enabled.
abstract class AnswerXQuestionnaireEnableWhen extends DataType
    implements PolymorphicType {}

/// A potential answer that's allowed as the answer to this question.
abstract class ValueXQuestionnaireAnswerOption extends DataType
    implements PolymorphicType {}

/// The actual value to for an initial answer.
abstract class ValueXQuestionnaireInitial extends DataType
    implements PolymorphicType {}

/// The answer (or one of the answers) provided by the respondent to the
/// question.
abstract class ValueXQuestionnaireResponseAnswer extends DataType
    implements PolymorphicType {}

/// Relevant date for this case.
abstract class DateXRegulatedAuthorizationCase extends DataType
    implements PolymorphicType {}

/// An optional value describing when the action should be performed.
abstract class TimingXRequestGroupAction extends DataType
    implements PolymorphicType {}

/// A duration or range of durations to apply to the relationship. For
/// example, 30-60 minutes before.
abstract class OffsetXRequestGroupRelatedAction extends DataType
    implements PolymorphicType {}

/// The intended subjects for the ResearchDefinition. If this element is
/// not provided, a Patient subject is assumed, but the subject of the
/// ResearchDefinition can be anything.
abstract class SubjectXResearchDefinition extends DataType
    implements PolymorphicType {}

/// The intended subjects for the ResearchElementDefinition. If this
/// element is not provided, a Patient subject is assumed, but the subject
/// of the ResearchElementDefinition can be anything.
abstract class SubjectXResearchElementDefinition extends DataType
    implements PolymorphicType {}

/// Define members of the research element using Codes (such as condition,
/// medication, or observation), Expressions ( using an expression language
/// such as FHIRPath or CQL) or DataRequirements (such as Diabetes
/// diagnosis onset in the last year).
abstract class DefinitionXResearchElementDefinitionCharacteristic
    extends DataType implements PolymorphicType {}

/// Indicates what effective period the study covers.
abstract class StudyEffectiveXResearchElementDefinitionCharacteristic
    extends DataType implements PolymorphicType {}

/// Indicates what effective period the study covers.
abstract class ParticipantEffectiveXResearchElementDefinitionCharacteristic
    extends DataType implements PolymorphicType {}

/// The date (and possibly time) the risk assessment was performed.
abstract class OccurrenceXRiskAssessment extends DataType
    implements PolymorphicType {}

/// Indicates how likely the outcome is (in the specified timeframe).
abstract class ProbabilityXRiskAssessmentPrediction extends DataType
    implements PolymorphicType {}

/// Indicates the period of time or age range of the subject to which the
/// specified probability applies.
abstract class WhenXRiskAssessmentPrediction extends DataType
    implements PolymorphicType {}

/// An amount of service being requested which can be a quantity ( for
/// example $1,500 home modification), a ratio ( for example, 20 half day
/// visits per month), or a range (2.0 to 1.8 Gy per fraction).
abstract class QuantityXServiceRequest extends DataType
    implements PolymorphicType {}

/// The date/time at which the requested service should occur.
abstract class OccurrenceXServiceRequest extends DataType
    implements PolymorphicType {}

/// If a CodeableConcept is present, it indicates the pre-condition for
/// performing the service. For example "pain", "on flare-up", etc.
abstract class AsNeededXServiceRequest extends DataType
    implements PolymorphicType {}

/// Time when specimen was collected from subject - the physiologically
/// relevant time.
abstract class CollectedXSpecimenCollection extends DataType
    implements PolymorphicType {}

/// Abstinence or reduction from some or all food, drink, or both, for a
/// period of time prior to sample collection.
abstract class FastingStatusXSpecimenCollection extends DataType
    implements PolymorphicType {}

/// A record of the time or period when the specimen processing occurred.
/// For example the time of sample fixation or the period of time the
/// sample was in formalin.
abstract class TimeXSpecimenProcessing extends DataType
    implements PolymorphicType {}

/// Introduced substance to preserve, maintain or enhance the specimen.
/// Examples: Formalin, Citrate, EDTA.
abstract class AdditiveXSpecimenContainer extends DataType
    implements PolymorphicType {}

/// The minimum volume to be conditioned in the container.
abstract class MinimumVolumeXSpecimenDefinitionContainer extends DataType
    implements PolymorphicType {}

/// Substance introduced in the kind of container to preserve, maintain or
/// enhance the specimen. Examples: Formalin, Citrate, EDTA.
abstract class AdditiveXSpecimenDefinitionAdditive extends DataType
    implements PolymorphicType {}

/// A value to use if there is no existing value in the source object.
abstract class DefaultValueXStructureMapSource extends DataType
    implements PolymorphicType {}

/// Parameter value - variable or literal.
abstract class ValueXStructureMapParameter extends DataType
    implements PolymorphicType {}

/// Another substance that is a component of this substance.
abstract class SubstanceXSubstanceIngredient extends DataType
    implements PolymorphicType {}

/// Quantitative value for this moiety.
abstract class AmountXSubstanceDefinitionMoiety extends DataType
    implements PolymorphicType {}

/// A value for the property.
abstract class ValueXSubstanceDefinitionProperty extends DataType
    implements PolymorphicType {}

/// A pointer to another substance, as a resource or just a
/// representational code.
abstract class SubstanceDefinitionXSubstanceDefinitionRelationship
    extends DataType implements PolymorphicType {}

/// A numeric factor for the relationship, for instance to express that the
/// salt of a substance has some percentage of the active substance in
/// relation to some other.
abstract class AmountXSubstanceDefinitionRelationship extends DataType
    implements PolymorphicType {}

/// The date or time(s) the activity occurred.
abstract class OccurrenceXSupplyDelivery extends DataType
    implements PolymorphicType {}

/// Identifies the medication, substance or device being dispensed. This is
/// either a link to a resource representing the details of the item or a
/// code that identifies the item from a known list.
abstract class ItemXSupplyDeliverySuppliedItem extends DataType
    implements PolymorphicType {}

/// The item that is requested to be supplied. This is either a link to a
/// resource representing the details of the item or a code that identifies
/// the item from a known list.
abstract class ItemXSupplyRequest extends DataType implements PolymorphicType {}

/// When the request should be fulfilled.
abstract class OccurrenceXSupplyRequest extends DataType
    implements PolymorphicType {}

/// The value of the device detail.
abstract class ValueXSupplyRequestParameter extends DataType
    implements PolymorphicType {}

/// The value of the input parameter as a basic type.
abstract class ValueXTaskInput extends DataType implements PolymorphicType {}

/// The value of the Output parameter as a basic type.
abstract class ValueXTaskOutput extends DataType implements PolymorphicType {}

/// The value of the parameter.
abstract class ValueXValueSetParameter extends DataType
    implements PolymorphicType {}

/// The individual responsible for making the annotation.
abstract class AuthorXAnnotation extends DataType implements PolymorphicType {}

/// The intended subjects of the data requirement. If this element is not
/// provided, a Patient subject is assumed.
abstract class SubjectXDataRequirement extends DataType
    implements PolymorphicType {}

/// The value of the filter. If period is specified, the filter will return
/// only those data items that fall within the bounds determined by the
/// Period, inclusive of the period boundaries. If dateTime is specified,
/// the filter will return only those data items that are equal to the
/// specified dateTime. If a Duration is specified, the filter will return
/// only those data items that fall within Duration before now.
abstract class ValueXDataRequirementDateFilter extends DataType
    implements PolymorphicType {}

/// Indicates whether the Medication is only taken when needed within a
/// specific dosing schedule (Boolean option), or it indicates the
/// precondition for taking the Medication (CodeableConcept).
abstract class AsNeededXDosage extends DataType implements PolymorphicType {}

/// Amount of medication per dose.
abstract class DoseXDosageDoseAndRate extends DataType
    implements PolymorphicType {}

/// Amount of medication per unit of time.
abstract class RateXDosageDoseAndRate extends DataType
    implements PolymorphicType {}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
abstract class DefaultValueXElementDefinition extends DataType
    implements PolymorphicType {}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
abstract class FixedXElementDefinition extends DataType
    implements PolymorphicType {}

/// Specifies a value that the value in the instance SHALL follow - that
/// is, any value in the pattern must be found in the instance. Other
/// additional values may be found too. This is effectively constraint by
/// example.
///
/// When pattern[x] is used to constrain a primitive, it means that the
/// value provided in the pattern[x] must match the instance value exactly.
///
/// When pattern[x] is used to constrain an array, it means that each
/// element provided in the pattern[x] array must (recursively) match at
/// least one element from the instance array.
///
/// When pattern[x] is used to constrain a complex object, it means that
/// each property in the pattern must be present in the complex object, and
/// its value must recursively match -- i.e.,
///
/// 1. If primitive: it must match exactly the pattern value
/// 2. If a complex object: it must match (recursively) the pattern value
/// 3. If an array: it must match (recursively) the pattern value.
abstract class PatternXElementDefinition extends DataType
    implements PolymorphicType {}

/// The minimum allowed value for the element. The value is inclusive. This
/// is allowed for the types date, dateTime, instant, time, decimal,
/// integer, and Quantity.
abstract class MinValueXElementDefinition extends DataType
    implements PolymorphicType {}

/// The maximum allowed value for the element. The value is inclusive. This
/// is allowed for the types date, dateTime, instant, time, decimal,
/// integer, and Quantity.
abstract class MaxValueXElementDefinition extends DataType
    implements PolymorphicType {}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
abstract class ValueXElementDefinitionExample extends DataType
    implements PolymorphicType {}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
abstract class ValueXExtension extends DataType implements PolymorphicType {}

/// The age of the specific population.
abstract class AgeXPopulation extends DataType implements PolymorphicType {}

/// Either a duration for the length of the timing schedule, a range of
/// possible length, or outer bounds for start and/or end limits of the
/// timing schedule.
abstract class BoundsXTimingRepeat extends DataType
    implements PolymorphicType {}

/// The timing of the event (if this is a periodic trigger).
abstract class TimingXTriggerDefinition extends DataType
    implements PolymorphicType {}

/// A value that defines the context specified in this context of use. The
/// interpretation of the value is defined by the code.
abstract class ValueXUsageContext extends DataType implements PolymorphicType {}
