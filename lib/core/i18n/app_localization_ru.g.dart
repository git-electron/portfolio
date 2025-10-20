///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'app_localization.g.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';

// Path: <root>
class TranslationsRu extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsRu({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ru,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <ru>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsRu _root = this; // ignore: unused_field

	@override 
	TranslationsRu $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsRu(meta: meta ?? this.$meta);

	// Translations
	@override late final TranslationsHomeRu home = TranslationsHomeRu._(_root);
	@override String get title => 'Егор Мядзюта';
}

// Path: home
class TranslationsHomeRu extends TranslationsHomeEn {
	TranslationsHomeRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final TranslationsHomeHeaderRu header = TranslationsHomeHeaderRu._(_root);
}

// Path: home.header
class TranslationsHomeHeaderRu extends TranslationsHomeHeaderEn {
	TranslationsHomeHeaderRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get introduction => 'Привет 👋, я Flutter разработчик';
	@override late final TranslationsHomeHeaderNameRu name = TranslationsHomeHeaderNameRu._(_root);
	@override String get description => 'Я создаю быстрые, масштабируемые и удобные для пользователя кроссплатформенные мобильные приложения на фреймворке Flutter. Моими главными приоритетами являются чистая архитектура с налучшими принципами, высокая производительность и интуитивно понятная вёрстка. Работа со мной — это гарантированный результат, вне зависимости от сложности проекта.';
	@override String get contact_button => 'Связаться со мной';
}

// Path: home.header.name
class TranslationsHomeHeaderNameRu extends TranslationsHomeHeaderNameEn {
	TranslationsHomeHeaderNameRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get desktop => 'ЕГОР МЯДЗЮТА';
	@override String get mobile => 'ЕГОР\nМЯДЗЮТА';
}
