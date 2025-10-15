/// Session management with timeout and activity tracking
/// Manages user sessions with automatic timeout and security features
library;

import 'dart:async';
import 'package:fhir_r4_auth/fhir_r4_auth.dart'
    show AuditEventType, AuditLogger, AuditSeverity, TokenStorage, AuditEvent;
import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';
import 'package:uuid/uuid.dart';

/// Session timeout configuration
class SessionConfig {
  const SessionConfig({
    this.idleTimeout = const Duration(minutes: 30),
    this.absoluteTimeout = const Duration(hours: 8),
    this.warningBeforeTimeout = const Duration(minutes: 5),
    this.checkInterval = const Duration(minutes: 1),
  });

  /// Maximum idle time before automatic logout
  final Duration idleTimeout;

  /// Absolute maximum session duration
  final Duration absoluteTimeout;

  /// Time before timeout to warn user
  final Duration warningBeforeTimeout;

  /// How often to check for timeouts
  final Duration checkInterval;

  /// Create a config for high-security environments (healthcare)
  factory SessionConfig.highSecurity() {
    return const SessionConfig(
      idleTimeout: Duration(minutes: 15),
      absoluteTimeout: Duration(hours: 4),
      warningBeforeTimeout: Duration(minutes: 2),
      checkInterval: Duration(seconds: 30),
    );
  }

  /// Create a config for standard security
  factory SessionConfig.standard() {
    return const SessionConfig(
      idleTimeout: Duration(minutes: 30),
      absoluteTimeout: Duration(hours: 8),
      warningBeforeTimeout: Duration(minutes: 5),
      checkInterval: Duration(minutes: 1),
    );
  }

  /// Create a config for low-security (development/testing)
  factory SessionConfig.development() {
    return const SessionConfig(
      idleTimeout: Duration(hours: 24),
      absoluteTimeout: Duration(days: 7),
      warningBeforeTimeout: Duration(minutes: 30),
      checkInterval: Duration(minutes: 5),
    );
  }
}

/// Represents an active user session
class Session {
  Session({
    String? id,
    DateTime? createdAt,
    DateTime? lastActivity,
    required this.userId,
    this.metadata = const <String, dynamic>{},
  })  : id = id ?? const Uuid().v4(),
        createdAt = createdAt ?? DateTime.now(),
        lastActivity = lastActivity ?? DateTime.now();

  /// Unique session identifier
  final String id;

  /// When the session was created
  final DateTime createdAt;

  /// Last activity timestamp
  DateTime lastActivity;

  /// User identifier
  final String userId;

  /// Additional session metadata
  final Map<String, dynamic> metadata;

  /// Update last activity time
  void recordActivity() {
    lastActivity = DateTime.now();
  }

  /// Get session age
  Duration get age => DateTime.now().difference(createdAt);

  /// Get idle time
  Duration get idleTime => DateTime.now().difference(lastActivity);

  /// Check if session is idle
  bool isIdle(Duration timeout) => idleTime > timeout;

  /// Check if session has exceeded absolute timeout
  bool hasExceededAbsoluteTimeout(Duration timeout) => age > timeout;

  /// Convert to JSON
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'createdAt': createdAt.toIso8601String(),
      'lastActivity': lastActivity.toIso8601String(),
      'userId': userId,
      'metadata': metadata,
    };
  }

  /// Create from JSON
  factory Session.fromJson(Map<String, dynamic> json) {
    return Session(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      lastActivity: DateTime.parse(json['lastActivity'] as String),
      userId: json['userId'] as String,
      metadata:
          json['metadata'] as Map<String, dynamic>? ?? <String, dynamic>{},
    );
  }

  @override
  String toString() =>
      'Session($id, user: $userId, age: $age, idle: $idleTime)';
}

/// Session timeout reason
enum TimeoutReason {
  /// Session exceeded idle timeout
  idle,

  /// Session exceeded absolute timeout
  absolute,

  /// Manually terminated
  manual,

  /// Logged out normally
  logout,
}

/// Session manager with automatic timeout
class SessionManager {
  SessionManager({
    required this.config,
    TokenStorage? tokenStorage,
    AuditLogger? auditLogger,
    Logger? logger,
  })  : _tokenStorage = tokenStorage,
        _auditLogger = auditLogger,
        _logger = logger ?? Logger('SessionManager');

  final SessionConfig config;
  final TokenStorage? _tokenStorage;
  final AuditLogger? _auditLogger;
  final Logger _logger;

  /// Current active session
  Session? _currentSession;

  /// Timer for checking timeouts
  Timer? _timeoutTimer;

  /// Stream controller for timeout warnings
  final _warningController = StreamController<Duration>.broadcast();

  /// Stream controller for session timeout events
  final _timeoutController = StreamController<TimeoutReason>.broadcast();

  /// Stream of timeout warnings (time remaining)
  Stream<Duration> get onTimeoutWarning => _warningController.stream;

  /// Stream of timeout events
  Stream<TimeoutReason> get onTimeout => _timeoutController.stream;

  /// Get current session
  Session? get currentSession => _currentSession;

  /// Check if there's an active session
  bool get hasActiveSession => _currentSession != null;

  /// Start a new session
  Future<Session> startSession({
    required String userId,
    Map<String, dynamic>? metadata,
  }) async {
    // End existing session if any
    if (_currentSession != null) {
      await endSession(TimeoutReason.manual);
    }

    _currentSession = Session(
      userId: userId,
      metadata: metadata ?? <String, dynamic>{},
    );

    _logger.info('Session started: ${_currentSession!.id}');

    // Start timeout monitoring
    _startTimeoutMonitoring();

    // Audit log
    await _auditLogger?.logEvent(
      AuditEvent(
        eventType: AuditEventType.sessionStarted,
        severity: AuditSeverity.info,
        message: 'User session started',
        userId: userId,
        sessionId: _currentSession!.id,
        outcome: true,
      ),
    );

    return _currentSession!;
  }

  /// Record user activity
  Future<void> recordActivity() async {
    if (_currentSession == null) {
      _logger.warning('Attempted to record activity without active session');
      return;
    }

    _currentSession!.recordActivity();
    _logger.fine('Activity recorded for session: ${_currentSession!.id}');
  }

  /// End the current session
  Future<void> endSession(TimeoutReason reason) async {
    if (_currentSession == null) {
      _logger.warning('Attempted to end session but no active session');
      return;
    }

    final session = _currentSession!;
    _currentSession = null;

    // Stop timeout monitoring
    _timeoutTimer?.cancel();
    _timeoutTimer = null;

    _logger.info('Session ended: ${session.id}, reason: $reason');

    // Clear tokens
    await _tokenStorage?.clearTokens();

    // Audit log
    await _auditLogger?.logEvent(
      AuditEvent(
        eventType: reason == TimeoutReason.logout
            ? AuditEventType.sessionEnded
            : AuditEventType.sessionTimeout,
        severity: AuditSeverity.info,
        message: 'Session ended: ${reason.name}',
        userId: session.userId,
        sessionId: session.id,
        outcome: true,
        details: <String, dynamic>{
          'reason': reason.name,
          'session_duration': session.age.inSeconds,
          'idle_time': session.idleTime.inSeconds,
        },
      ),
    );

    // Notify listeners
    _timeoutController.add(reason);
  }

  /// Start monitoring for timeouts
  void _startTimeoutMonitoring() {
    _timeoutTimer?.cancel();

    _timeoutTimer = Timer.periodic(config.checkInterval, (_) {
      _checkTimeouts();
    });
  }

  /// Check for session timeouts
  Future<void> _checkTimeouts() async {
    final session = _currentSession;
    if (session == null) return;

    // Check absolute timeout
    if (session.hasExceededAbsoluteTimeout(config.absoluteTimeout)) {
      _logger.warning('Session exceeded absolute timeout: ${session.id}');
      await endSession(TimeoutReason.absolute);
      return;
    }

    // Check idle timeout
    if (session.isIdle(config.idleTimeout)) {
      _logger.warning('Session exceeded idle timeout: ${session.id}');
      await endSession(TimeoutReason.idle);
      return;
    }

    // Check if we should warn about upcoming timeout
    final timeUntilIdleTimeout = config.idleTimeout - session.idleTime;
    if (timeUntilIdleTimeout <= config.warningBeforeTimeout &&
        timeUntilIdleTimeout > Duration.zero) {
      _logger.info(
          'Session timeout warning: ${timeUntilIdleTimeout.inMinutes} minutes remaining');
      _warningController.add(timeUntilIdleTimeout);
    }

    final timeUntilAbsoluteTimeout = config.absoluteTimeout - session.age;
    if (timeUntilAbsoluteTimeout <= config.warningBeforeTimeout &&
        timeUntilAbsoluteTimeout > Duration.zero) {
      _logger.info(
          'Session absolute timeout warning: ${timeUntilAbsoluteTimeout.inMinutes} minutes remaining');
      _warningController.add(timeUntilAbsoluteTimeout);
    }
  }

  /// Extend session (refresh activity)
  Future<void> extendSession() async {
    await recordActivity();
    _logger.fine('Session extended');
  }

  /// Get session information
  Map<String, dynamic>? getSessionInfo() {
    if (_currentSession == null) return null;

    return <String, dynamic>{
      'session': _currentSession!.toJson(),
      'idle_time_seconds': _currentSession!.idleTime.inSeconds,
      'session_age_seconds': _currentSession!.age.inSeconds,
      'time_until_idle_timeout_seconds':
          (config.idleTimeout - _currentSession!.idleTime).inSeconds,
      'time_until_absolute_timeout_seconds':
          (config.absoluteTimeout - _currentSession!.age).inSeconds,
    };
  }

  /// Clean up resources
  void dispose() {
    _timeoutTimer?.cancel();
    _warningController.close();
    _timeoutController.close();
  }

  /// Manually check for timeouts (for testing)
  @visibleForTesting
  Future<void> checkTimeoutsForTesting() async {
    await _checkTimeouts();
  }
}
