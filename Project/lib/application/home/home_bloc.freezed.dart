// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeScreenData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHomeScreenData value) getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetHomeScreenData value)? getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHomeScreenData value)? getHomeScreenData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetHomeScreenDataImplCopyWith<$Res> {
  factory _$$GetHomeScreenDataImplCopyWith(_$GetHomeScreenDataImpl value,
          $Res Function(_$GetHomeScreenDataImpl) then) =
      __$$GetHomeScreenDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetHomeScreenDataImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetHomeScreenDataImpl>
    implements _$$GetHomeScreenDataImplCopyWith<$Res> {
  __$$GetHomeScreenDataImplCopyWithImpl(_$GetHomeScreenDataImpl _value,
      $Res Function(_$GetHomeScreenDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetHomeScreenDataImpl implements GetHomeScreenData {
  const _$GetHomeScreenDataImpl();

  @override
  String toString() {
    return 'HomeEvent.getHomeScreenData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetHomeScreenDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeScreenData,
  }) {
    return getHomeScreenData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeScreenData,
  }) {
    return getHomeScreenData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeScreenData,
    required TResult orElse(),
  }) {
    if (getHomeScreenData != null) {
      return getHomeScreenData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHomeScreenData value) getHomeScreenData,
  }) {
    return getHomeScreenData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetHomeScreenData value)? getHomeScreenData,
  }) {
    return getHomeScreenData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHomeScreenData value)? getHomeScreenData,
    required TResult orElse(),
  }) {
    if (getHomeScreenData != null) {
      return getHomeScreenData(this);
    }
    return orElse();
  }
}

abstract class GetHomeScreenData implements HomeEvent {
  const factory GetHomeScreenData() = _$GetHomeScreenDataImpl;
}

/// @nodoc
mixin _$HomeState {
  String get stateId => throw _privateConstructorUsedError;
  List<HotandNewData> get pastyearmovielist =>
      throw _privateConstructorUsedError;
  List<HotandNewData> get trendingmovielist =>
      throw _privateConstructorUsedError;
  List<HotandNewData> get tensedramasmovielist =>
      throw _privateConstructorUsedError;
  List<HotandNewData> get southIndianmovielist =>
      throw _privateConstructorUsedError;
  List<HotandNewData> get trendingTVlist => throw _privateConstructorUsedError;
  bool get isloading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {String stateId,
      List<HotandNewData> pastyearmovielist,
      List<HotandNewData> trendingmovielist,
      List<HotandNewData> tensedramasmovielist,
      List<HotandNewData> southIndianmovielist,
      List<HotandNewData> trendingTVlist,
      bool isloading,
      bool isError});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateId = null,
    Object? pastyearmovielist = null,
    Object? trendingmovielist = null,
    Object? tensedramasmovielist = null,
    Object? southIndianmovielist = null,
    Object? trendingTVlist = null,
    Object? isloading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      stateId: null == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      pastyearmovielist: null == pastyearmovielist
          ? _value.pastyearmovielist
          : pastyearmovielist // ignore: cast_nullable_to_non_nullable
              as List<HotandNewData>,
      trendingmovielist: null == trendingmovielist
          ? _value.trendingmovielist
          : trendingmovielist // ignore: cast_nullable_to_non_nullable
              as List<HotandNewData>,
      tensedramasmovielist: null == tensedramasmovielist
          ? _value.tensedramasmovielist
          : tensedramasmovielist // ignore: cast_nullable_to_non_nullable
              as List<HotandNewData>,
      southIndianmovielist: null == southIndianmovielist
          ? _value.southIndianmovielist
          : southIndianmovielist // ignore: cast_nullable_to_non_nullable
              as List<HotandNewData>,
      trendingTVlist: null == trendingTVlist
          ? _value.trendingTVlist
          : trendingTVlist // ignore: cast_nullable_to_non_nullable
              as List<HotandNewData>,
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String stateId,
      List<HotandNewData> pastyearmovielist,
      List<HotandNewData> trendingmovielist,
      List<HotandNewData> tensedramasmovielist,
      List<HotandNewData> southIndianmovielist,
      List<HotandNewData> trendingTVlist,
      bool isloading,
      bool isError});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateId = null,
    Object? pastyearmovielist = null,
    Object? trendingmovielist = null,
    Object? tensedramasmovielist = null,
    Object? southIndianmovielist = null,
    Object? trendingTVlist = null,
    Object? isloading = null,
    Object? isError = null,
  }) {
    return _then(_$InitialImpl(
      stateId: null == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      pastyearmovielist: null == pastyearmovielist
          ? _value._pastyearmovielist
          : pastyearmovielist // ignore: cast_nullable_to_non_nullable
              as List<HotandNewData>,
      trendingmovielist: null == trendingmovielist
          ? _value._trendingmovielist
          : trendingmovielist // ignore: cast_nullable_to_non_nullable
              as List<HotandNewData>,
      tensedramasmovielist: null == tensedramasmovielist
          ? _value._tensedramasmovielist
          : tensedramasmovielist // ignore: cast_nullable_to_non_nullable
              as List<HotandNewData>,
      southIndianmovielist: null == southIndianmovielist
          ? _value._southIndianmovielist
          : southIndianmovielist // ignore: cast_nullable_to_non_nullable
              as List<HotandNewData>,
      trendingTVlist: null == trendingTVlist
          ? _value._trendingTVlist
          : trendingTVlist // ignore: cast_nullable_to_non_nullable
              as List<HotandNewData>,
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.stateId,
      required final List<HotandNewData> pastyearmovielist,
      required final List<HotandNewData> trendingmovielist,
      required final List<HotandNewData> tensedramasmovielist,
      required final List<HotandNewData> southIndianmovielist,
      required final List<HotandNewData> trendingTVlist,
      required this.isloading,
      required this.isError})
      : _pastyearmovielist = pastyearmovielist,
        _trendingmovielist = trendingmovielist,
        _tensedramasmovielist = tensedramasmovielist,
        _southIndianmovielist = southIndianmovielist,
        _trendingTVlist = trendingTVlist;

  @override
  final String stateId;
  final List<HotandNewData> _pastyearmovielist;
  @override
  List<HotandNewData> get pastyearmovielist {
    if (_pastyearmovielist is EqualUnmodifiableListView)
      return _pastyearmovielist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pastyearmovielist);
  }

  final List<HotandNewData> _trendingmovielist;
  @override
  List<HotandNewData> get trendingmovielist {
    if (_trendingmovielist is EqualUnmodifiableListView)
      return _trendingmovielist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendingmovielist);
  }

  final List<HotandNewData> _tensedramasmovielist;
  @override
  List<HotandNewData> get tensedramasmovielist {
    if (_tensedramasmovielist is EqualUnmodifiableListView)
      return _tensedramasmovielist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tensedramasmovielist);
  }

  final List<HotandNewData> _southIndianmovielist;
  @override
  List<HotandNewData> get southIndianmovielist {
    if (_southIndianmovielist is EqualUnmodifiableListView)
      return _southIndianmovielist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_southIndianmovielist);
  }

  final List<HotandNewData> _trendingTVlist;
  @override
  List<HotandNewData> get trendingTVlist {
    if (_trendingTVlist is EqualUnmodifiableListView) return _trendingTVlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendingTVlist);
  }

  @override
  final bool isloading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'HomeState(stateId: $stateId, pastyearmovielist: $pastyearmovielist, trendingmovielist: $trendingmovielist, tensedramasmovielist: $tensedramasmovielist, southIndianmovielist: $southIndianmovielist, trendingTVlist: $trendingTVlist, isloading: $isloading, isError: $isError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.stateId, stateId) || other.stateId == stateId) &&
            const DeepCollectionEquality()
                .equals(other._pastyearmovielist, _pastyearmovielist) &&
            const DeepCollectionEquality()
                .equals(other._trendingmovielist, _trendingmovielist) &&
            const DeepCollectionEquality()
                .equals(other._tensedramasmovielist, _tensedramasmovielist) &&
            const DeepCollectionEquality()
                .equals(other._southIndianmovielist, _southIndianmovielist) &&
            const DeepCollectionEquality()
                .equals(other._trendingTVlist, _trendingTVlist) &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      stateId,
      const DeepCollectionEquality().hash(_pastyearmovielist),
      const DeepCollectionEquality().hash(_trendingmovielist),
      const DeepCollectionEquality().hash(_tensedramasmovielist),
      const DeepCollectionEquality().hash(_southIndianmovielist),
      const DeepCollectionEquality().hash(_trendingTVlist),
      isloading,
      isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {required final String stateId,
      required final List<HotandNewData> pastyearmovielist,
      required final List<HotandNewData> trendingmovielist,
      required final List<HotandNewData> tensedramasmovielist,
      required final List<HotandNewData> southIndianmovielist,
      required final List<HotandNewData> trendingTVlist,
      required final bool isloading,
      required final bool isError}) = _$InitialImpl;

  @override
  String get stateId;
  @override
  List<HotandNewData> get pastyearmovielist;
  @override
  List<HotandNewData> get trendingmovielist;
  @override
  List<HotandNewData> get tensedramasmovielist;
  @override
  List<HotandNewData> get southIndianmovielist;
  @override
  List<HotandNewData> get trendingTVlist;
  @override
  bool get isloading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
