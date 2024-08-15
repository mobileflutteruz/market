import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart'; // generated file

final locator = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // Set this to false if you want to use a function instead of an extension
)
Future<void> configureDependencies() => $initGetIt(locator);
