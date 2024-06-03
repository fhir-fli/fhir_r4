/// /// [Citation_PublicationForm] The Citation Resource enables reference to
/// any knowledge artifact for purposes of identification and attribution. The
/// Citation Resource supports existing reference structures and developing
/// publication practices such as versioning, expressing complex
/// contributorship roles, and referencing computable resources.

@freezed
class Citation_PublicationForm with _$Citation_PublicationForm {
  const Citation_PublicationForm._();

  const factory Citation_PublicationForm({
/// /// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// /// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// /// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// /// [publishedIn] The collection the cited article or artifact is published
/// in.

    @JsonKey(name: 'publishedIn') Citation_PublishedIn? publishedIn,
/// /// [citedMedium] Describes the form of the medium cited. Common codes are
/// "Internet" or "Print". The CitedMedium value set has 6 codes. The codes
/// internet, print, and offline-digital-storage are the common codes for a
/// typical publication form, though internet and print are more common for
/// study citations. Three additional codes (each appending one of the primary
/// codes with "-without-issue" are used for situations when a study is
/// published both within an issue (of a periodical release as commonly done
/// for journals) AND is published separately from the issue (as commonly done
/// with early online publication), to represent specific identification of the
/// publication form not associated with the issue.

    @JsonKey(name: 'citedMedium') CodeableConcept? citedMedium,
/// /// [volume] Volume number of journal or other collection in which the
/// article is published.

    @JsonKey(name: 'volume') String? volume,
/// /// [_volume] Extensions for volume

    @JsonKey(name: '_volume') FhirElement? volumeElement,
/// /// [issue] Issue, part or supplement of journal or other collection in
/// which the article is published.

    @JsonKey(name: 'issue') String? issue,
/// /// [_issue] Extensions for issue

    @JsonKey(name: '_issue') FhirElement? issueElement,
/// /// [articleDate] The date the article was added to the database, or the
/// date the article was released.

    @JsonKey(name: 'articleDate') FhirDateTime? articleDate,
/// /// [_articleDate] Extensions for articleDate

    @JsonKey(name: '_articleDate') FhirElement? articleDateElement,
/// /// [publicationDateText] Text representation of the date on which the
/// issue of the cited artifact was published.

    @JsonKey(name: 'publicationDateText') String? publicationDateText,
/// /// [_publicationDateText] Extensions for publicationDateText

    @JsonKey(name: '_publicationDateText') FhirElement? publicationDateTextElement,
/// /// [publicationDateSeason] Spring, Summer, Fall/Autumn, Winter.

    @JsonKey(name: 'publicationDateSeason') String? publicationDateSeason,
/// /// [_publicationDateSeason] Extensions for publicationDateSeason

    @JsonKey(name: '_publicationDateSeason') FhirElement? publicationDateSeasonElement,
/// /// [lastRevisionDate] The date the article was last revised or updated in
/// the database.

    @JsonKey(name: 'lastRevisionDate') FhirDateTime? lastRevisionDate,
/// /// [_lastRevisionDate] Extensions for lastRevisionDate

    @JsonKey(name: '_lastRevisionDate') FhirElement? lastRevisionDateElement,
/// /// [language] The language or languages in which this form of the article
/// is published.

    @JsonKey(name: 'language') List<List<CodeableConcept>>? language,
/// /// [accessionNumber] Entry number or identifier for inclusion in a
/// database.

    @JsonKey(name: 'accessionNumber') String? accessionNumber,
/// /// [_accessionNumber] Extensions for accessionNumber

    @JsonKey(name: '_accessionNumber') FhirElement? accessionNumberElement,
/// /// [pageString] Used for full display of pagination.

    @JsonKey(name: 'pageString') String? pageString,
/// /// [_pageString] Extensions for pageString

    @JsonKey(name: '_pageString') FhirElement? pageStringElement,
/// /// [firstPage] Used for isolated representation of first page.

    @JsonKey(name: 'firstPage') String? firstPage,
/// /// [_firstPage] Extensions for firstPage

    @JsonKey(name: '_firstPage') FhirElement? firstPageElement,
/// /// [lastPage] Used for isolated representation of last page.

    @JsonKey(name: 'lastPage') String? lastPage,
/// /// [_lastPage] Extensions for lastPage

    @JsonKey(name: '_lastPage') FhirElement? lastPageElement,
/// /// [pageCount] Actual or approximate number of pages or screens. Distinct
/// from reporting the page numbers.

    @JsonKey(name: 'pageCount') String? pageCount,
/// /// [_pageCount] Extensions for pageCount

    @JsonKey(name: '_pageCount') FhirElement? pageCountElement,
/// /// [copyright] Copyright notice for the full article or artifact.

    @JsonKey(name: 'copyright') FhirMarkdown? copyright,
/// /// [_copyright] Extensions for copyright

    @JsonKey(name: '_copyright') FhirElement? copyrightElement,
  }) = _$Citation_PublicationForm;

  @override
  String get fhirType => 'Citation_PublicationForm';

  factory Citation_PublicationForm.fromJson(Map<String, dynamic> json) =>
      _$Citation_PublicationFormFromJson(json);

  factory Citation_PublicationForm.fromYaml(dynamic yaml) => yaml is String
      ? Citation_PublicationForm.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Citation_PublicationForm.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Citation_PublicationForm cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Citation_PublicationForm.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Citation_PublicationFormFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
