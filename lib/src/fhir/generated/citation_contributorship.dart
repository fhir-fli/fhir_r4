import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CitationContributorship {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirBoolean complete;
  final PrimitiveElement Complete;
  final List<CitationEntry> entry;
  final List<CitationSummary1> summary;
  const CitationContributorship({
    this.id,
    this.extension,
    this.modifierExtension,
    this.complete,
    this.Complete,
    this.entry,
    this.summary,
  });
}
