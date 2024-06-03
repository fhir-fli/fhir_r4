/// /// [MedicationKnowledge] Information about a medication that is used to
/// support knowledge.

@freezed
class MedicationKnowledge with _$MedicationKnowledge {
  const MedicationKnowledge._();

  const factory MedicationKnowledge({
/// /// [resourceType] This is a MedicationKnowledge resource

    @JsonKey(name: 'resourceType') dynamic? resourceType,
/// /// [id] The logical id of the resource, as used in the URL for the
/// resource. Once assigned, this value never changes.

    @JsonKey(name: 'id') FhirId? id,
/// /// [meta] The metadata about the resource. This is content that is
/// maintained by the infrastructure. Changes to the content might not always
/// be associated with version changes to the resource.

    @JsonKey(name: 'meta') FhirMeta? meta,
/// /// [implicitRules] A reference to a set of rules that were followed when
/// the resource was constructed, and which must be understood when processing
/// the content. Often, this is a reference to an implementation guide that
/// defines the special rules along with other profiles etc.

    @JsonKey(name: 'implicitRules') FhirUri? implicitRules,
/// /// [_implicitRules] Extensions for implicitRules

    @JsonKey(name: '_implicitRules') FhirElement? implicitRulesElement,
/// /// [language] The base language in which the resource is written.

    @JsonKey(name: 'language') FhirCode? language,
/// /// [_language] Extensions for language

    @JsonKey(name: '_language') FhirElement? languageElement,
/// /// [text] A human-readable narrative that contains a summary of the
/// resource and can be used to represent the content of the resource to a
/// human. The narrative need not encode all the structured data, but is
/// required to contain sufficient detail to make it "clinically safe" for a
/// human to just read the narrative. Resource definitions may define what
/// content should be represented in the narrative to ensure clinical safety.

    @JsonKey(name: 'text') Narrative? text,
/// /// [contained] These resources do not have an independent existence apart
/// from the resource that contains them - they cannot be identified
/// independently, nor can they have their own independent transaction scope.
/// This is allowed to be a Parameters resource if and only if it is referenced
/// by a resource that provides context/meaning.

    @JsonKey(name: 'contained') List<List<ResourceList>>? contained,
/// /// [extension] May be used to represent additional information that is not
/// part of the basic definition of the resource. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// /// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the resource and that modifies
/// the understanding of the element that contains it and/or the understanding
/// of the containing element's descendants. Usually modifier elements provide
/// negation or qualification. To make the use of extensions safe and
/// managable, there is a strict set of governance applied to the definition
/// and use of extensions. Though any implementer is allowed to define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// /// [url] An absolute URI that is used to identify this {{title}} when it
/// is referenced in a specification, model, design or an instance; also called
/// its canonical identifier. This SHOULD be globally unique and SHOULD be a
/// literal address at which an authoritative instance of this {{title}} is (or
/// will be) published. This URL can be the target of a canonical reference. It
/// SHALL remain the same when the {{title}} is stored on different servers.

    @JsonKey(name: 'url') FhirUri? url,
/// /// [_url] Extensions for url

    @JsonKey(name: '_url') FhirElement? urlElement,
/// /// [identifier] Business identifier for this medication.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// /// [version] The identifier that is used to identify this version of the
/// {{title}} when it is referenced in a specification, model, design or
/// instance. This is an arbitrary value managed by the {{title}} author and is
/// not expected to be globally unique. For example, it might be a timestamp
/// (e.g. yyyymmdd) if a managed version is not available. There is also no
/// expectation that versions can be placed in a lexicographical sequence
/// without additional knowledge.  (See the versionAlgorithm element.)

    @JsonKey(name: 'version') String? version,
/// /// [_version] Extensions for version

    @JsonKey(name: '_version') FhirElement? versionElement,
/// /// [versionAlgorithmString] Indicates the mechanism used to compare
/// versions to determine which is more current.

    @JsonKey(name: 'versionAlgorithmString') String? versionAlgorithmString,
/// /// [_versionAlgorithmString] Extensions for versionAlgorithmString

    @JsonKey(name: '_versionAlgorithmString') FhirElement? versionAlgorithmStringElement,
/// /// [versionAlgorithmCoding] Indicates the mechanism used to compare
/// versions to determine which is more current.

    @JsonKey(name: 'versionAlgorithmCoding') Coding? versionAlgorithmCoding,
/// /// [name] All of the names for a medication, for example, the name(s)
/// given to a medication in different countries.  For example, acetaminophen
/// and paracetamol or salbutamol and albuterol.

    @JsonKey(name: 'name') List<List<String>>? name,
/// /// [_name] Extensions for name

    @JsonKey(name: '_name') List<FhirElement>? nameElement,
/// /// [title] A short, descriptive, user-friendly title for the {{title}}.

    @JsonKey(name: 'title') String? title,
/// /// [_title] Extensions for title

    @JsonKey(name: '_title') FhirElement? titleElement,
/// /// [status] A code to indicate if the medication referred to by this
/// MedicationKnowledge is in active use within the drug database or inventory
/// system. The status refers to the validity about the information of the
/// medication and not to its medicinal properties.

    @JsonKey(name: 'status') FhirCode? status,
/// /// [_status] Extensions for status

    @JsonKey(name: '_status') FhirElement? statusElement,
/// /// [experimental] A Boolean value to indicate that this {{title}} is
/// authored for testing purposes (or education/evaluation/marketing) and is
/// not intended for genuine usage.

    @JsonKey(name: 'experimental') FhirBoolean? experimental,
/// /// [_experimental] Extensions for experimental

    @JsonKey(name: '_experimental') FhirElement? experimentalElement,
/// /// [date] The date (and optionally time) when the {{title}} was last
/// significantly changed. The date must change when the business version
/// changes and it must change if the status code changes. In addition, it
/// should change when the substantive content of the {{title}} changes.

    @JsonKey(name: 'date') FhirDateTime? date,
/// /// [_date] Extensions for date

    @JsonKey(name: '_date') FhirElement? dateElement,
/// /// [publisher] The name of the organization or individual responsible for
/// the release and ongoing maintenance of the {{title}}.

    @JsonKey(name: 'publisher') String? publisher,
/// /// [_publisher] Extensions for publisher

    @JsonKey(name: '_publisher') FhirElement? publisherElement,
/// /// [contact] Contact details to assist a user in finding and communicating
/// with the publisher.

    @JsonKey(name: 'contact') List<List<ContactDetail>>? contact,
/// /// [description] A free text natural language description of the {{title}}
/// from a consumer's perspective.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// /// [_description] Extensions for description

    @JsonKey(name: '_description') FhirElement? descriptionElement,
/// /// [useContext] The content was developed with a focus and intent of
/// supporting the contexts that are listed. These contexts may be general
/// categories (gender, age, ...) or may be references to specific programs
/// (insurance plans, studies, ...) and may be used to assist with indexing and
/// searching for appropriate {{title}}s.

    @JsonKey(name: 'useContext') List<List<UsageContext>>? useContext,
/// /// [jurisdiction] A legal or geographic region in which the {{title}} is
/// intended to be used.

    @JsonKey(name: 'jurisdiction') List<List<CodeableConcept>>? jurisdiction,
/// /// [purpose] Explanation of why this {{title}} is needed and why it has
/// been designed as it has.

    @JsonKey(name: 'purpose') FhirMarkdown? purpose,
/// /// [_purpose] Extensions for purpose

    @JsonKey(name: '_purpose') FhirElement? purposeElement,
/// /// [copyright] A copyright statement relating to the {{title}} and/or its
/// contents. Copyright statements are generally legal restrictions on the use
/// and publishing of the {{title}}.

    @JsonKey(name: 'copyright') FhirMarkdown? copyright,
/// /// [_copyright] Extensions for copyright

    @JsonKey(name: '_copyright') FhirElement? copyrightElement,
/// /// [copyrightLabel] A short string (<50 characters), suitable for
/// inclusion in a page footer that identifies the copyright holder, effective
/// period, and optionally whether rights are resctricted. (e.g. 'All rights
/// reserved', 'Some rights reserved').

    @JsonKey(name: 'copyrightLabel') String? copyrightLabel,
/// /// [_copyrightLabel] Extensions for copyrightLabel

    @JsonKey(name: '_copyrightLabel') FhirElement? copyrightLabelElement,
/// /// [approvalDate] The date on which the resource content was approved by
/// the publisher. Approval happens once when the content is officially
/// approved for usage.

    @JsonKey(name: 'approvalDate') FhirDate? approvalDate,
/// /// [_approvalDate] Extensions for approvalDate

    @JsonKey(name: '_approvalDate') FhirElement? approvalDateElement,
/// /// [lastReviewDate] The date on which the resource content was last
/// reviewed. Review happens periodically after approval but does not change
/// the original approval date.

    @JsonKey(name: 'lastReviewDate') FhirDate? lastReviewDate,
/// /// [_lastReviewDate] Extensions for lastReviewDate

    @JsonKey(name: '_lastReviewDate') FhirElement? lastReviewDateElement,
/// /// [effectivePeriod] The period during which the {{title}} content was or
/// is planned to be in active use.

    @JsonKey(name: 'effectivePeriod') Period? effectivePeriod,
/// /// [topic] Descriptive topics related to the content of the {{title}}.
/// Topics provide a high-level categorization as well as keywords for the
/// {{title}} that can be useful for filtering and searching.

    @JsonKey(name: 'topic') List<List<CodeableConcept>>? topic,
/// /// [author] The creator or owner of the knowledge or information about the
/// medication.

    @JsonKey(name: 'author') Reference? author,
/// /// [editor] An individual or organization primarily responsible for
/// internal coherence of the {{title}}.

    @JsonKey(name: 'editor') List<List<ContactDetail>>? editor,
/// /// [reviewer] An individual or organization asserted by the publisher to
/// be primarily responsible for review of some aspect of the {{title}}.

    @JsonKey(name: 'reviewer') List<List<ContactDetail>>? reviewer,
/// /// [endorser] An individual or organization asserted by the publisher to
/// be responsible for officially endorsing the {{title}} for use in some
/// setting.

    @JsonKey(name: 'endorser') List<List<ContactDetail>>? endorser,
/// /// [relatedArtifact] Related artifacts such as additional documentation,
/// justification, dependencies, bibliographic references, and predecessor and
/// successor artifacts.

    @JsonKey(name: 'relatedArtifact') List<List<RelatedArtifact>>? relatedArtifact,
/// /// [code] A code that specifies this medication, or a textual description
/// if no code is available. Usage note: This could be a standard medication
/// code such as a code from RxNorm, SNOMED CT, IDMP etc. It could also be a
/// national or local formulary code, optionally with translations to other
/// code systems.

    @JsonKey(name: 'code') CodeableConcept? code,
/// /// [intendedJurisdiction] Lists the jurisdictions that this medication
/// knowledge was written for.

    @JsonKey(name: 'intendedJurisdiction') List<List<CodeableConcept>>? intendedJurisdiction,
/// /// [relatedMedicationKnowledge] Associated or related medications. For
/// example, if the medication is a branded product (e.g. Crestor), this is the
/// Therapeutic Moeity (e.g. Rosuvastatin) or if this is a generic medication
/// (e.g. Rosuvastatin), this would link to a branded product (e.g. Crestor.

    @JsonKey(name: 'relatedMedicationKnowledge') List<List<MedicationKnowledge_RelatedMedicationKnowledge>>? relatedMedicationKnowledge,
/// /// [associatedMedication] Links to associated medications that could be
/// prescribed, dispensed or administered.

    @JsonKey(name: 'associatedMedication') List<List<Reference>>? associatedMedication,
/// /// [productType] Category of the medication or product (e.g. branded
/// product, therapeutic moeity, generic product, innovator product, etc.).

    @JsonKey(name: 'productType') List<List<CodeableConcept>>? productType,
/// /// [monograph] Associated documentation about the medication.

    @JsonKey(name: 'monograph') List<List<MedicationKnowledge_Monograph>>? monograph,
/// /// [preparationInstruction] The instructions for preparing the medication.

    @JsonKey(name: 'preparationInstruction') FhirMarkdown? preparationInstruction,
/// /// [_preparationInstruction] Extensions for preparationInstruction

    @JsonKey(name: '_preparationInstruction') FhirElement? preparationInstructionElement,
/// /// [cost] The price of the medication.

    @JsonKey(name: 'cost') List<List<MedicationKnowledge_Cost>>? cost,
/// /// [monitoringProgram] The program under which the medication is reviewed.

    @JsonKey(name: 'monitoringProgram') List<List<MedicationKnowledge_MonitoringProgram>>? monitoringProgram,
/// /// [indicationGuideline] Guidelines or protocols that are applicable for
/// the administration of the medication based on indication.

    @JsonKey(name: 'indicationGuideline') List<List<MedicationKnowledge_IndicationGuideline>>? indicationGuideline,
/// /// [medicineClassification] Categorization of the medication within a
/// formulary or classification system.

    @JsonKey(name: 'medicineClassification') List<List<MedicationKnowledge_MedicineClassification>>? medicineClassification,
/// /// [packaging] Information that only applies to packages (not products).

    @JsonKey(name: 'packaging') List<List<MedicationKnowledge_Packaging>>? packaging,
/// /// [clinicalUseIssue] Potential clinical issue with or between
/// medication(s) (for example, drug-drug interaction, drug-disease
/// contraindication, drug-allergy interaction, etc.).

    @JsonKey(name: 'clinicalUseIssue') List<List<Reference>>? clinicalUseIssue,
/// /// [storageGuideline] Information on how the medication should be stored,
/// for example, refrigeration temperatures and length of stability at a given
/// temperature.

    @JsonKey(name: 'storageGuideline') List<List<MedicationKnowledge_StorageGuideline>>? storageGuideline,
/// /// [regulatory] Regulatory information about a medication.

    @JsonKey(name: 'regulatory') List<List<MedicationKnowledge_Regulatory>>? regulatory,
/// /// [definitional] Along with the link to a Medicinal Product Definition
/// resource, this information provides common definitional elements that are
/// needed to understand the specific medication that is being described.

    @JsonKey(name: 'definitional') MedicationKnowledge_Definitional? definitional,
  }) = _$MedicationKnowledge;

  @override
  String get fhirType => 'MedicationKnowledge';

  factory MedicationKnowledge.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledgeFromJson(json);

  factory MedicationKnowledge.fromYaml(dynamic yaml) => yaml is String
      ? MedicationKnowledge.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationKnowledge.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationKnowledge cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MedicationKnowledge.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicationKnowledgeFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
