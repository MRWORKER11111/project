// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:project/application/downloads/downloads_bloc.dart' as _i450;
import 'package:project/application/fastlaugh/fast_laugh_bloc.dart' as _i25;
import 'package:project/application/home/home_bloc.dart' as _i462;
import 'package:project/application/hotandnew/hotandnew_bloc.dart' as _i907;
import 'package:project/application/search/search_bloc.dart' as _i193;
import 'package:project/domain/downloads/i_downloads_repo.dart' as _i1066;
import 'package:project/domain/hotandnew/hotandnewservice.dart' as _i317;
import 'package:project/domain/search/searchservice.dart' as _i1023;
import 'package:project/infrastructure/downloads/downloads_repository.dart'
    as _i381;
import 'package:project/infrastructure/hotandNew/hot_and_new_impl.dart'
    as _i940;
import 'package:project/infrastructure/search/search_implentation.dart'
    as _i391;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt init(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i317.Hotandnewservice>(
      () => _i940.HotandNewImplementation());
  gh.lazySingleton<_i1023.SearchService>(() => _i391.SearchImplentation());
  gh.lazySingleton<_i1066.IDownloadsRepo>(() => _i381.DownloadsRepository());
  gh.factory<_i450.DownloadsBloc>(
      () => _i450.DownloadsBloc(gh<_i1066.IDownloadsRepo>()));
  gh.factory<_i907.HotandnewBloc>(
      () => _i907.HotandnewBloc(gh<_i317.Hotandnewservice>()));
  gh.factory<_i193.SearchBloc>(() => _i193.SearchBloc(
        gh<_i1023.SearchService>(),
        gh<_i1066.IDownloadsRepo>(),
      ));
  gh.factory<_i25.FastLaughBloc>(
      () => _i25.FastLaughBloc(gh<_i1066.IDownloadsRepo>()));
  gh.factory<_i462.HomeBloc>(
      () => _i462.HomeBloc(gh<_i317.Hotandnewservice>()));
  return getIt;
}
