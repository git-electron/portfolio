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
	late final TranslationsHomeCareerEn career = TranslationsHomeCareerEn.internal(_root);
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

// Path: home.career
class TranslationsHomeCareerEn {
	TranslationsHomeCareerEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'My career'
	String get title => 'My career';

	late final TranslationsHomeCareerOctaEn octa = TranslationsHomeCareerOctaEn.internal(_root);
	late final TranslationsHomeCareerProductDetailingEn product_detailing = TranslationsHomeCareerProductDetailingEn.internal(_root);
	late final TranslationsHomeCareerDnaTeamEn dna_team = TranslationsHomeCareerDnaTeamEn.internal(_root);
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

// Path: home.career.octa
class TranslationsHomeCareerOctaEn {
	TranslationsHomeCareerOctaEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'OctaFX is an international online broker founded in 2011. The company provides trading services on the financial markets: Forex, CFD, metals, cryptocurrencies and commodities. The main product is aimed at private traders, offering them access to modern trading platforms, analytics and educational materials. My area of responsibility in the company is the Full—stack development of a training product: a mobile trading training application with courses, tests and webinars (100,000+ installations, 10,000+ MAU)'
	String get description => 'OctaFX is an international online broker founded in 2011. The company provides trading services on the financial markets: Forex, CFD, metals, cryptocurrencies and commodities. The main product is aimed at private traders, offering them access to modern trading platforms, analytics and educational materials.\n\nMy area of responsibility in the company is the Full—stack development of a training product: a mobile trading training application with courses, tests and webinars (100,000+ installations, 10,000+ MAU)';
}

// Path: home.career.product_detailing
class TranslationsHomeCareerProductDetailingEn {
	TranslationsHomeCareerProductDetailingEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Product Detailing is a web development studio specializing in the creation and scaling of digital products of any complexity. The company is engaged in market and user research, strategy development, UX/UI design, development team management, and product process implementation. The product is iRealt— an online platform for realtors and real estate agencies that provides access to a database of properties directly from developers. The product specializes in simplifying real estate transactions by providing accelerated commission payments and the ability to work with exclusive offers on the market.'
	String get description => 'Product Detailing is a web development studio specializing in the creation and scaling of digital products of any complexity. The company is engaged in market and user research, strategy development, UX/UI design, development team management, and product process implementation.\n\nThe product is iRealt— an online platform for realtors and real estate agencies that provides access to a database of properties directly from developers. The product specializes in simplifying real estate transactions by providing accelerated commission payments and the ability to work with exclusive offers on the market.';
}

// Path: home.career.dna_team
class TranslationsHomeCareerDnaTeamEn {
	TranslationsHomeCareerDnaTeamEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'DNA Team is a digital product development studio that creates turnkey web services and mobile applications with a focus on non—standard solutions and high speed of implementation. The company stands out for its integration of complex corporate systems and personalized approach to each project for large clients. As part of the collaboration, I participated in the development of a mobile application for a medical clinic in Dubai. Seline Clinic Dubai allows you to register for procedures, view your visit history, manage your personal data, and participate in a loyalty program with accumulated points.'
	String get description => 'DNA Team is a digital product development studio that creates turnkey web services and mobile applications with a focus on non—standard solutions and high speed of implementation. The company stands out for its integration of complex corporate systems and personalized approach to each project for large clients.\n\nAs part of the collaboration, I participated in the development of a mobile application for a medical clinic in Dubai. Seline Clinic Dubai allows you to register for procedures, view your visit history, manage your personal data, and participate in a loyalty program with accumulated points.';
}
