import 'package:logger/logger.dart';

class LoggingService {
  late final Logger _logger;

  // Private constructor for singleton pattern
  LoggingService._internal() {
    _logger = Logger(
      printer: PrettyPrinter(
        methodCount: 2, // Number of method calls to be displayed
        errorMethodCount: 8, // Number of method calls if stacktrace is provided
        lineLength: 120, // Width of the output
        colors: true, // Colorful log messages
        printEmojis: true, // Print an emoji for each log message
        printTime: true, // Should each log print contain a timestamp
      ),
    );
  }

  // Singleton instance
  static final LoggingService _instance = LoggingService._internal();

  // Factory constructor to return the singleton instance
  factory LoggingService() => _instance;

  // Log debug messages
  void logDebug(String message, {dynamic error, StackTrace? stackTrace}) {
    _logger.d(message, error: error, stackTrace: stackTrace);
  }

  // Log info messages
  void logInfo(String message, {dynamic error, StackTrace? stackTrace}) {
    _logger.i(message, error: error, stackTrace: stackTrace);
  }

  // Log warning messages
  void logWarning(String message, {dynamic error, StackTrace? stackTrace}) {
    _logger.w(message, error: error, stackTrace: stackTrace);
  }

  // Log error messages
  void logError(String message, {dynamic error, StackTrace? stackTrace}) {
    _logger.e(message, error: error, stackTrace: stackTrace);
  }

  // Log verbose messages
  void logVerbose(String message, {dynamic error, StackTrace? stackTrace}) {
    _logger.v(message, error: error, stackTrace: stackTrace);
  }
}
