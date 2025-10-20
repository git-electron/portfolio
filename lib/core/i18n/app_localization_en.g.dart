///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'app_localization.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  );

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final TranslationsHomeEn home = TranslationsHomeEn.internal(_root);

	/// en: 'Egor Myadzuta'
	String get title => 'Egor Myadzuta';
}

// Path: home
class TranslationsHomeEn {
	TranslationsHomeEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsHomeHeaderEn header = TranslationsHomeHeaderEn.internal(_root);
	late final TranslationsHomeAppBarEn app_bar = TranslationsHomeAppBarEn.internal(_root);
}

// Path: home.header
class TranslationsHomeHeaderEn {
	TranslationsHomeHeaderEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Hey 👋, I'm a Flutter developer'
	String get introduction => 'Hey 👋, I\'m a Flutter developer';

	late final TranslationsHomeHeaderNameEn name = TranslationsHomeHeaderNameEn.internal(_root);

	/// en: 'I build fast, scalable and user-friendly cross-platform mobile applications using Flutter framework. My main priorities are clean architecture with best principles, smooth performance and native-looking layout. Working with me is a guaranteed result, regardless of the complexity of the project.'
	String get description => 'I build fast, scalable and user-friendly cross-platform mobile applications using Flutter framework. My main priorities are clean architecture with best principles, smooth performance and native-looking layout. Working with me is a guaranteed result, regardless of the complexity of the project.';

	/// en: 'Contact me'
	String get contact_button => 'Contact me';
}

// Path: home.app_bar
class TranslationsHomeAppBarEn {
	TranslationsHomeAppBarEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Home'
	String get home => 'Home';

	/// en: 'Career'
	String get career => 'Career';

	/// en: 'Portfolio'
	String get portfolio => 'Portfolio';

	/// en: 'Contacts'
	String get contacts => 'Contacts';
}

// Path: home.header.name
class TranslationsHomeHeaderNameEn {
	TranslationsHomeHeaderNameEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'EGOR MYADZUTA'
	String get desktop => 'EGOR MYADZUTA';

	/// en: 'EGOR MYADZUTA'
	String get mobile => 'EGOR\nMYADZUTA';
}
