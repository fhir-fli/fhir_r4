import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class TerminologyCapabilitiesExpansion {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirBoolean hierarchical;
  final PrimitiveElement Hierarchical;
  final FhirBoolean paging;
  final PrimitiveElement Paging;
  final FhirBoolean incomplete;
  final PrimitiveElement Incomplete;
  final List<TerminologyCapabilitiesParameter> parameter;
  final FhirMarkdown textFilter;
  final PrimitiveElement TextFilter;
  const TerminologyCapabilitiesExpansion({
    this.id,
    this.extension,
    this.modifierExtension,
    this.hierarchical,
    this.Hierarchical,
    this.paging,
    this.Paging,
    this.incomplete,
    this.Incomplete,
    this.parameter,
    this.textFilter,
    this.TextFilter,
  });
}
