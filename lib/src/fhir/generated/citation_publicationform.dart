import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CitationPublicationForm {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Citation_PublishedIn publishedIn;
  final Citation_PeriodicRelease periodicRelease;
  final FhirDateTime articleDate;
  final PrimitiveElement ArticleDate;
  final FhirDateTime lastRevisionDate;
  final PrimitiveElement LastRevisionDate;
  final List<CodeableConcept> language;
  final String accessionNumber;
  final PrimitiveElement AccessionNumber;
  final String pageString;
  final PrimitiveElement PageString;
  final String firstPage;
  final PrimitiveElement FirstPage;
  final String lastPage;
  final PrimitiveElement LastPage;
  final String pageCount;
  final PrimitiveElement PageCount;
  final FhirMarkdown copyright;
  final PrimitiveElement Copyright;
  const CitationPublicationForm({
    this.id,
    this.extension,
    this.modifierExtension,
    this.publishedIn,
    this.periodicRelease,
    this.articleDate,
    this.ArticleDate,
    this.lastRevisionDate,
    this.LastRevisionDate,
    this.language,
    this.accessionNumber,
    this.AccessionNumber,
    this.pageString,
    this.PageString,
    this.firstPage,
    this.FirstPage,
    this.lastPage,
    this.LastPage,
    this.pageCount,
    this.PageCount,
    this.copyright,
    this.Copyright,
  });
}
