// ignore_for_file: unintended_html_in_doc_comment

import 'dart:convert';
import 'package:archive/archive.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:mime/mime.dart';
import 'package:universal_io/io.dart';

/// Class handling transformations between NDJSON <-> FHIR Resources,
/// and handling compressed NDJSON files.
abstract class FhirBulk {
  /// Accepts a list of resources and returns them as a single NDJSON string.
  static String toNdJson(List<Resource> resources) {
    final buffer = StringBuffer();
    for (final resource in resources) {
      buffer.writeln(jsonEncode(resource.toJson()));
    }
    if (buffer.isNotEmpty) {
      // Remove the trailing newline
      return buffer.toString().substring(0, buffer.length - 1);
    }
    return '';
  }

  /// Accepts an NDJSON-formatted string and converts it into a list of
  /// resources.
  static List<Resource> fromNdJson(String content) {
    final lines = content.split('\n');
    final resources = <Resource>[];
    for (final line in lines) {
      final trimmed = line.trim();
      if (trimmed.isNotEmpty) {
        resources.add(
          Resource.fromJson(jsonDecode(trimmed) as Map<String, dynamic>),
        );
      }
    }
    return resources;
  }

  /// Reads a file from [path] (which must be NDJSON) and decodes it into
  /// resources.
  static Future<List<Resource>> fromFile(String path) async {
    final file = await File(path).readAsString();
    return fromNdJson(file);
  }

  /// Accepts data that is .zip / .tar.gz / .gz, etc., uncompresses it,
  /// and assumes the uncompressed data is NDJSON for decoding.
  static Future<List<Resource>> fromCompressedData(
    String contentType,
    List<int> content,
  ) async {
    final resources = <Resource>[];

    if (contentType == 'application/zip' ||
        contentType == 'application/x-zip-compressed') {
      final archive = ZipDecoder().decodeBytes(content);
      for (final file in archive) {
        if (file.isFile) {
          final data = file.content as List<int>;
          resources.addAll(fromNdJson(utf8.decode(data)));
        }
      }
    } else if (contentType == 'application/x-tar') {
      // Typically means it's tar.gz
      final unzipped = const GZipDecoder().decodeBytes(content);
      final archive = TarDecoder().decodeBytes(unzipped);
      for (final file in archive) {
        if (file.isFile) {
          resources.addAll(fromNdJson(utf8.decode(file.content as List<int>)));
        }
      }
    } else if (contentType == 'application/gzip') {
      final data = const GZipDecoder().decodeBytes(content);
      resources.addAll(fromNdJson(utf8.decode(data)));
    }

    return resources;
  }

  /// Given a file that is presumably .zip / .tar.gz / .gz, uncompress + decode NDJSON.
  static Future<List<Resource>> fromCompressedFile(String path) async {
    final data = await File(path).readAsBytes();
    final mimeType = lookupMimeType(path) ?? '';

    if (mimeType == 'application/zip' ||
        mimeType == 'application/x-zip-compressed' ||
        path.endsWith('.zip')) {
      return fromCompressedData('application/zip', data);
    } else if (mimeType == 'application/x-tar' || path.contains('.tar.gz')) {
      return fromCompressedData('application/x-tar', data);
    } else if (mimeType == 'application/gzip' || path.endsWith('.gz')) {
      return fromCompressedData('application/gzip', data);
    }

    return <Resource>[];
  }

  /// Converts a map of NDJSON Strings into a .zip file (as bytes).
  /// Keys = desired filename (without .ndjson)
  /// Values = NDJSON content
  static Future<List<int>?> toZipFile(Map<String, String> ndJsonStrings) async {
    final archive = Archive();
    ndJsonStrings.forEach((String key, String value) {
      final file = ArchiveFile('$key.ndjson', value.length, utf8.encode(value));
      archive.addFile(file);
    });
    return ZipEncoder().encode(archive);
  }

  /// Converts a map of NDJSON Strings into a single .gz file (as bytes).
  static List<int>? toGZipFile(Map<String, String> ndJsonStrings) {
    final combined = ndJsonStrings.values.join('\n');
    final bytes = utf8.encode(combined);
    return const GZipEncoder().encode(bytes);
  }

  /// Converts a map of NDJSON Strings into a .tar.gz file (as bytes).
  static Future<List<int>?> toTarGzFile(
    Map<String, String> ndJsonStrings,
  ) async {
    final archive = Archive();
    ndJsonStrings.forEach((String key, String value) {
      final file = ArchiveFile('$key.ndjson', value.length, utf8.encode(value));
      archive.addFile(file);
    });
    final tarred = TarEncoder().encode(archive);
    return const GZipEncoder().encode(tarred);
  }
}
