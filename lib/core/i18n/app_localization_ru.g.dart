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
	@override late final TranslationsHomeAppBarRu app_bar = TranslationsHomeAppBarRu._(_root);
	@override late final TranslationsHomeCareerRu career = TranslationsHomeCareerRu._(_root);
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

// Path: home.app_bar
class TranslationsHomeAppBarRu extends TranslationsHomeAppBarEn {
	TranslationsHomeAppBarRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get home => 'Главная';
	@override String get career => 'Карьера';
	@override String get portfolio => 'Портфолио';
	@override String get contacts => 'Контакты';
}

// Path: home.career
class TranslationsHomeCareerRu extends TranslationsHomeCareerEn {
	TranslationsHomeCareerRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Моя карьера';
	@override late final TranslationsHomeCareerOctaRu octa = TranslationsHomeCareerOctaRu._(_root);
	@override late final TranslationsHomeCareerProductDetailingRu product_detailing = TranslationsHomeCareerProductDetailingRu._(_root);
	@override late final TranslationsHomeCareerDnaTeamRu dna_team = TranslationsHomeCareerDnaTeamRu._(_root);
}

// Path: home.header.name
class TranslationsHomeHeaderNameRu extends TranslationsHomeHeaderNameEn {
	TranslationsHomeHeaderNameRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get desktop => 'ЕГОР МЯДЗЮТА';
	@override String get mobile => 'ЕГОР\nМЯДЗЮТА';
}

// Path: home.career.octa
class TranslationsHomeCareerOctaRu extends TranslationsHomeCareerOctaEn {
	TranslationsHomeCareerOctaRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get description => 'OctaFX — международный онлайн-брокер, основанный в 2011 году. Компания предоставляет услуги по торговле на финансовых рынках: Forex, CFD, металлы, криптовалюты и товары. Основной продукт ориентируется на частных трейдеров, предлагая им доступ к современным торговым платформам, аналитике и образовательным материалам.\n\nМоя зона ответственности в компании — Full-stack разработка обучающего продукта: мобильного приложения для обучения трейдингу с курсами, тестами и вебинарами (100 000+ установок, 10 000+ MAU)';
}

// Path: home.career.product_detailing
class TranslationsHomeCareerProductDetailingRu extends TranslationsHomeCareerProductDetailingEn {
	TranslationsHomeCareerProductDetailingRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get description => 'Product Detailing — студия веб-разработки, специализирующаяся на создании и масштабировании цифровых продуктов любой сложности. Компания занимается исследованием рынка и пользователей, разработкой стратегий, проектированием UX/UI, управлением командами разработки и внедрением продуктовых процессов.\n\nПродукт — iRealt — онлайн-платформа для риелторов и агентств недвижимости, предоставляющая доступ к базе объектов напрямую от застройщиков. Продукт специализируется на упрощении сделок с недвижимостью, предоставляя ускоренные выплаты комиссий и возможность работы с эксклюзивными предложениями на рынке.';
}

// Path: home.career.dna_team
class TranslationsHomeCareerDnaTeamRu extends TranslationsHomeCareerDnaTeamEn {
	TranslationsHomeCareerDnaTeamRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get description => 'DNA Team — студия разработки цифровых продуктов, создающая веб-сервисы и мобильные приложения под ключ с упором на нестандартные решения и высокую скорость реализации. Компания выделяется интеграцией сложных корпоративных систем и персонализированным подходом к каждому проекту для крупных клиентов.\n\nВ рамках сотрудничества я принимал участие в разработке мобильного приложения для медицинской клиники в Дубае. Seline Clinic Dubai позволяет записываться на процедуры, просматривать историю посещений, управлять личными данными и участвовать в программе лояльности с накоплением баллов.';
}
