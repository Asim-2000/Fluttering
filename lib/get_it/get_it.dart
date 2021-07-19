import 'package:get_it/get_it.dart';

import 'package:FirstProject/services/dynamic-link-service.dart';

void setUpGetIt() {
  GetIt.I.registerSingleton<DynamicLinksApi>(DynamicLinksApi());
}
