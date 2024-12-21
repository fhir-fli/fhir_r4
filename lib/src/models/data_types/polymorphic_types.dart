import 'package:fhir_r4/fhir_r4.dart';

/// A code, group definition, or canonical reference that describes or
/// identifies the intended subject of the activity being defined.
/// Canonical references are allowed to support the definition of protocols
/// for drug and substance quality specifications, and is allowed to
/// reference a MedicinalProductDefinition, SubstanceDefinition,
/// AdministrableProductDefinition, ManufacturedItemDefinition, or
/// PackagedProductDefinition resource.
sealed class SubjectXActivityDefinition extends DataType {}

/// The period, timing or frequency upon which the described activity is to
/// occur.
sealed class TimingXActivityDefinition extends DataType {}

/// Identifies the food, drug or other product being consumed or supplied
/// in the activity.
sealed class ProductXActivityDefinition extends DataType {}

/// A value for the characteristic.
sealed class ValueXAdministrableProductDefinitionProperty extends DataType {}

/// Estimated or actual date, date-time, or age when allergy or intolerance
/// was identified.
sealed class OnsetXAllergyIntolerance extends DataType {}

/// The value of the extra detail.
sealed class ValueXAuditEventDetail extends DataType {}

/// Time of product collection.
sealed class CollectedXBiologicallyDerivedProductCollection extends DataType {}

/// Time of processing.
sealed class TimeXBiologicallyDerivedProductProcessing extends DataType {}

/// Time of manipulation.
sealed class TimeXBiologicallyDerivedProductManipulation extends DataType {}

/// The period, timing or frequency upon which the described activity is to
/// occur.
sealed class ScheduledXCarePlanDetail extends DataType {}

/// Identifies the food, drug or other product to be consumed or supplied
/// in the activity.
sealed class ProductXCarePlanDetail extends DataType {}

/// Date/time(s) or duration when the charged service was applied.
sealed class OccurrenceXChargeItem extends DataType {}

/// Identifies the device, food, drug or other product being charged either
/// by type code or reference to an instance.
sealed class ProductXChargeItem extends DataType {}

/// The article or artifact that the Citation Resource is related to.
sealed class TargetXCitationRelatesTo extends DataType {}

/// The article or artifact that the cited artifact is related to.
sealed class TargetXCitationRelatesTo1 extends DataType {}

/// The date when or period to which this information refers.
sealed class TimingXClaimSupportingInfo extends DataType {}

/// Additional data or information such as resources, documents, images
/// etc. including references to the data or the actual inclusion of the
/// data.
sealed class ValueXClaimSupportingInfo extends DataType {}

/// The nature of illness or problem in a coded form or as a reference to
/// an external defined Condition.
sealed class DiagnosisXClaimDiagnosis extends DataType {}

/// The code or reference to a Procedure resource which identifies the
/// clinical intervention performed.
sealed class ProcedureXClaimProcedure extends DataType {}

/// The physical location of the accident event.
sealed class LocationXClaimAccident extends DataType {}

/// The date or dates when the service or product was supplied, performed
/// or completed.
sealed class ServicedXClaimItem extends DataType {}

/// Where the product or service was provided.
sealed class LocationXClaimItem extends DataType {}

/// The date or dates when the service or product was supplied, performed
/// or completed.
sealed class ServicedXClaimResponseAddItem extends DataType {}

/// Where the product or service was provided.
sealed class LocationXClaimResponseAddItem extends DataType {}

/// The point in time or period over which the subject was assessed.
sealed class EffectiveXClinicalImpression extends DataType {}

/// Timing or duration information, that may be associated with use with
/// the indicated condition e.g. Adult patients suffering from myocardial
/// infarction (from a few days until less than 35 days), ischaemic stroke
/// (from 7 days until less than 6 months).
sealed class DurationXClinicalUseDefinitionIndication extends DataType {}

/// The specific medication, food or laboratory test that interacts.
sealed class ItemXClinicalUseDefinitionInteractant extends DataType {}

/// The value of this property.
sealed class ValueXCodeSystemProperty extends DataType {}

/// A communicated content (or for multi-part communications, one portion
/// of the communication).
sealed class ContentXCommunicationPayload extends DataType {}

/// The time when this communication is to occur.
sealed class OccurrenceXCommunicationRequest extends DataType {}

/// The communicated content (or for multi-part communications, one portion
/// of the communication).
sealed class ContentXCommunicationRequestPayload extends DataType {}

/// The target composition/document of this relationship.
sealed class TargetXCompositionRelatesTo extends DataType {}

/// Identifier for the source value set that contains the concepts that are
/// being mapped and provides context for the mappings.
sealed class SourceXConceptMap extends DataType {}

/// The target value set provides context for the mappings. Note that the
/// mapping is made between concepts, not between value sets, but the value
/// set provides important context about how the concept mapping choices
/// are made.
sealed class TargetXConceptMap extends DataType {}

/// Estimated or actual date or date-time the condition began, in the
/// opinion of the clinician.
sealed class OnsetXCondition extends DataType {}

/// The date or estimated date that the condition resolved or went into
/// remission. This is called "abatement" because of the many overloaded
/// connotations associated with "remission" or "resolution" - Conditions
/// are never really resolved, but they can abate.
sealed class AbatementXCondition extends DataType {}

/// The source on which this consent statement is based. The source might
/// be a scanned original paper form, or a reference to a consent that
/// links back to such a source, a reference to a document repository (e.g.
/// XDS) that stores the original consent document.
sealed class SourceXConsent extends DataType {}

/// Narrows the range of legal concerns to focus on the achievement of
/// specific contractual objectives.
sealed class TopicXContract extends DataType {}

/// Legally binding Contract: This is the signed and legally recognized
/// representation of the Contract, which is considered the "source of
/// truth" and which would be the basis for legal action related to
/// enforcement of this Contract.
sealed class LegallyBindingXContract extends DataType {}

/// The entity that the term applies to.
sealed class TopicXContractTerm extends DataType {}

/// Response to an offer clause or question text, which enables selection
/// of values to be agreed to, e.g., the period of participation, the date
/// of occupancy of a rental, warrently duration, or whether biospecimen
/// may be used for further research.
sealed class ValueXContractAnswer extends DataType {}

/// Specific type of Contract Valued Item that may be priced.
sealed class EntityXContractValuedItem extends DataType {}

/// When action happens.
sealed class OccurrenceXContractAction extends DataType {}

/// Human readable rendering of this Contract in a format and
/// representation intended to enhance comprehension and ensure
/// understandability.
sealed class ContentXContractFriendly extends DataType {}

/// Contract legal text in human renderable form.
sealed class ContentXContractLegal extends DataType {}

/// Computable Contract conveyed using a policy rule language (e.g. XACML,
/// DKAL, SecPal).
sealed class ContentXContractRule extends DataType {}

/// The amount due from the patient for the cost category.
sealed class ValueXCoverageCostToBeneficiary extends DataType {}

/// The date or dates when the enclosed suite of services were performed or
/// completed.
sealed class ServicedXCoverageEligibilityRequest extends DataType {}

/// The nature of illness or problem in a coded form or as a reference to
/// an external defined Condition.
sealed class DiagnosisXCoverageEligibilityRequestDiagnosis extends DataType {}

/// The date or dates when the enclosed suite of services were performed or
/// completed.
sealed class ServicedXCoverageEligibilityResponse extends DataType {}

/// The quantity of the benefit which is permitted under the coverage.
sealed class AllowedXCoverageEligibilityResponseBenefit extends DataType {}

/// The quantity of the benefit which have been consumed to date.
sealed class UsedXCoverageEligibilityResponseBenefit extends DataType {}

/// The date or period when the detected issue was initially identified.
sealed class IdentifiedXDetectedIssue extends DataType {}

/// A name of the manufacturer.
sealed class ManufacturerXDeviceDefinition extends DataType {}

/// The details of the device to be used.
sealed class CodeXDeviceRequest extends DataType {}

/// The timing schedule for the use of the device. The Schedule data type
/// allows many different expressions, for example. "Every 8 hours"; "Three
/// times a day"; "1/2 an hour before breakfast for 10 days from 23-Dec
/// 2011:"; "15 Oct 2013, 17 Oct 2013 and 1 Nov 2013".
sealed class OccurrenceXDeviceRequest extends DataType {}

/// The value of the device detail.
sealed class ValueXDeviceRequestParameter extends DataType {}

/// How often the device was used.
sealed class TimingXDeviceUseStatement extends DataType {}

/// The time or time-period the observed values are related to. When the
/// subject of the report is a patient, this is usually either the time of
/// the procedure or of specimen collection(s), but very often the source
/// of the date/time is not known, only the date/time itself.
sealed class EffectiveXDiagnosticReport extends DataType {}

/// A code or group definition that describes the intended subject of the
/// event definition.
sealed class SubjectXEventDefinition extends DataType {}

/// Citation Resource or display of suggested citation for this evidence.
sealed class CiteAsXEvidence extends DataType {}

/// Citation Resource or display of suggested citation for this report.
sealed class CiteAsXEvidenceReport extends DataType {}

/// Characteristic value.
sealed class ValueXEvidenceReportCharacteristic extends DataType {}

/// The target composition/document of this relationship.
sealed class TargetXEvidenceReportRelatesTo extends DataType {}

/// Define members of the evidence element using Codes (such as condition,
/// medication, or observation), Expressions ( using an expression language
/// such as FHIRPath or CQL) or DataRequirements (such as Diabetes
/// diagnosis onset in the last year).
sealed class DefinitionXEvidenceVariableCharacteristic extends DataType {}

/// Value or set of values that define the grouping.
sealed class ValueXEvidenceVariableCategory extends DataType {}

/// The date when or period to which this information refers.
sealed class TimingXExplanationOfBenefitSupportingInfo extends DataType {}

/// Additional data or information such as resources, documents, images
/// etc. including references to the data or the actual inclusion of the
/// data.
sealed class ValueXExplanationOfBenefitSupportingInfo extends DataType {}

/// The nature of illness or problem in a coded form or as a reference to
/// an external defined Condition.
sealed class DiagnosisXExplanationOfBenefitDiagnosis extends DataType {}

/// The code or reference to a Procedure resource which identifies the
/// clinical intervention performed.
sealed class ProcedureXExplanationOfBenefitProcedure extends DataType {}

/// The physical location of the accident event.
sealed class LocationXExplanationOfBenefitAccident extends DataType {}

/// The date or dates when the service or product was supplied, performed
/// or completed.
sealed class ServicedXExplanationOfBenefitItem extends DataType {}

/// Where the product or service was provided.
sealed class LocationXExplanationOfBenefitItem extends DataType {}

/// The date or dates when the service or product was supplied, performed
/// or completed.
sealed class ServicedXExplanationOfBenefitAddItem extends DataType {}

/// Where the product or service was provided.
sealed class LocationXExplanationOfBenefitAddItem extends DataType {}

/// The quantity of the benefit which is permitted under the coverage.
sealed class AllowedXExplanationOfBenefitFinancial extends DataType {}

/// The quantity of the benefit which have been consumed to date.
sealed class UsedXExplanationOfBenefitFinancial extends DataType {}

/// The actual or approximate date of birth of the relative.
sealed class BornXFamilyMemberHistory extends DataType {}

/// The age of the relative at the time the family member history is
/// recorded.
sealed class AgeXFamilyMemberHistory extends DataType {}

/// Deceased flag or the actual or approximate age of the relative at the
/// time of death for the family member history record.
sealed class DeceasedXFamilyMemberHistory extends DataType {}

/// Either the age of onset, range of approximate age or descriptive string
/// can be recorded. For conditions with multiple occurrences, this
/// describes the first known occurrence.
sealed class OnsetXFamilyMemberHistoryCondition extends DataType {}

/// The date or event after which the goal should begin being pursued.
sealed class StartXGoal extends DataType {}

/// The target value of the focus to be achieved to signify the fulfillment
/// of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both
/// values of the range can be specified. When a low value is missing, it
/// indicates that the goal is achieved at any focus value at or below the
/// high value. Similarly, if the high value is missing, it indicates that
/// the goal is achieved at any focus value at or above the low value.
sealed class DetailXGoalTarget extends DataType {}

/// Indicates either the date or the duration after start by which the goal
/// should be met.
sealed class DueXGoalTarget extends DataType {}

/// The value of the trait that holds (or does not hold - see 'exclude')
/// for members of the group.
sealed class ValueXGroupCharacteristic extends DataType {}

/// An identifier, CodeableConcept or canonical reference to the guidance
/// that was requested.
sealed class ModuleXGuidanceResponse extends DataType {}

/// Date vaccine administered or was to be administered.
sealed class OccurrenceXImmunization extends DataType {}

/// Nominal position in a series.
sealed class DoseNumberXImmunizationProtocolApplied extends DataType {}

/// The recommended number of doses to achieve immunity.
sealed class SeriesDosesXImmunizationProtocolApplied extends DataType {}

/// Nominal position in a series.
sealed class DoseNumberXImmunizationEvaluation extends DataType {}

/// The recommended number of doses to achieve immunity.
sealed class SeriesDosesXImmunizationEvaluation extends DataType {}

/// Nominal position of the recommended dose in a series (e.g. dose 2 is
/// the next recommended dose).
sealed class DoseNumberXImmunizationRecommendationRecommendation
    extends DataType {}

/// The recommended number of doses to achieve immunity.
sealed class SeriesDosesXImmunizationRecommendationRecommendation
    extends DataType {}

/// If true or a reference, indicates the resource is an example instance.
/// If a reference is present, indicates that the example is an example of
/// the specified profile.
sealed class ExampleXImplementationGuideResource extends DataType {}

/// The source address for the page.
sealed class NameXImplementationGuidePage extends DataType {}

/// If true or a reference, indicates the resource is an example instance.
/// If a reference is present, indicates that the example is an example of
/// the specified profile.
sealed class ExampleXImplementationGuideResource1 extends DataType {}

/// The quantity of substance in the unit of presentation, or in the volume
/// (or mass) of the single pharmaceutical product or manufactured item.
/// Unit of presentation refers to the quantity that the item occurs in
/// e.g. a strength per tablet size, perhaps 'per 20mg' (the size of the
/// tablet). It is not generally normalized as a unitary unit, which would
/// be 'per mg').
sealed class PresentationXIngredientStrength extends DataType {}

/// The strength per unitary volume (or mass).
sealed class ConcentrationXIngredientStrength extends DataType {}

/// Strength expressed in terms of a reference substance.
sealed class StrengthXIngredientReferenceStrength extends DataType {}

/// The ChargeItem contains information such as the billing code, date,
/// amount etc. If no further details are required for the lineItem, inline
/// billing codes can be added using the CodeableConcept data type instead
/// of the Reference.
sealed class ChargeItemXInvoiceLineItem extends DataType {}

/// A code or group definition that describes the intended subject of the
/// contents of the library.
sealed class SubjectXLibrary extends DataType {}

/// A value for the characteristic.
sealed class ValueXManufacturedItemDefinitionProperty extends DataType {}

/// The intended subjects for the measure. If this element is not provided,
/// a Patient subject is assumed, but the subject of the measure can be
/// anything.
sealed class SubjectXMeasure extends DataType {}

/// The date and time(s) at which the media was collected.
sealed class CreatedXMedia extends DataType {}

/// The actual ingredient - either a substance (simple ingredient) or
/// another medication of a medication.
sealed class ItemXMedicationIngredient extends DataType {}

/// Identifies the medication that was administered. This is either a link
/// to a resource representing the details of the medication or a simple
/// attribute carrying a code that identifies the medication from a known
/// list of medications.
sealed class MedicationXMedicationAdministration extends DataType {}

/// A specific date/time or interval of time during which the
/// administration took place (or did not take place, when the 'notGiven'
/// attribute is true). For many administrations, such as swallowing a
/// tablet the use of dateTime is more appropriate.
sealed class EffectiveXMedicationAdministration extends DataType {}

/// Identifies the speed with which the medication was or will be
/// introduced into the patient. Typically, the rate for an infusion e.g.
/// 100 ml per 1 hour or 100 ml/hr. May also be expressed as a rate per
/// unit of time, e.g. 500 ml per 2 hours. Other examples: 200 mcg/min or
/// 200 mcg/1 minute; 1 liter/8 hours.
sealed class RateXMedicationAdministrationDosage extends DataType {}

/// Indicates the reason why a dispense was not performed.
sealed class StatusReasonXMedicationDispense extends DataType {}

/// Identifies the medication being administered. This is either a link to
/// a resource representing the details of the medication or a simple
/// attribute carrying a code that identifies the medication from a known
/// list of medications.
sealed class MedicationXMedicationDispense extends DataType {}

/// The actual ingredient - either a substance (simple ingredient) or
/// another medication.
sealed class ItemXMedicationKnowledgeIngredient extends DataType {}

/// Indication for use that apply to the specific administration
/// guidelines.
sealed class IndicationXMedicationKnowledgeAdministrationGuidelines
    extends DataType {}

/// Specific characteristic that is relevant to the administration
/// guideline (e.g. height, weight, gender).
sealed class CharacteristicXMedicationKnowledgePatientCharacteristics
    extends DataType {}

/// Description of the characteristic.
sealed class ValueXMedicationKnowledgeDrugCharacteristic extends DataType {}

/// Indicates if this record was captured as a secondary 'reported' record
/// rather than as an original primary source-of-truth record. It may also
/// indicate the source of the report.
sealed class ReportedXMedicationRequest extends DataType {}

/// Identifies the medication being requested. This is a link to a resource
/// that represents the medication which may be the details of the
/// medication or simply an attribute carrying a code that identifies the
/// medication from a known list of medications.
sealed class MedicationXMedicationRequest extends DataType {}

/// True if the prescriber allows a different drug to be dispensed from
/// what was prescribed.
sealed class AllowedXMedicationRequestSubstitution extends DataType {}

/// Identifies the medication being administered. This is either a link to
/// a resource representing the details of the medication or a simple
/// attribute carrying a code that identifies the medication from a known
/// list of medications.
sealed class MedicationXMedicationStatement extends DataType {}

/// The interval of time during which it is being asserted that the patient
/// is/was/will be taking the medication (or was not taking, when the
/// MedicationStatement.taken element is No).
sealed class EffectiveXMedicationStatement extends DataType {}

/// A value for the characteristic.
sealed class ValueXMedicinalProductDefinitionCharacteristic extends DataType {}

/// Event code or link to the EventDefinition.
sealed class EventXMessageDefinition extends DataType {}

/// Code that identifies the event this message represents and connects it
/// with its definition. Events defined as part of the FHIR specification
/// have the system value
/// "http://terminology.hl7.org/CodeSystem/message-events". Alternatively
/// uri to the EventDefinition.
sealed class EventXMessageHeader extends DataType {}

/// The rate of administration of formula via a feeding pump, e.g. 60 mL
/// per hour, according to the specified schedule.
sealed class RateXNutritionOrderAdministration extends DataType {}

/// The actual characteristic value corresponding to the type.
sealed class ValueXNutritionProductProductCharacteristic extends DataType {}

/// The time or time-period the observed value is asserted as being true.
/// For biological subjects - e.g. human patients - this is usually called
/// the "physiologically relevant time". This is usually either the time of
/// the procedure or of specimen collection, but very often the source of
/// the date/time is not known, only the date/time itself.
sealed class EffectiveXObservation extends DataType {}

/// The information determined as a result of making the observation, if
/// the information has a simple value.
sealed class ValueXObservation extends DataType {}

/// The information determined as a result of making the observation, if
/// the information has a simple value.
sealed class ValueXObservationComponent extends DataType {}

/// The shelf life time period can be specified using a numerical value for
/// the period of time and its unit of time measurement The unit of
/// measurement shall be specified in accordance with ISO 11240 and the
/// resulting terminology The symbol and the symbol identifier shall be
/// used.
sealed class PeriodXPackagedProductDefinitionShelfLifeStorage
    extends DataType {}

/// A value for the characteristic.
sealed class ValueXPackagedProductDefinitionProperty extends DataType {}

/// Conveys the content if the parameter is a data type.
sealed class ValueXParametersParameter extends DataType {}

/// Indicates if the individual is deceased or not.
sealed class DeceasedXPatient extends DataType {}

/// Indicates whether the patient is part of a multiple (boolean) or
/// indicates the actual birth order (integer).
sealed class MultipleBirthXPatient extends DataType {}

/// A code, group definition, or canonical reference that describes or
/// identifies the intended subject of the plan definition. Canonical
/// references are allowed to support the definition of protocols for drug
/// and substance quality specifications, and is allowed to reference a
/// MedicinalProductDefinition, SubstanceDefinition,
/// AdministrableProductDefinition, ManufacturedItemDefinition, or
/// PackagedProductDefinition resource.
sealed class SubjectXPlanDefinition extends DataType {}

/// The target value of the measure to be achieved to signify fulfillment
/// of the goal, e.g. 150 pounds or 7.0%, or in the case of pharmaceutical
/// quality - NMT 0.6%, Clear solution, etc. Either the high or low or both
/// values of the range can be specified. When a low value is missing, it
/// indicates that the goal is achieved at any value at or below the high
/// value. Similarly, if the high value is missing, it indicates that the
/// goal is achieved at any value at or above the low value.
sealed class DetailXPlanDefinitionTarget extends DataType {}

/// A code, group definition, or canonical reference that describes the
/// intended subject of the action and its children, if any. Canonical
/// references are allowed to support the definition of protocols for drug
/// and substance quality specifications, and is allowed to reference a
/// MedicinalProductDefinition, SubstanceDefinition,
/// AdministrableProductDefinition, ManufacturedItemDefinition, or
/// PackagedProductDefinition resource.
sealed class SubjectXPlanDefinitionAction extends DataType {}

/// An optional value describing when the action should be performed.
sealed class TimingXPlanDefinitionAction extends DataType {}

/// A reference to an ActivityDefinition that describes the action to be
/// taken in detail, or a PlanDefinition that describes a series of actions
/// to be taken.
sealed class DefinitionXPlanDefinitionAction extends DataType {}

/// A duration or range of durations to apply to the relationship. For
/// example, 30-60 minutes before.
sealed class OffsetXPlanDefinitionRelatedAction extends DataType {}

/// Estimated or actual date, date-time, period, or age when the procedure
/// was performed. Allows a period to support complex procedures that span
/// more than one date, and also allows for the length of the procedure to
/// be captured.
sealed class PerformedXProcedure extends DataType {}

/// The period during which the activity occurred.
sealed class OccurredXProvenance extends DataType {}

/// A value that the referenced question is tested using the specified
/// operator in order for the item to be enabled.
sealed class AnswerXQuestionnaireEnableWhen extends DataType {}

/// A potential answer that's allowed as the answer to this question.
sealed class ValueXQuestionnaireAnswerOption extends DataType {}

/// The actual value to for an initial answer.
sealed class ValueXQuestionnaireInitial extends DataType {}

/// The answer (or one of the answers) provided by the respondent to the
/// question.
sealed class ValueXQuestionnaireResponseAnswer extends DataType {}

/// Relevant date for this case.
sealed class DateXRegulatedAuthorizationCase extends DataType {}

/// An optional value describing when the action should be performed.
sealed class TimingXRequestGroupAction extends DataType {}

/// A duration or range of durations to apply to the relationship. For
/// example, 30-60 minutes before.
sealed class OffsetXRequestGroupRelatedAction extends DataType {}

/// The intended subjects for the ResearchDefinition. If this element is
/// not provided, a Patient subject is assumed, but the subject of the
/// ResearchDefinition can be anything.
sealed class SubjectXResearchDefinition extends DataType {}

/// The intended subjects for the ResearchElementDefinition. If this
/// element is not provided, a Patient subject is assumed, but the subject
/// of the ResearchElementDefinition can be anything.
sealed class SubjectXResearchElementDefinition extends DataType {}

/// Define members of the research element using Codes (such as condition,
/// medication, or observation), Expressions ( using an expression language
/// such as FHIRPath or CQL) or DataRequirements (such as Diabetes
/// diagnosis onset in the last year).
sealed class DefinitionXResearchElementDefinitionCharacteristic
    extends DataType {}

/// Indicates what effective period the study covers.
sealed class StudyEffectiveXResearchElementDefinitionCharacteristic
    extends DataType {}

/// Indicates what effective period the study covers.
sealed class ParticipantEffectiveXResearchElementDefinitionCharacteristic
    extends DataType {}

/// The date (and possibly time) the risk assessment was performed.
sealed class OccurrenceXRiskAssessment extends DataType {}

/// Indicates how likely the outcome is (in the specified timeframe).
sealed class ProbabilityXRiskAssessmentPrediction extends DataType {}

/// Indicates the period of time or age range of the subject to which the
/// specified probability applies.
sealed class WhenXRiskAssessmentPrediction extends DataType {}

/// An amount of service being requested which can be a quantity ( for
/// example $1,500 home modification), a ratio ( for example, 20 half day
/// visits per month), or a range (2.0 to 1.8 Gy per fraction).
sealed class QuantityXServiceRequest extends DataType {}

/// The date/time at which the requested service should occur.
sealed class OccurrenceXServiceRequest extends DataType {}

/// If a CodeableConcept is present, it indicates the pre-condition for
/// performing the service. For example "pain", "on flare-up", etc.
sealed class AsNeededXServiceRequest extends DataType {}

/// Time when specimen was collected from subject - the physiologically
/// relevant time.
sealed class CollectedXSpecimenCollection extends DataType {}

/// Abstinence or reduction from some or all food, drink, or both, for a
/// period of time prior to sample collection.
sealed class FastingStatusXSpecimenCollection extends DataType {}

/// A record of the time or period when the specimen processing occurred.
/// For example the time of sample fixation or the period of time the
/// sample was in formalin.
sealed class TimeXSpecimenProcessing extends DataType {}

/// Introduced substance to preserve, maintain or enhance the specimen.
/// Examples: Formalin, Citrate, EDTA.
sealed class AdditiveXSpecimenContainer extends DataType {}

/// The minimum volume to be conditioned in the container.
sealed class MinimumVolumeXSpecimenDefinitionContainer extends DataType {}

/// Substance introduced in the kind of container to preserve, maintain or
/// enhance the specimen. Examples: Formalin, Citrate, EDTA.
sealed class AdditiveXSpecimenDefinitionAdditive extends DataType {}

/// A value to use if there is no existing value in the source object.
sealed class DefaultValueXStructureMapSource extends DataType {}

/// Parameter value - variable or literal.
sealed class ValueXStructureMapParameter extends DataType {}

/// Another substance that is a component of this substance.
sealed class SubstanceXSubstanceIngredient extends DataType {}

/// Quantitative value for this moiety.
sealed class AmountXSubstanceDefinitionMoiety extends DataType {}

/// A value for the property.
sealed class ValueXSubstanceDefinitionProperty extends DataType {}

/// A pointer to another substance, as a resource or just a
/// representational code.
sealed class SubstanceDefinitionXSubstanceDefinitionRelationship
    extends DataType {}

/// A numeric factor for the relationship, for instance to express that the
/// salt of a substance has some percentage of the active substance in
/// relation to some other.
sealed class AmountXSubstanceDefinitionRelationship extends DataType {}

/// The date or time(s) the activity occurred.
sealed class OccurrenceXSupplyDelivery extends DataType {}

/// Identifies the medication, substance or device being dispensed. This is
/// either a link to a resource representing the details of the item or a
/// code that identifies the item from a known list.
sealed class ItemXSupplyDeliverySuppliedItem extends DataType {}

/// The item that is requested to be supplied. This is either a link to a
/// resource representing the details of the item or a code that identifies
/// the item from a known list.
sealed class ItemXSupplyRequest extends DataType {}

/// When the request should be fulfilled.
sealed class OccurrenceXSupplyRequest extends DataType {}

/// The value of the device detail.
sealed class ValueXSupplyRequestParameter extends DataType {}

/// The value of the input parameter as a basic type.
sealed class ValueXTaskInput extends DataType {}

/// The value of the Output parameter as a basic type.
sealed class ValueXTaskOutput extends DataType {}

/// The value of the parameter.
sealed class ValueXValueSetParameter extends DataType {}

/// The individual responsible for making the annotation.
sealed class AuthorXAnnotation extends DataType {}

/// The intended subjects of the data requirement. If this element is not
/// provided, a Patient subject is assumed.
sealed class SubjectXDataRequirement extends DataType {}

/// The value of the filter. If period is specified, the filter will return
/// only those data items that fall within the bounds determined by the
/// Period, inclusive of the period boundaries. If dateTime is specified,
/// the filter will return only those data items that are equal to the
/// specified dateTime. If a Duration is specified, the filter will return
/// only those data items that fall within Duration before now.
sealed class ValueXDataRequirementDateFilter extends DataType {}

/// Indicates whether the Medication is only taken when needed within a
/// specific dosing schedule (Boolean option), or it indicates the
/// precondition for taking the Medication (CodeableConcept).
sealed class AsNeededXDosage extends DataType {}

/// Amount of medication per dose.
sealed class DoseXDosageDoseAndRate extends DataType {}

/// Amount of medication per unit of time.
sealed class RateXDosageDoseAndRate extends DataType {}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
sealed class DefaultValueXElementDefinition extends DataType {}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
sealed class FixedXElementDefinition extends DataType {}

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
sealed class PatternXElementDefinition extends DataType {}

/// The minimum allowed value for the element. The value is inclusive. This
/// is allowed for the types date, dateTime, instant, time, decimal,
/// integer, and Quantity.
sealed class MinValueXElementDefinition extends DataType {}

/// The maximum allowed value for the element. The value is inclusive. This
/// is allowed for the types date, dateTime, instant, time, decimal,
/// integer, and Quantity.
sealed class MaxValueXElementDefinition extends DataType {}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
sealed class ValueXElementDefinitionExample extends DataType {}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
sealed class ValueXExtension extends DataType {}

/// The age of the specific population.
sealed class AgeXPopulation extends DataType {}

/// Either a duration for the length of the timing schedule, a range of
/// possible length, or outer bounds for start and/or end limits of the
/// timing schedule.
sealed class BoundsXTimingRepeat extends DataType {}

/// The timing of the event (if this is a periodic trigger).
sealed class TimingXTriggerDefinition extends DataType {}

/// A value that defines the context specified in this context of use. The
/// interpretation of the value is defined by the code.
sealed class ValueXUsageContext extends DataType {}
