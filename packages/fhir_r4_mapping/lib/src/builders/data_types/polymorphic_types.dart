// ignore_for_file: lines_longer_than_80_chars

import 'package:fhir_r4_mapping/fhir_r4_mapping.dart';

/// Polymorphic types for FHIR data types.
abstract class PolymorphicTypeBuilder {}

/// A code, group definition, or canonical reference that describes or
/// identifies the intended subject of the activity being defined.
/// Canonical references are allowed to support the definition of protocols
/// for drug and substance quality specifications, and is allowed to
/// reference a MedicinalProductDefinition, SubstanceDefinition,
/// AdministrableProductDefinition, ManufacturedItemDefinition, or
/// PackagedProductDefinition resource.
abstract class SubjectXActivityDefinitionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The period, timing or frequency upon which the described activity is to
/// occur.
abstract class TimingXActivityDefinitionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Identifies the food, drug or other product being consumed or supplied
/// in the activity.
abstract class ProductXActivityDefinitionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A value for the characteristic.
abstract class ValueXAdministrableProductDefinitionPropertyBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Estimated or actual date, date-time, or age when allergy or intolerance
/// was identified.
abstract class OnsetXAllergyIntoleranceBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The value of the extra detail.
abstract class ValueXAuditEventDetailBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Time of product collection.
abstract class CollectedXBiologicallyDerivedProductCollectionBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Time of processing.
abstract class TimeXBiologicallyDerivedProductProcessingBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Time of manipulation.
abstract class TimeXBiologicallyDerivedProductManipulationBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The period, timing or frequency upon which the described activity is to
/// occur.
abstract class ScheduledXCarePlanDetailBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Identifies the food, drug or other product to be consumed or supplied
/// in the activity.
abstract class ProductXCarePlanDetailBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Date/time(s) or duration when the charged service was applied.
abstract class OccurrenceXChargeItemBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Identifies the device, food, drug or other product being charged either
/// by type code or reference to an instance.
abstract class ProductXChargeItemBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The article or artifact that the Citation Resource is related to.
abstract class TargetXCitationRelatesToBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The article or artifact that the cited artifact is related to.
abstract class TargetXCitationRelatesTo1Builder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The date when or period to which this information refers.
abstract class TimingXClaimSupportingInfoBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Additional data or information such as resources, documents, images
/// etc. including references to the data or the actual inclusion of the
/// data.
abstract class ValueXClaimSupportingInfoBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The nature of illness or problem in a coded form or as a reference to
/// an external defined Condition.
abstract class DiagnosisXClaimDiagnosisBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The code or reference to a Procedure resource which identifies the
/// clinical intervention performed.
abstract class ProcedureXClaimProcedureBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The physical location of the accident event.
abstract class LocationXClaimAccidentBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The date or dates when the service or product was supplied, performed
/// or completed.
abstract class ServicedXClaimItemBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Where the product or service was provided.
abstract class LocationXClaimItemBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The date or dates when the service or product was supplied, performed
/// or completed.
abstract class ServicedXClaimResponseAddItemBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Where the product or service was provided.
abstract class LocationXClaimResponseAddItemBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The point in time or period over which the subject was assessed.
abstract class EffectiveXClinicalImpressionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Timing or duration information, that may be associated with use with
/// the indicated condition e.g. Adult patients suffering from myocardial
/// infarction (from a few days until less than 35 days), ischaemic stroke
/// (from 7 days until less than 6 months).
abstract class DurationXClinicalUseDefinitionIndicationBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The specific medication, food or laboratory test that interacts.
abstract class ItemXClinicalUseDefinitionInteractantBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The value of this property.
abstract class ValueXCodeSystemPropertyBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A communicated content (or for multi-part communications, one portion
/// of the communication).
abstract class ContentXCommunicationPayloadBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The time when this communication is to occur.
abstract class OccurrenceXCommunicationRequestBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The communicated content (or for multi-part communications, one portion
/// of the communication).
abstract class ContentXCommunicationRequestPayloadBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The target composition/document of this relationship.
abstract class TargetXCompositionRelatesToBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Identifier for the source value set that contains the concepts that are
/// being mapped and provides context for the mappings.
abstract class SourceXConceptMapBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The target value set provides context for the mappings. Note that the
/// mapping is made between concepts, not between value sets, but the value
/// set provides important context about how the concept mapping choices
/// are made.
abstract class TargetXConceptMapBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Estimated or actual date or date-time the condition began, in the
/// opinion of the clinician.
abstract class OnsetXConditionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The date or estimated date that the condition resolved or went into
/// remission. This is called "abatement" because of the many overloaded
/// connotations associated with "remission" or "resolution" - Conditions
/// are never really resolved, but they can abate.
abstract class AbatementXConditionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The source on which this consent statement is based. The source might
/// be a scanned original paper form, or a reference to a consent that
/// links back to such a source, a reference to a document repository (e.g.
/// XDS) that stores the original consent document.
abstract class SourceXConsentBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Narrows the range of legal concerns to focus on the achievement of
/// specific contractual objectives.
abstract class TopicXContractBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Legally binding Contract: This is the signed and legally recognized
/// representation of the Contract, which is considered the "source of
/// truth" and which would be the basis for legal action related to
/// enforcement of this Contract.
abstract class LegallyBindingXContractBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The entity that the term applies to.
abstract class TopicXContractTermBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Response to an offer clause or question text, which enables selection
/// of values to be agreed to, e.g., the period of participation, the date
/// of occupancy of a rental, warrently duration, or whether biospecimen
/// may be used for further research.
abstract class ValueXContractAnswerBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Specific type of Contract Valued Item that may be priced.
abstract class EntityXContractValuedItemBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// When action happens.
abstract class OccurrenceXContractActionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Human readable rendering of this Contract in a format and
/// representation intended to enhance comprehension and ensure
/// understandability.
abstract class ContentXContractFriendlyBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Contract legal text in human renderable form.
abstract class ContentXContractLegalBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Computable Contract conveyed using a policy rule language (e.g. XACML,
/// DKAL, SecPal).
abstract class ContentXContractRuleBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The amount due from the patient for the cost category.
abstract class ValueXCoverageCostToBeneficiaryBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The date or dates when the enclosed suite of services were performed or
/// completed.
abstract class ServicedXCoverageEligibilityRequestBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The nature of illness or problem in a coded form or as a reference to
/// an external defined Condition.
abstract class DiagnosisXCoverageEligibilityRequestDiagnosisBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The date or dates when the enclosed suite of services were performed or
/// completed.
abstract class ServicedXCoverageEligibilityResponseBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The quantity of the benefit which is permitted under the coverage.
abstract class AllowedXCoverageEligibilityResponseBenefitBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The quantity of the benefit which have been consumed to date.
abstract class UsedXCoverageEligibilityResponseBenefitBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The date or period when the detected issue was initially identified.
abstract class IdentifiedXDetectedIssueBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A name of the manufacturer.
abstract class ManufacturerXDeviceDefinitionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The details of the device to be used.
abstract class CodeXDeviceRequestBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The timing schedule for the use of the device. The Schedule data type
/// allows many different expressions, for example. "Every 8 hours"; "Three
/// times a day"; "1/2 an hour before breakfast for 10 days from 23-Dec
/// 2011:"; "15 Oct 2013, 17 Oct 2013 and 1 Nov 2013".
abstract class OccurrenceXDeviceRequestBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The value of the device detail.
abstract class ValueXDeviceRequestParameterBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// How often the device was used.
abstract class TimingXDeviceUseStatementBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The time or time-period the observed values are related to. When the
/// subject of the report is a patient, this is usually either the time of
/// the procedure or of specimen collection(s), but very often the source
/// of the date/time is not known, only the date/time itself.
abstract class EffectiveXDiagnosticReportBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A code or group definition that describes the intended subject of the
/// event definition.
abstract class SubjectXEventDefinitionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Citation Resource or display of suggested citation for this evidence.
abstract class CiteAsXEvidenceBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Citation Resource or display of suggested citation for this report.
abstract class CiteAsXEvidenceReportBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Characteristic value.
abstract class ValueXEvidenceReportCharacteristicBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The target composition/document of this relationship.
abstract class TargetXEvidenceReportRelatesToBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Define members of the evidence element using Codes (such as condition,
/// medication, or observation), Expressions ( using an expression language
/// such as FHIRPath or CQL) or DataRequirements (such as Diabetes
/// diagnosis onset in the last year).
abstract class DefinitionXEvidenceVariableCharacteristicBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Value or set of values that define the grouping.
abstract class ValueXEvidenceVariableCategoryBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The date when or period to which this information refers.
abstract class TimingXExplanationOfBenefitSupportingInfoBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Additional data or information such as resources, documents, images
/// etc. including references to the data or the actual inclusion of the
/// data.
abstract class ValueXExplanationOfBenefitSupportingInfoBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The nature of illness or problem in a coded form or as a reference to
/// an external defined Condition.
abstract class DiagnosisXExplanationOfBenefitDiagnosisBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The code or reference to a Procedure resource which identifies the
/// clinical intervention performed.
abstract class ProcedureXExplanationOfBenefitProcedureBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The physical location of the accident event.
abstract class LocationXExplanationOfBenefitAccidentBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The date or dates when the service or product was supplied, performed
/// or completed.
abstract class ServicedXExplanationOfBenefitItemBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Where the product or service was provided.
abstract class LocationXExplanationOfBenefitItemBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The date or dates when the service or product was supplied, performed
/// or completed.
abstract class ServicedXExplanationOfBenefitAddItemBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Where the product or service was provided.
abstract class LocationXExplanationOfBenefitAddItemBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The quantity of the benefit which is permitted under the coverage.
abstract class AllowedXExplanationOfBenefitFinancialBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The quantity of the benefit which have been consumed to date.
abstract class UsedXExplanationOfBenefitFinancialBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The actual or approximate date of birth of the relative.
abstract class BornXFamilyMemberHistoryBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The age of the relative at the time the family member history is
/// recorded.
abstract class AgeXFamilyMemberHistoryBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Deceased flag or the actual or approximate age of the relative at the
/// time of death for the family member history record.
abstract class DeceasedXFamilyMemberHistoryBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Either the age of onset, range of approximate age or descriptive string
/// can be recorded. For conditions with multiple occurrences, this
/// describes the first known occurrence.
abstract class OnsetXFamilyMemberHistoryConditionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The date or event after which the goal should begin being pursued.
abstract class StartXGoalBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The target value of the focus to be achieved to signify the fulfillment
/// of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both
/// values of the range can be specified. When a low value is missing, it
/// indicates that the goal is achieved at any focus value at or below the
/// high value. Similarly, if the high value is missing, it indicates that
/// the goal is achieved at any focus value at or above the low value.
abstract class DetailXGoalTargetBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Indicates either the date or the duration after start by which the goal
/// should be met.
abstract class DueXGoalTargetBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The value of the trait that holds (or does not hold - see 'exclude')
/// for members of the group.
abstract class ValueXGroupCharacteristicBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// An identifier, CodeableConcept or canonical reference to the guidance
/// that was requested.
abstract class ModuleXGuidanceResponseBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Date vaccine administered or was to be administered.
abstract class OccurrenceXImmunizationBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Nominal position in a series.
abstract class DoseNumberXImmunizationProtocolAppliedBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The recommended number of doses to achieve immunity.
abstract class SeriesDosesXImmunizationProtocolAppliedBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Nominal position in a series.
abstract class DoseNumberXImmunizationEvaluationBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The recommended number of doses to achieve immunity.
abstract class SeriesDosesXImmunizationEvaluationBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Nominal position of the recommended dose in a series (e.g. dose 2 is
/// the next recommended dose).
abstract class DoseNumberXImmunizationRecommendationRecommendationBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The recommended number of doses to achieve immunity.
abstract class SeriesDosesXImmunizationRecommendationRecommendationBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// If true or a reference, indicates the resource is an example instance.
/// If a reference is present, indicates that the example is an example of
/// the specified profile.
abstract class ExampleXImplementationGuideResourceBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The source address for the page.
abstract class NameXImplementationGuidePageBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// If true or a reference, indicates the resource is an example instance.
/// If a reference is present, indicates that the example is an example of
/// the specified profile.
abstract class ExampleXImplementationGuideResource1Builder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The quantity of substance in the unit of presentation, or in the volume
/// (or mass) of the single pharmaceutical product or manufactured item.
/// Unit of presentation refers to the quantity that the item occurs in
/// e.g. a strength per tablet size, perhaps 'per 20mg' (the size of the
/// tablet). It is not generally normalized as a unitary unit, which would
/// be 'per mg').
abstract class PresentationXIngredientStrengthBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The strength per unitary volume (or mass).
abstract class ConcentrationXIngredientStrengthBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Strength expressed in terms of a reference substance.
abstract class StrengthXIngredientReferenceStrengthBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The ChargeItem contains information such as the billing code, date,
/// amount etc. If no further details are required for the lineItem, inline
/// billing codes can be added using the CodeableConcept data type instead
/// of the Reference.
abstract class ChargeItemXInvoiceLineItemBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A code or group definition that describes the intended subject of the
/// contents of the library.
abstract class SubjectXLibraryBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A value for the characteristic.
abstract class ValueXManufacturedItemDefinitionPropertyBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The intended subjects for the measure. If this element is not provided,
/// a Patient subject is assumed, but the subject of the measure can be
/// anything.
abstract class SubjectXMeasureBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The date and time(s) at which the media was collected.
abstract class CreatedXMediaBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The actual ingredient - either a substance (simple ingredient) or
/// another medication of a medication.
abstract class ItemXMedicationIngredientBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Identifies the medication that was administered. This is either a link
/// to a resource representing the details of the medication or a simple
/// attribute carrying a code that identifies the medication from a known
/// list of medications.
abstract class MedicationXMedicationAdministrationBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// A specific date/time or interval of time during which the
/// administration took place (or did not take place, when the 'notGiven'
/// attribute is true). For many administrations, such as swallowing a
/// tablet the use of dateTime is more appropriate.
abstract class EffectiveXMedicationAdministrationBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Identifies the speed with which the medication was or will be
/// introduced into the patient. Typically, the rate for an infusion e.g.
/// 100 ml per 1 hour or 100 ml/hr. May also be expressed as a rate per
/// unit of time, e.g. 500 ml per 2 hours. Other examples: 200 mcg/min or
/// 200 mcg/1 minute; 1 liter/8 hours.
abstract class RateXMedicationAdministrationDosageBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Indicates the reason why a dispense was not performed.
abstract class StatusReasonXMedicationDispenseBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Identifies the medication being administered. This is either a link to
/// a resource representing the details of the medication or a simple
/// attribute carrying a code that identifies the medication from a known
/// list of medications.
abstract class MedicationXMedicationDispenseBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The actual ingredient - either a substance (simple ingredient) or
/// another medication.
abstract class ItemXMedicationKnowledgeIngredientBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Indication for use that apply to the specific administration
/// guidelines.
abstract class IndicationXMedicationKnowledgeAdministrationGuidelinesBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Specific characteristic that is relevant to the administration
/// guideline (e.g. height, weight, gender).
abstract class CharacteristicXMedicationKnowledgePatientCharacteristicsBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Description of the characteristic.
abstract class ValueXMedicationKnowledgeDrugCharacteristicBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Indicates if this record was captured as a secondary 'reported' record
/// rather than as an original primary source-of-truth record. It may also
/// indicate the source of the report.
abstract class ReportedXMedicationRequestBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Identifies the medication being requested. This is a link to a resource
/// that represents the medication which may be the details of the
/// medication or simply an attribute carrying a code that identifies the
/// medication from a known list of medications.
abstract class MedicationXMedicationRequestBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// True if the prescriber allows a different drug to be dispensed from
/// what was prescribed.
abstract class AllowedXMedicationRequestSubstitutionBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Identifies the medication being administered. This is either a link to
/// a resource representing the details of the medication or a simple
/// attribute carrying a code that identifies the medication from a known
/// list of medications.
abstract class MedicationXMedicationStatementBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The interval of time during which it is being asserted that the patient
/// is/was/will be taking the medication (or was not taking, when the
/// MedicationStatement.taken element is No).
abstract class EffectiveXMedicationStatementBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A value for the characteristic.
abstract class ValueXMedicinalProductDefinitionCharacteristicBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Event code or link to the EventDefinition.
abstract class EventXMessageDefinitionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Code that identifies the event this message represents and connects it
/// with its definition. Events defined as part of the FHIR specification
/// have the system value
/// "http://terminology.hl7.org/CodeSystem/message-events". Alternatively
/// uri to the EventDefinition.
abstract class EventXMessageHeaderBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The rate of administration of formula via a feeding pump, e.g. 60 mL
/// per hour, according to the specified schedule.
abstract class RateXNutritionOrderAdministrationBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The actual characteristic value corresponding to the type.
abstract class ValueXNutritionProductProductCharacteristicBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The time or time-period the observed value is asserted as being true.
/// For biological subjects - e.g. human patients - this is usually called
/// the "physiologically relevant time". This is usually either the time of
/// the procedure or of specimen collection, but very often the source of
/// the date/time is not known, only the date/time itself.
abstract class EffectiveXObservationBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The information determined as a result of making the observation, if
/// the information has a simple value.
abstract class ValueXObservationBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The information determined as a result of making the observation, if
/// the information has a simple value.
abstract class ValueXObservationComponentBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The shelf life time period can be specified using a numerical value for
/// the period of time and its unit of time measurement The unit of
/// measurement shall be specified in accordance with ISO 11240 and the
/// resulting terminology The symbol and the symbol identifier shall be
/// used.
abstract class PeriodXPackagedProductDefinitionShelfLifeStorageBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// A value for the characteristic.
abstract class ValueXPackagedProductDefinitionPropertyBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Conveys the content if the parameter is a data type.
abstract class ValueXParametersParameterBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Indicates if the individual is deceased or not.
abstract class DeceasedXPatientBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Indicates whether the patient is part of a multiple (boolean) or
/// indicates the actual birth order (integer).
abstract class MultipleBirthXPatientBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A code, group definition, or canonical reference that describes or
/// identifies the intended subject of the plan definition. Canonical
/// references are allowed to support the definition of protocols for drug
/// and substance quality specifications, and is allowed to reference a
/// MedicinalProductDefinition, SubstanceDefinition,
/// AdministrableProductDefinition, ManufacturedItemDefinition, or
/// PackagedProductDefinition resource.
abstract class SubjectXPlanDefinitionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The target value of the measure to be achieved to signify fulfillment
/// of the goal, e.g. 150 pounds or 7.0%, or in the case of pharmaceutical
/// quality - NMT 0.6%, Clear solution, etc. Either the high or low or both
/// values of the range can be specified. When a low value is missing, it
/// indicates that the goal is achieved at any value at or below the high
/// value. Similarly, if the high value is missing, it indicates that the
/// goal is achieved at any value at or above the low value.
abstract class DetailXPlanDefinitionTargetBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A code, group definition, or canonical reference that describes the
/// intended subject of the action and its children, if any. Canonical
/// references are allowed to support the definition of protocols for drug
/// and substance quality specifications, and is allowed to reference a
/// MedicinalProductDefinition, SubstanceDefinition,
/// AdministrableProductDefinition, ManufacturedItemDefinition, or
/// PackagedProductDefinition resource.
abstract class SubjectXPlanDefinitionActionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// An optional value describing when the action should be performed.
abstract class TimingXPlanDefinitionActionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A reference to an ActivityDefinition that describes the action to be
/// taken in detail, or a PlanDefinition that describes a series of actions
/// to be taken.
abstract class DefinitionXPlanDefinitionActionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A duration or range of durations to apply to the relationship. For
/// example, 30-60 minutes before.
abstract class OffsetXPlanDefinitionRelatedActionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Estimated or actual date, date-time, period, or age when the procedure
/// was performed. Allows a period to support complex procedures that span
/// more than one date, and also allows for the length of the procedure to
/// be captured.
abstract class PerformedXProcedureBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The period during which the activity occurred.
abstract class OccurredXProvenanceBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A value that the referenced question is tested using the specified
/// operator in order for the item to be enabled.
abstract class AnswerXQuestionnaireEnableWhenBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A potential answer that's allowed as the answer to this question.
abstract class ValueXQuestionnaireAnswerOptionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The actual value to for an initial answer.
abstract class ValueXQuestionnaireInitialBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The answer (or one of the answers) provided by the respondent to the
/// question.
abstract class ValueXQuestionnaireResponseAnswerBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Relevant date for this case.
abstract class DateXRegulatedAuthorizationCaseBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// An optional value describing when the action should be performed.
abstract class TimingXRequestGroupActionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A duration or range of durations to apply to the relationship. For
/// example, 30-60 minutes before.
abstract class OffsetXRequestGroupRelatedActionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The intended subjects for the ResearchDefinition. If this element is
/// not provided, a Patient subject is assumed, but the subject of the
/// ResearchDefinition can be anything.
abstract class SubjectXResearchDefinitionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The intended subjects for the ResearchElementDefinition. If this
/// element is not provided, a Patient subject is assumed, but the subject
/// of the ResearchElementDefinition can be anything.
abstract class SubjectXResearchElementDefinitionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Define members of the research element using Codes (such as condition,
/// medication, or observation), Expressions ( using an expression language
/// such as FHIRPath or CQL) or DataRequirements (such as Diabetes
/// diagnosis onset in the last year).
abstract class DefinitionXResearchElementDefinitionCharacteristicBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Indicates what effective period the study covers.
abstract class StudyEffectiveXResearchElementDefinitionCharacteristicBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Indicates what effective period the study covers.
abstract class ParticipantEffectiveXResearchElementDefinitionCharacteristicBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The date (and possibly time) the risk assessment was performed.
abstract class OccurrenceXRiskAssessmentBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Indicates how likely the outcome is (in the specified timeframe).
abstract class ProbabilityXRiskAssessmentPredictionBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Indicates the period of time or age range of the subject to which the
/// specified probability applies.
abstract class WhenXRiskAssessmentPredictionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// An amount of service being requested which can be a quantity ( for
/// example $1,500 home modification), a ratio ( for example, 20 half day
/// visits per month), or a range (2.0 to 1.8 Gy per fraction).
abstract class QuantityXServiceRequestBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The date/time at which the requested service should occur.
abstract class OccurrenceXServiceRequestBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// If a CodeableConcept is present, it indicates the pre-condition for
/// performing the service. For example "pain", "on flare-up", etc.
abstract class AsNeededXServiceRequestBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Time when specimen was collected from subject - the physiologically
/// relevant time.
abstract class CollectedXSpecimenCollectionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Abstinence or reduction from some or all food, drink, or both, for a
/// period of time prior to sample collection.
abstract class FastingStatusXSpecimenCollectionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A record of the time or period when the specimen processing occurred.
/// For example the time of sample fixation or the period of time the
/// sample was in formalin.
abstract class TimeXSpecimenProcessingBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Introduced substance to preserve, maintain or enhance the specimen.
/// Examples: Formalin, Citrate, EDTA.
abstract class AdditiveXSpecimenContainerBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The minimum volume to be conditioned in the container.
abstract class MinimumVolumeXSpecimenDefinitionContainerBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// Substance introduced in the kind of container to preserve, maintain or
/// enhance the specimen. Examples: Formalin, Citrate, EDTA.
abstract class AdditiveXSpecimenDefinitionAdditiveBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// A value to use if there is no existing value in the source object.
abstract class DefaultValueXStructureMapSourceBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Parameter value - variable or literal.
abstract class ValueXStructureMapParameterBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Another substance that is a component of this substance.
abstract class SubstanceXSubstanceIngredientBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Quantitative value for this moiety.
abstract class AmountXSubstanceDefinitionMoietyBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A value for the property.
abstract class ValueXSubstanceDefinitionPropertyBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A pointer to another substance, as a resource or just a
/// representational code.
abstract class SubstanceDefinitionXSubstanceDefinitionRelationshipBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// A numeric factor for the relationship, for instance to express that the
/// salt of a substance has some percentage of the active substance in
/// relation to some other.
abstract class AmountXSubstanceDefinitionRelationshipBuilder
    extends DataTypeBuilder implements PolymorphicTypeBuilder {}

/// The date or time(s) the activity occurred.
abstract class OccurrenceXSupplyDeliveryBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Identifies the medication, substance or device being dispensed. This is
/// either a link to a resource representing the details of the item or a
/// code that identifies the item from a known list.
abstract class ItemXSupplyDeliverySuppliedItemBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The item that is requested to be supplied. This is either a link to a
/// resource representing the details of the item or a code that identifies
/// the item from a known list.
abstract class ItemXSupplyRequestBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// When the request should be fulfilled.
abstract class OccurrenceXSupplyRequestBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The value of the device detail.
abstract class ValueXSupplyRequestParameterBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The value of the input parameter as a basic type.
abstract class ValueXTaskInputBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The value of the Output parameter as a basic type.
abstract class ValueXTaskOutputBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The value of the parameter.
abstract class ValueXValueSetParameterBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The individual responsible for making the annotation.
abstract class AuthorXAnnotationBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The intended subjects of the data requirement. If this element is not
/// provided, a Patient subject is assumed.
abstract class SubjectXDataRequirementBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The value of the filter. If period is specified, the filter will return
/// only those data items that fall within the bounds determined by the
/// Period, inclusive of the period boundaries. If dateTime is specified,
/// the filter will return only those data items that are equal to the
/// specified dateTime. If a Duration is specified, the filter will return
/// only those data items that fall within Duration before now.
abstract class ValueXDataRequirementDateFilterBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Indicates whether the Medication is only taken when needed within a
/// specific dosing schedule (Boolean option), or it indicates the
/// precondition for taking the Medication (CodeableConcept).
abstract class AsNeededXDosageBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Amount of medication per dose.
abstract class DoseXDosageDoseAndRateBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Amount of medication per unit of time.
abstract class RateXDosageDoseAndRateBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The value that should be used if there is no value stated in the
/// instance (e.g. 'if not otherwise specified, the abstract is false').
abstract class DefaultValueXElementDefinitionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Specifies a value that SHALL be exactly the value for this element in
/// the instance. For purposes of comparison, non-significant whitespace is
/// ignored, and all values must be an exact match (case and accent
/// sensitive). Missing elements/attributes must also be missing.
abstract class FixedXElementDefinitionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

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
abstract class PatternXElementDefinitionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The minimum allowed value for the element. The value is inclusive. This
/// is allowed for the types date, dateTime, instant, time, decimal,
/// integer, and Quantity.
abstract class MinValueXElementDefinitionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The maximum allowed value for the element. The value is inclusive. This
/// is allowed for the types date, dateTime, instant, time, decimal,
/// integer, and Quantity.
abstract class MaxValueXElementDefinitionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The actual value for the element, which must be one of the types
/// allowed for this element.
abstract class ValueXElementDefinitionExampleBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Value of extension - must be one of a constrained set of the data types
/// (see [Extensibility](extensibility.html) for a list).
abstract class ValueXExtensionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The age of the specific population.
abstract class AgeXPopulationBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// Either a duration for the length of the timing schedule, a range of
/// possible length, or outer bounds for start and/or end limits of the
/// timing schedule.
abstract class BoundsXTimingRepeatBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// The timing of the event (if this is a periodic trigger).
abstract class TimingXTriggerDefinitionBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}

/// A value that defines the context specified in this context of use. The
/// interpretation of the value is defined by the code.
abstract class ValueXUsageContextBuilder extends DataTypeBuilder
    implements PolymorphicTypeBuilder {}
