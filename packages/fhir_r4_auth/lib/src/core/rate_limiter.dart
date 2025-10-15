/// Rate limiting for API requests to prevent abuse
/// Implements token bucket and sliding window algorithms
library;

import 'dart:async';
import 'package:logging/logging.dart';

/// Rate limit exceeded exception
class RateLimitException implements Exception {
  const RateLimitException(this.message, {this.retryAfter});

  final String message;
  final Duration? retryAfter;

  @override
  String toString() => 'RateLimitException: $message';
}

/// Rate limit configuration
class RateLimitConfig {
  const RateLimitConfig({
    required this.maxRequests,
    required this.window,
    this.burstSize,
  });

  /// Maximum number of requests allowed in the window
  final int maxRequests;

  /// Time window for rate limiting
  final Duration window;

  /// Maximum burst size (for token bucket algorithm)
  final int? burstSize;

  /// Create a config for token endpoints (conservative)
  factory RateLimitConfig.tokenEndpoint() {
    return const RateLimitConfig(
      maxRequests: 5,
      window: Duration(minutes: 1),
      burstSize: 2,
    );
  }

  /// Create a config for authentication attempts (very conservative)
  factory RateLimitConfig.authAttempts() {
    return const RateLimitConfig(
      maxRequests: 3,
      window: Duration(minutes: 5),
      burstSize: 1,
    );
  }

  /// Create a config for API requests (permissive)
  factory RateLimitConfig.apiRequests() {
    return const RateLimitConfig(
      maxRequests: 100,
      window: Duration(minutes: 1),
      burstSize: 20,
    );
  }
}

/// Request record for rate limiting
class _RequestRecord {
  _RequestRecord(this.timestamp);

  final DateTime timestamp;
}

/// Rate limiter using sliding window algorithm
class RateLimiter {
  RateLimiter({
    required this.config,
    Logger? logger,
  }) : _logger = logger ?? Logger('RateLimiter');

  final RateLimitConfig config;
  final Logger _logger;

  /// Request history per key (e.g., IP address, user ID)
  final Map<String, List<_RequestRecord>> _requests =
      <String, List<_RequestRecord>>{};

  /// Token buckets for burst control
  final Map<String, int> _tokens = <String, int>{};

  /// Last token refill time
  final Map<String, DateTime> _lastRefill = <String, DateTime>{};

  /// Check if a request is allowed and return retry time if not
  Future<Duration?> checkLimit(String key) async {
    _cleanup();

    final now = DateTime.now();
    final windowStart = now.subtract(config.window);

    // Get or initialize request history
    final history = _requests.putIfAbsent(key, () => <_RequestRecord>[]);

    // Remove expired requests
    history.removeWhere((record) => record.timestamp.isBefore(windowStart));

    // Check sliding window limit
    if (history.length >= config.maxRequests) {
      final oldestRequest = history.first.timestamp;
      final retryAfter = oldestRequest.add(config.window).difference(now);

      _logger.warning(
        'Rate limit exceeded for key: $key (${history.length}/${config.maxRequests})',
      );

      return retryAfter;
    }

    // Check token bucket (if enabled)
    if (config.burstSize != null) {
      if (!_checkTokenBucket(key, now)) {
        _logger.warning('Burst limit exceeded for key: $key');
        // Return a shorter retry time for burst limits
        return Duration(
            seconds: (config.window.inSeconds / config.maxRequests).ceil());
      }
    }

    return null; // Request is allowed
  }

  /// Check if a request is allowed (simple boolean version)
  Future<bool> isAllowed(String key) async {
    final retryAfter = await checkLimit(key);
    return retryAfter == null;
  }

  /// Record a request
  Future<void> recordRequest(String key) async {
    final now = DateTime.now();
    final history = _requests.putIfAbsent(key, () => <_RequestRecord>[]);
    history.add(_RequestRecord(now));

    // Consume token from bucket
    if (config.burstSize != null) {
      final tokens = _tokens[key] ?? config.burstSize!;
      _tokens[key] = tokens - 1;
    }

    _logger.fine('Request recorded for key: $key');
  }

  /// Check and update token bucket
  bool _checkTokenBucket(String key, DateTime now) {
    final burstSize = config.burstSize!;

    // Initialize or refill tokens
    final lastRefill = _lastRefill[key];
    if (lastRefill == null) {
      _tokens[key] = burstSize;
      _lastRefill[key] = now;
      return true;
    }

    // Calculate tokens to add based on time passed
    final elapsed = now.difference(lastRefill);
    final tokensToAdd = (elapsed.inMilliseconds /
            config.window.inMilliseconds *
            config.maxRequests)
        .floor();

    if (tokensToAdd > 0) {
      final currentTokens = _tokens[key] ?? 0;
      _tokens[key] = (currentTokens + tokensToAdd).clamp(0, burstSize);
      _lastRefill[key] = now;
    }

    // Check if we have tokens available
    final tokens = _tokens[key] ?? 0;
    return tokens > 0;
  }

  /// Execute a request with rate limiting
  Future<T> execute<T>(
    String key,
    Future<T> Function() request,
  ) async {
    final retryAfter = await checkLimit(key);

    if (retryAfter != null) {
      throw RateLimitException(
        'Rate limit exceeded. Please try again later.',
        retryAfter: retryAfter,
      );
    }

    await recordRequest(key);

    try {
      return await request();
    } catch (e) {
      // Still counts towards rate limit even if request fails
      rethrow;
    }
  }

  /// Get current request count for a key
  int getRequestCount(String key) {
    final history = _requests[key];
    if (history == null) return 0;

    final windowStart = DateTime.now().subtract(config.window);
    return history.where((r) => r.timestamp.isAfter(windowStart)).length;
  }

  /// Get remaining requests in current window
  int getRemainingRequests(String key) {
    final current = getRequestCount(key);
    return (config.maxRequests - current).clamp(0, config.maxRequests);
  }

  /// Get time until rate limit reset
  Duration? getResetTime(String key) {
    final history = _requests[key];
    if (history == null || history.isEmpty) return null;

    final oldestRequest = history.first.timestamp;
    final resetTime = oldestRequest.add(config.window);
    final now = DateTime.now();

    if (resetTime.isBefore(now)) return null;

    return resetTime.difference(now);
  }

  /// Clean up old data periodically
  void _cleanup() {
    final now = DateTime.now();
    final threshold = now.subtract(config.window * 2);

    // Clean up request history
    _requests.removeWhere((key, history) {
      history.removeWhere((record) => record.timestamp.isBefore(threshold));
      return history.isEmpty;
    });

    // Clean up old token bucket data
    _lastRefill.removeWhere((key, time) => time.isBefore(threshold));
    _tokens.removeWhere((key, _) => !_requests.containsKey(key));
  }

  /// Clear all rate limit data for a key
  void clearKey(String key) {
    _requests.remove(key);
    _tokens.remove(key);
    _lastRefill.remove(key);
    _logger.fine('Cleared rate limit data for key: $key');
  }

  /// Clear all rate limit data
  void clearAll() {
    _requests.clear();
    _tokens.clear();
    _lastRefill.clear();
    _logger.fine('Cleared all rate limit data');
  }

  /// Get statistics for monitoring
  Map<String, dynamic> getStats() {
    return <String, dynamic>{
      'tracked_keys': _requests.length,
      'total_requests': _requests.values.fold<int>(
        0,
        (sum, history) => sum + history.length,
      ),
      'config': <String, dynamic>{
        'max_requests': config.maxRequests,
        'window_seconds': config.window.inSeconds,
        'burst_size': config.burstSize,
      },
    };
  }
}

/// Global rate limiter registry for different endpoints
class RateLimiterRegistry {
  RateLimiterRegistry({Logger? logger})
      : _logger = logger ?? Logger('RateLimiterRegistry');

  final Logger _logger;
  final Map<String, RateLimiter> _limiters = <String, RateLimiter>{};

  /// Get or create a rate limiter for an endpoint
  RateLimiter getOrCreate(String endpoint, RateLimitConfig config) {
    return _limiters.putIfAbsent(
      endpoint,
      () {
        _logger.fine('Created rate limiter for endpoint: $endpoint');
        return RateLimiter(config: config, logger: _logger);
      },
    );
  }

  /// Get a rate limiter if it exists
  RateLimiter? get(String endpoint) => _limiters[endpoint];

  /// Remove a rate limiter
  void remove(String endpoint) {
    _limiters.remove(endpoint);
    _logger.fine('Removed rate limiter for endpoint: $endpoint');
  }

  /// Clear all rate limiters
  void clearAll() {
    _limiters.clear();
    _logger.fine('Cleared all rate limiters');
  }

  /// Get all statistics
  Map<String, dynamic> getAllStats() {
    return <String, dynamic>{
      'endpoints': _limiters.length,
      'limiters': _limiters.map(
        (endpoint, limiter) => MapEntry(endpoint, limiter.getStats()),
      ),
    };
  }
}
