import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CitationDateOfPublication {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirDate date;
  final PrimitiveElement Date;
  final String year;
  final PrimitiveElement Year;
  final String month;
  final PrimitiveElement Month;
  final String day;
  final PrimitiveElement Day;
  final String season;
  final PrimitiveElement Season;
  final String text;
  final PrimitiveElement Text;
  const CitationDateOfPublication({
    this.id,
    this.extension,
    this.modifierExtension,
    this.date,
    this.Date,
    this.year,
    this.Year,
    this.month,
    this.Month,
    this.day,
    this.Day,
    this.season,
    this.Season,
    this.text,
    this.Text,
  });
}
