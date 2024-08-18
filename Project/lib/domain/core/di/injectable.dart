import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:project/domain/core/di/injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit(asExtension:false)
Future<void> configureInjection() async {
  await init(getIt, environment: Environment.prod);
}
