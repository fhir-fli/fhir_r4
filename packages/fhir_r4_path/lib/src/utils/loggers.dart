// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

/// Enum to represent log categories.
enum LogCategory {
  /// Initialization log category.
  init,

  /// Progress log category.
  progress,

  /// Context log category.
  tx,

  /// Generate log category.
  context,

  /// Generate log category.
  generate,

  /// Validate log category.
  html,
}

/// A logging service to log messages and debug information.
class LoggingService {
  /// Constructor with optional [debug] parameter. Defaults to `false`.
  LoggingService({this.debug = false});

  /// Whether debugging is enabled.
  final bool debug;

  /// Logs a standard message (always displayed).
  void logMessage(String message) {
    print(message);
  }

  /// Logs a debug message if debugging is enabled.
  void logDebugMessage(LogCategory category, String message) {
    if (debug) {
      print(' -${category.name.toLowerCase()}: $message');
    }
  }

  /// Checks if debugging is enabled.
  bool isDebugLogging() => debug;
}

/// A logger class to handle client requests and responses in different formats.
class ClientLogger {
  /// Constructor
  ClientLogger({
    String? logFilePath,
    this.isHtmlFormat = false,
    this.isTextFormat = false,
  }) : logFile = logFilePath != null ? File(logFilePath) : null {
    if (logFile != null && !logFile!.existsSync()) {
      logFile!.createSync(recursive: true);
    }
  }

  /// Log file to write the logs to.
  final File? logFile;

  /// Whether to log in HTML format.
  final bool isHtmlFormat;

  /// Whether to log in text format.
  final bool isTextFormat;
  int _requestId = 0;
  String? _lastId;

  /// Number of requests logged.
  int requests = 0;

  /// Logs a request to the server.
  void logRequest(
    String method,
    String url,
    List<String>? headers,
    List<int>? body,
  ) {
    requests++;
    _requestId++;
    _lastId = _requestId.toString();
    final logContent = StringBuffer();

    if (isHtmlFormat) {
      logContent
        ..writeln('<hr/><a name="l$_lastId"> </a><pre>')
        ..writeln('$method $url HTTP/1.0');
      headers?.forEach((header) {
        logContent.writeln(_escapeHtml(header));
      });
      if (body != null) {
        logContent
          ..writeln()
          ..writeln(_escapeHtml(utf8.decode(body)));
      }
      logContent.writeln('</pre>');
    } else if (isTextFormat) {
      logContent
        ..writeln('\r\n--- $_lastId -----------------\r\nRequest: \r\n')
        ..writeln('$method $url HTTP/1.0');
      headers?.forEach((header) {
        if (header.startsWith('Api-Key')) {
          logContent.writeln('Api-Key: xxxxxxxxxxxxxxxx');
        } else {
          logContent.writeln(header);
        }
      });
      if (body != null) {
        logContent
          ..writeln()
          ..writeln(utf8.decode(body));
      }
    } else {
      // Default console log for unexpected requests.
      stdout
        ..writeln('Unexpected request to server:')
        ..writeln('Method: $method')
        ..writeln('URL: $url');
      headers?.forEach((header) => stdout.writeln('Header: $header'));
      if (body != null) {
        stdout
          ..writeln('Body:')
          ..writeln('----')
          ..writeln(utf8.decode(body));
      }
    }

    _writeToLogFile(logContent.toString());
  }

  /// Logs a response from the server.
  void logResponse(
    String outcome,
    List<String>? headers,
    List<int>? body,
    int durationMillis,
  ) {
    final logContent = StringBuffer();

    if (isHtmlFormat) {
      logContent
        ..writeln('<pre>')
        ..writeln(outcome);
      headers?.forEach((header) {
        logContent.writeln(_escapeHtml(header));
      });
      if (body != null) {
        logContent
          ..writeln()
          ..writeln(_escapeHtml(utf8.decode(body)));
      }
      logContent.writeln('</pre>');
    } else if (isTextFormat) {
      logContent
        ..writeln('\r\n\r\nResponse (${durationMillis}ms): \r\n')
        ..writeln(outcome);
      headers?.forEach(logContent.writeln);
      if (body != null) {
        logContent
          ..writeln()
          ..writeln(utf8.decode(body));
      }
    } else {
      stdout
        ..writeln('Response logged:')
        ..writeln('Outcome: $outcome');
      headers?.forEach((header) => stdout.writeln('Header: $header'));
      if (body != null) {
        stdout
          ..writeln('Body:')
          ..writeln('----')
          ..writeln(utf8.decode(body));
      }
    }

    _writeToLogFile(logContent.toString());
  }

  /// Returns the last logged request ID.
  String? getLastId() => _lastId;

  /// Clears the last logged request ID.
  void clearLastId() {
    _lastId = null;
  }

  /// Verifies if no requests were made.
  bool verifyHasNoRequests({bool rebuildCache = false}) {
    if (rebuildCache) return true;
    if (requests != 0) {
      stderr.writeln('$requests unexpected requests logged.');
      return false;
    }
    return true;
  }

  /// Escapes HTML content for logging in HTML format.
  String _escapeHtml(String input) {
    return input
        .replaceAll('&', '&amp;')
        .replaceAll('<', '&lt;')
        .replaceAll('>', '&gt;')
        .replaceAll('"', '&quot;')
        .replaceAll("'", '&#39;');
  }

  /// Writes the content to the log file if available.
  void _writeToLogFile(String content) {
    if (logFile != null) {
      logFile!.writeAsStringSync(content, mode: FileMode.append);
    }
  }
}
