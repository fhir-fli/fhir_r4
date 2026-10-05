import 'package:fhir_bulk/fhir_bulk.dart' as core;
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_bulk/src/r4_bulk_model.dart';

/// NDJSON and compressed bulk files of R4B resources: the core's
/// [core.FhirBulk] over [r4Bulk], as static members.
abstract final class FhirBulk {
  static const _core = core.FhirBulk<Resource>(r4Bulk);

  /// See [core.FhirBulk.toNdJson].
  static String toNdJson(List<Resource> resources) => _core.toNdJson(resources);

  /// See [core.FhirBulk.fromNdJson].
  static List<Resource> fromNdJson(String content) => _core.fromNdJson(content);

  /// See [core.FhirBulk.fromFile].
  static Future<List<Resource>> fromFile(String path) => _core.fromFile(path);

  /// See [core.FhirBulk.fromCompressedData].
  static Future<List<Resource>> fromCompressedData(
    String contentType,
    List<int> content,
  ) =>
      _core.fromCompressedData(contentType, content);

  /// See [core.FhirBulk.fromCompressedFile].
  static Future<List<Resource>> fromCompressedFile(String path) =>
      _core.fromCompressedFile(path);

  /// See [core.FhirBulk.toZipFile].
  static Future<List<int>?> toZipFile(Map<String, String> ndJsonStrings) =>
      core.FhirBulk.toZipFile(ndJsonStrings);

  /// See [core.FhirBulk.toGZipFile].
  static List<int>? toGZipFile(Map<String, String> ndJsonStrings) =>
      core.FhirBulk.toGZipFile(ndJsonStrings);

  /// See [core.FhirBulk.toTarGzFile].
  static Future<List<int>?> toTarGzFile(Map<String, String> ndJsonStrings) =>
      core.FhirBulk.toTarGzFile(ndJsonStrings);
}

/// NDJSON as streams of R4B resources: the core's [core.NdjsonStream] over
/// [r4Bulk], as static members.
abstract final class NdjsonStream {
  static const _core = core.NdjsonStream<Resource>(r4Bulk);

  /// See [core.NdjsonStream.lines].
  static Stream<String> lines(Stream<List<int>> bytes) =>
      core.NdjsonStream.lines(bytes);

  /// See [core.NdjsonStream.resources].
  static Stream<Resource> resources(
    Stream<String> lines, {
    void Function(String line, Object error)? onBadLine,
  }) =>
      _core.resources(lines, onBadLine: onBadLine);

  /// See [core.NdjsonStream.encode].
  static Stream<String> encode(Stream<Resource> resources) =>
      _core.encode(resources);

  /// See [core.NdjsonStream.write].
  static Future<int> write(
    Stream<String> lines,
    StringSink sink, {
    Future<void> Function()? flush,
    int flushEvery = 500,
  }) =>
      core.NdjsonStream.write(
        lines,
        sink,
        flush: flush,
        flushEvery: flushEvery,
      );
}

/// Which resource type, and optionally which one resource, to request in a
/// Bulk Export's `_type`, named by this version's [R4ResourceType].
class WhichResource extends core.WhichResource {
  /// Creates the request for [resourceType], or for the one resource [id]
  /// of it.
  WhichResource(R4ResourceType? resourceType, [FhirId? id])
      : super(resourceType?.name, id?.valueString);
}

/// A Bulk Export request returning R4B resources.
typedef BulkRequest = core.BulkRequest<Resource>;

/// Export for all patients.
class BulkRequestPatient extends core.BulkRequestPatient<Resource> {
  /// Constructor for [BulkRequestPatient]; [since] is sent as its text.
  BulkRequestPatient({
    required super.base,
    FhirDateTime? since,
    super.types,
    super.headers,
    super.client,
    super.typeFilters,
    super.outputFormat,
    super.useHttpPost,
  }) : super(model: r4Bulk, since: since?.toString());
}

/// Export for a specific group.
class BulkRequestGroup extends core.BulkRequestGroup<Resource> {
  /// Constructor for [BulkRequestGroup]; [since] is sent as its text.
  BulkRequestGroup({
    required super.base,
    required FhirId id,
    FhirDateTime? since,
    super.types,
    super.headers,
    super.client,
    super.typeFilters,
    super.outputFormat,
    super.useHttpPost,
  }) : super(model: r4Bulk, id: id.toString(), since: since?.toString());
}

/// Export for the entire system.
class BulkRequestSystem extends core.BulkRequestSystem<Resource> {
  /// Constructor for [BulkRequestSystem]; [since] is sent as its text.
  BulkRequestSystem({
    required super.base,
    FhirDateTime? since,
    super.types,
    super.headers,
    super.client,
    super.typeFilters,
    super.outputFormat,
    super.useHttpPost,
  }) : super(model: r4Bulk, since: since?.toString());
}

/// One NDJSON file to import, named by this version's [R4ResourceType].
class ImportFile extends core.ImportFile {
  /// Creates an [ImportFile] with the specified resource type and URL.
  ImportFile({required R4ResourceType resourceType, required super.url})
      : super(resourceType: resourceType.name);
}

/// A Bulk Import request answered with an R4B [OperationOutcome].
class BulkImportRequest extends core.BulkImportRequest<Resource> {
  /// Creates a [BulkImportRequest] with the specified parameters.
  BulkImportRequest({
    required super.base,
    required super.files,
    super.inputSource,
    super.credentialHttpBasic,
    super.maxBatchResourceCount,
    super.client,
    super.additionalParameters,
  }) : super(model: r4Bulk);

  @override
  Future<OperationOutcome> importData() async =>
      await super.importData() as OperationOutcome;
}
