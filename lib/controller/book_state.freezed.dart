// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookState {
  bool get fetching => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  List<BookResponse> get books => throw _privateConstructorUsedError;

  /// Create a copy of BookState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookStateCopyWith<BookState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookStateCopyWith<$Res> {
  factory $BookStateCopyWith(BookState value, $Res Function(BookState) then) =
      _$BookStateCopyWithImpl<$Res, BookState>;
  @useResult
  $Res call({bool fetching, String error, List<BookResponse> books});
}

/// @nodoc
class _$BookStateCopyWithImpl<$Res, $Val extends BookState>
    implements $BookStateCopyWith<$Res> {
  _$BookStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetching = null,
    Object? error = null,
    Object? books = null,
  }) {
    return _then(_value.copyWith(
      fetching: null == fetching
          ? _value.fetching
          : fetching // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      books: null == books
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<BookResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookStateImplCopyWith<$Res>
    implements $BookStateCopyWith<$Res> {
  factory _$$BookStateImplCopyWith(
          _$BookStateImpl value, $Res Function(_$BookStateImpl) then) =
      __$$BookStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool fetching, String error, List<BookResponse> books});
}

/// @nodoc
class __$$BookStateImplCopyWithImpl<$Res>
    extends _$BookStateCopyWithImpl<$Res, _$BookStateImpl>
    implements _$$BookStateImplCopyWith<$Res> {
  __$$BookStateImplCopyWithImpl(
      _$BookStateImpl _value, $Res Function(_$BookStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetching = null,
    Object? error = null,
    Object? books = null,
  }) {
    return _then(_$BookStateImpl(
      fetching: null == fetching
          ? _value.fetching
          : fetching // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<BookResponse>,
    ));
  }
}

/// @nodoc

class _$BookStateImpl implements _BookState {
  _$BookStateImpl(
      {required this.fetching,
      required this.error,
      required final List<BookResponse> books})
      : _books = books;

  @override
  final bool fetching;
  @override
  final String error;
  final List<BookResponse> _books;
  @override
  List<BookResponse> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  @override
  String toString() {
    return 'BookState(fetching: $fetching, error: $error, books: $books)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookStateImpl &&
            (identical(other.fetching, fetching) ||
                other.fetching == fetching) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._books, _books));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fetching, error,
      const DeepCollectionEquality().hash(_books));

  /// Create a copy of BookState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookStateImplCopyWith<_$BookStateImpl> get copyWith =>
      __$$BookStateImplCopyWithImpl<_$BookStateImpl>(this, _$identity);
}

abstract class _BookState implements BookState {
  factory _BookState(
      {required final bool fetching,
      required final String error,
      required final List<BookResponse> books}) = _$BookStateImpl;

  @override
  bool get fetching;
  @override
  String get error;
  @override
  List<BookResponse> get books;

  /// Create a copy of BookState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookStateImplCopyWith<_$BookStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
