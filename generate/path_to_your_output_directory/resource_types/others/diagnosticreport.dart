/// /// [DiagnosticReport] The findings and interpretation of diagnostic tests
/// performed on patients, groups of patients, products, substances, devices,
/// and locations, and/or specimens derived from these. The report includes
/// clinical context such as requesting provider information, and some mix of
/// atomic results, images, textual and coded interpretations, and formatted
/// representation of diagnostic reports. The report also includes non-clinical
/// context such as batch analysis and stability reporting of products and
/// substances.

@freezed
class DiagnosticReport with _$DiagnosticReport {
  const DiagnosticReport._();

  const factory DiagnosticReport({
/// /// [resourceType] This is a DiagnosticReport resource

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
/// /// [identifier] Identifiers assigned to this report by the performer or
/// other systems.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// /// [basedOn] Details concerning a service requested.

    @JsonKey(name: 'basedOn') List<List<Reference>>? basedOn,
/// /// [status] The status of the diagnostic report.

    @JsonKey(name: 'status') FhirCode? status,
/// /// [_status] Extensions for status

    @JsonKey(name: '_status') FhirElement? statusElement,
/// /// [category] A code that classifies the clinical discipline, department
/// or diagnostic service that created the report (e.g. cardiology,
/// biochemistry, hematology, MRI). This is used for searching, sorting and
/// display purposes.

    @JsonKey(name: 'category') List<List<CodeableConcept>>? category,
/// /// [code] A code or name that describes this diagnostic report.

    @JsonKey(name: 'code') CodeableConcept? code,
/// /// [subject] The subject of the report. Usually, but not always, this is a
/// patient. However, diagnostic services also perform analyses on specimens
/// collected from a variety of other sources.

    @JsonKey(name: 'subject') Reference? subject,
/// /// [encounter] The encounter (e.g. a patient and healthcare provider
/// interaction) that is associated with the DiagnosticReport.

    @JsonKey(name: 'encounter') Reference? encounter,
/// /// [effectiveDateTime] The time or time-period the observed values are
/// related to. When the subject of the report is a patient, this is usually
/// either the time of the procedure or of specimen collection(s), but very
/// often the source of the date/time is not known, only the date/time itself.

    @JsonKey(name: 'effectiveDateTime') FhirDateTime? effectiveDateTime,
/// /// [_effectiveDateTime] Extensions for effectiveDateTime

    @JsonKey(name: '_effectiveDateTime') FhirElement? effectiveDateTimeElement,
/// /// [effectivePeriod] The time or time-period the observed values are
/// related to. When the subject of the report is a patient, this is usually
/// either the time of the procedure or of specimen collection(s), but very
/// often the source of the date/time is not known, only the date/time itself.

    @JsonKey(name: 'effectivePeriod') Period? effectivePeriod,
/// /// [issued] The date and time that this version of the report was made
/// available to providers, typically after the report was reviewed and
/// verified.

    @JsonKey(name: 'issued') FhirInstant? issued,
/// /// [_issued] Extensions for issued

    @JsonKey(name: '_issued') FhirElement? issuedElement,
/// /// [performer] The diagnostic service that is responsible for issuing the
/// report.

    @JsonKey(name: 'performer') List<List<Reference>>? performer,
/// /// [resultsInterpreter] The practitioner or organization that is
/// responsible for the report's conclusions and interpretations.

    @JsonKey(name: 'resultsInterpreter') List<List<Reference>>? resultsInterpreter,
/// /// [specimen] Details about the specimens on which this diagnostic report
/// is based.

    @JsonKey(name: 'specimen') List<List<Reference>>? specimen,
/// /// [result] [Observations](observation.html)  that are part of this
/// diagnostic report.

    @JsonKey(name: 'result') List<List<Reference>>? result,
/// /// [note] Comments about the diagnostic report.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
/// /// [study] One or more links to full details of any study performed during
/// the diagnostic investigation. An ImagingStudy might comprise a set of
/// radiologic images obtained via a procedure that are analyzed as a group.
/// Typically, this is imaging performed by DICOM enabled modalities, but this
/// is not required. A fully enabled PACS viewer can use this information to
/// provide views of the source images. A GenomicStudy might comprise one or
/// more analyses, each serving a specific purpose. These analyses may vary in
/// method (e.g., karyotyping, CNV, or SNV detection), performer, software,
/// devices used, or regions targeted.

    @JsonKey(name: 'study') List<List<Reference>>? study,
/// /// [supportingInfo] This backbone element contains supporting information
/// that was used in the creation of the report not included in the results
/// already included in the report.

    @JsonKey(name: 'supportingInfo') List<List<DiagnosticReport_SupportingInfo>>? supportingInfo,
/// /// [media] A list of key images or data associated with this report. The
/// images or data are generally created during the diagnostic process, and may
/// be directly of the patient, or of treated specimens (i.e. slides of
/// interest).

    @JsonKey(name: 'media') List<List<DiagnosticReport_Media>>? media,
/// /// [composition] Reference to a Composition resource instance that
/// provides structure for organizing the contents of the DiagnosticReport.

    @JsonKey(name: 'composition') Reference? composition,
/// /// [conclusion] Concise and clinically contextualized summary conclusion
/// (interpretation/impression) of the diagnostic report.

    @JsonKey(name: 'conclusion') FhirMarkdown? conclusion,
/// /// [_conclusion] Extensions for conclusion

    @JsonKey(name: '_conclusion') FhirElement? conclusionElement,
/// /// [conclusionCode] One or more codes that represent the summary
/// conclusion (interpretation/impression) of the diagnostic report.

    @JsonKey(name: 'conclusionCode') List<List<CodeableConcept>>? conclusionCode,
/// /// [presentedForm] Rich text representation of the entire result as issued
/// by the diagnostic service. Multiple formats are allowed but they SHALL be
/// semantically equivalent.

    @JsonKey(name: 'presentedForm') List<List<Attachment>>? presentedForm,
  }) = _$DiagnosticReport;

  @override
  String get fhirType => 'DiagnosticReport';

  factory DiagnosticReport.fromJson(Map<String, dynamic> json) =>
      _$DiagnosticReportFromJson(json);

  factory DiagnosticReport.fromYaml(dynamic yaml) => yaml is String
      ? DiagnosticReport.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DiagnosticReport.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DiagnosticReport cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory DiagnosticReport.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DiagnosticReportFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
