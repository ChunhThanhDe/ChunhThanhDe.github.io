/// Generated file. Do not edit.
///
/// Original: i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 434 (217 per locale)
///
/// Built on 2024-02-05 at 08:47 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.vi;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.vi) // set locale
/// - Locale locale = AppLocale.vi.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.vi) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	vi(languageCode: 'vi', build: Translations.build),
	en(languageCode: 'en', build: _TranslationsEn.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of texts).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = texts.someKey.anotherKey;
/// String b = texts['someKey.anotherKey']; // Only for edge cases!
Translations get texts => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final texts = Translations.of(context); // Get texts variable.
/// String a = texts.someKey.anotherKey; // Use texts variable.
/// String b = texts['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.texts.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get texts => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final texts = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.vi,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <vi>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	late final _TranslationsExperienceVi experience = _TranslationsExperienceVi._(_root);
	late final _TranslationsTabsVi tabs = _TranslationsTabsVi._(_root);
	late final _TranslationsAboutVi about = _TranslationsAboutVi._(_root);
	late final _TranslationsGeneralVi general = _TranslationsGeneralVi._(_root);
	late final _TranslationsProjectVi project = _TranslationsProjectVi._(_root);
	late final _TranslationsSkillsVi skills = _TranslationsSkillsVi._(_root);
}

// Path: experience
class _TranslationsExperienceVi {
	_TranslationsExperienceVi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	List<dynamic> get experiences => [
		_TranslationsExperience$experiences$0i0$Vi._(_root),
		_TranslationsExperience$experiences$0i1$Vi._(_root),
		_TranslationsExperience$experiences$0i2$Vi._(_root),
	];
}

// Path: tabs
class _TranslationsTabsVi {
	_TranslationsTabsVi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	List<String> get tabs => [
		'Home',
		'About',
		'Skills',
		'Experience',
		'Projects',
		'Contact',
		'Download CV',
	];
}

// Path: about
class _TranslationsAboutVi {
	_TranslationsAboutVi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => 'Chung Nguyen Thanh';
	String get aboutMe => 'As a software engineer and UI/UX designer with extensive experience in Flutter, Dart, Firebase, and design, I am passionate about developing innovative and engaging digital experiences that meet the needs of users.\n\nWith a strong foundation in software engineering and design principles, I am adept at crafting high-quality code and intuitive user interfaces. I have experience in designing and developing user-friendly, cross-platform mobile applications using Flutter and Dart.\n\nAs a skilled designer, I can create engaging visuals, intuitive layouts, and an exceptional user experience. I have experience in user research, wireframing, prototyping, and designing user interfaces for mobile apps and web-based applications.\n\nI am highly proficient in Firebase, including Firestore, Realtime Database, and Firebase Cloud Messaging. I have used these technologies to build real-time collaborative applications, messaging systems, and cloud-based applications.\n\nThroughout my career, I have demonstrated strong collaboration skills, working closely with product managers, designers, and other developers to ensure that projects are delivered on time and to a high standard.\n\nIn summary, I am a highly skilled software engineer and UI/UX designer with expertise in Flutter, Dart, Firebase, and design. I am passionate about building innovative and engaging digital experiences that meet the needs of users and strive to deliver high-quality code and intuitive user interfaces for all projects.';
	List<dynamic> get aboutCard => [
		_TranslationsAbout$aboutCard$0i0$Vi._(_root),
		_TranslationsAbout$aboutCard$0i1$Vi._(_root),
		_TranslationsAbout$aboutCard$0i2$Vi._(_root),
		_TranslationsAbout$aboutCard$0i3$Vi._(_root),
	];
}

// Path: general
class _TranslationsGeneralVi {
	_TranslationsGeneralVi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title_introduction_about_section => 'Introduction';
	String get name_about_section => 'Chung Nguyen Thanh';
	String get title_about_section => 'About';
	String get title_contact_section => 'Contact';
	String get title_contact_me_section => 'Contact Me';
	String get get_in_touch_contact_section => 'Get in touch';
	String get feel_free_contact_section => 'Feel free to get in touch';
	String get hint_your_name_contact_section => 'Your name';
	String get hint_your_email_contact_section => 'Your email';
	String get hint_message_contact_section => 'Type your message';
	String get btn_send_contact_section => 'Send';
	String get title_experience_section => 'Work Experience';
	String get title_project_section => 'Projects';
	String get title_personal_projects_project_section => 'Personal Projects';
	String get title_client_projects_project_section => 'Work/Client Projects';
	String get m_title_personal_projects_project_section => 'Personal';
	String get m_title_client_projects_project_section => 'Work/Client';
	String get title_all_projects_project_section => 'All Projects';
	String get title_skill_section => 'Skills';
	String get hi_about_section => 'Hi there! I\'m ';
	String get introduce_home_section1 => 'I am a Software Development Engineer for Consumer Product Line (Phone, Set-top Box,...) and a Flutter Developer.';
	String get introduce_home_section2 => 'I build system applications for AOSP, ATV in the Consumer Product Line and build websites and interactive software applications that run on multiple platforms and devices.';
	String get browse_projects_home_section => 'Browse Projects';
	String get required_input_field => 'This field is required';
}

// Path: project
class _TranslationsProjectVi {
	_TranslationsProjectVi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	List<dynamic> get projects => [
		_TranslationsProject$projects$0i0$Vi._(_root),
		_TranslationsProject$projects$0i1$Vi._(_root),
		_TranslationsProject$projects$0i2$Vi._(_root),
		_TranslationsProject$projects$0i3$Vi._(_root),
		_TranslationsProject$projects$0i4$Vi._(_root),
	];
}

// Path: skills
class _TranslationsSkillsVi {
	_TranslationsSkillsVi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	List<dynamic> get skills => [
		_TranslationsSkills$skills$0i0$Vi._(_root),
		_TranslationsSkills$skills$0i1$Vi._(_root),
		_TranslationsSkills$skills$0i2$Vi._(_root),
		_TranslationsSkills$skills$0i3$Vi._(_root),
		_TranslationsSkills$skills$0i4$Vi._(_root),
		_TranslationsSkills$skills$0i5$Vi._(_root),
		_TranslationsSkills$skills$0i6$Vi._(_root),
		_TranslationsSkills$skills$0i7$Vi._(_root),
		_TranslationsSkills$skills$0i8$Vi._(_root),
		_TranslationsSkills$skills$0i9$Vi._(_root),
		_TranslationsSkills$skills$0i10$Vi._(_root),
		_TranslationsSkills$skills$0i11$Vi._(_root),
		_TranslationsSkills$skills$0i12$Vi._(_root),
	];
}

// Path: experience.experiences.0
class _TranslationsExperience$experiences$0i0$Vi {
	_TranslationsExperience$experiences$0i0$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get company => 'Omnis Corporation';
	String get country => 'Zambia';
	String get created_at => '2022-12-31T14:23:43.877077';
	String get emp_type => 'Part - Time';
	String get end_date => '2022-03-07T00:00:00.000';
	String get is_hidden => 'false';
	String get position => 'UI / UX Designer & Flutter Developer';
	String get start_date => '2021-01-05T00:00:00.000';
	String get state => 'Lusaka';
	String get work_done => 'Designed clean & Simple yet thoughtful UI/UX design patterns for both mobile and web apps.#Built both mobile and web applications with interactive & responsive layouts.#API integrations throughout a software to keep data in sync and enhance productivity.';
	String get works_here => 'false';
}

// Path: experience.experiences.1
class _TranslationsExperience$experiences$0i1$Vi {
	_TranslationsExperience$experiences$0i1$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get company => 'Lassod Consulting Limited';
	String get country => 'UK';
	String get created_at => '2022-12-31T14:28:07.703644';
	String get emp_type => 'Full - Time';
	String get is_hidden => 'false';
	String get position => 'Software Engineer (Remote)';
	String get site_url => 'lassod.com';
	String get start_date => '2022-03-07T00:00:00.000';
	String get state => 'England';
	String get work_done => 'Write modern, performant, maintainable code for a diverse array of client and internal projects with Flutter & Dart.#Communicate with multi-disciplinary teams of engineers, designers and clients on a daily basis.#Work with a variety of different languages, platforms, frameworks, and content management systems such as Dart, Flutter, Github, Gitlab, Jira and Time Management.';
	String get works_here => 'true';
}

// Path: experience.experiences.2
class _TranslationsExperience$experiences$0i2$Vi {
	_TranslationsExperience$experiences$0i2$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get company => 'Pynch Technology';
	String get country => 'Zambia';
	String get created_at => '2023-01-01T14:51:02.923189';
	String get emp_type => 'Part - Time';
	String get is_hidden => 'false';
	String get position => 'Mobile Developer (Remote)';
	String get site_url => 'pynch.co.zm';
	String get start_date => '2022-11-07T00:00:00.000';
	String get state => 'Lusaka';
	String get work_done => 'Designing, developing, testing and implementing mobile applications using the Flutter framework.#Working closely with the backend engineer and UI/UX designer to ensure proper integration in mobile applications.';
	String get works_here => 'true';
}

// Path: about.aboutCard.0
class _TranslationsAbout$aboutCard$0i0$Vi {
	_TranslationsAbout$aboutCard$0i0$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get content => 'I value simple, clean design patterns, and thoughtful interactions.';
	String get iconPath => 'assets/vector.png';
	String get title => 'UI/UX Design';
}

// Path: about.aboutCard.1
class _TranslationsAbout$aboutCard$0i1$Vi {
	_TranslationsAbout$aboutCard$0i1$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get content => 'Using Flutter & Dart, I build fast, interactive apps & websites.';
	String get iconPath => 'assets/programming-code-signs.png';
	String get title => 'Front-End Development';
}

// Path: about.aboutCard.2
class _TranslationsAbout$aboutCard$0i2$Vi {
	_TranslationsAbout$aboutCard$0i2$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get content => 'API integrations throughout a software to keep data in sync and enhance productivity.';
	String get iconPath => 'assets/api.png';
	String get title => 'API Integration';
}

// Path: about.aboutCard.3
class _TranslationsAbout$aboutCard$0i3$Vi {
	_TranslationsAbout$aboutCard$0i3$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get content => 'I enjoy bringing ideas to life on the phone or in the browser.';
	String get iconPath => 'assets/web-development.png';
	String get title => 'Mobile/Web Development';
}

// Path: project.projects.0
class _TranslationsProject$projects$0i0$Vi {
	_TranslationsProject$projects$0i0$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get cover_img => 'https://i.ibb.co/3Fv9QRt/port.png';
	String get created_at => '2023-01-28T23:08:58.657311';
	String get description => 'Personal Portfolio Site showcases some of the projects I\'ve built so far.';
	String get external_link => 'https://ericknamukolo.com';
	String get github_link => 'https://github.com/ericknamukolo/ericknamukolo.github.io';
	List<String> get images => [
		'https://i.ibb.co/3Fv9QRt/port.png',
		'https://i.ibb.co/7bFG4jV/about.png',
	];
	String get is_personal => 'true';
	String get name => 'Portfolio';
	String get playstore_link => '';
	List<String> get tech => [
		'Flutter',
		'Dart',
		'Firebase',
	];
	String get type => 'Web/Windows';
}

// Path: project.projects.1
class _TranslationsProject$projects$0i1$Vi {
	_TranslationsProject$projects$0i1$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get cover_img => 'https://i.ibb.co/phdq570/Chill-Poster.png';
	String get created_at => '2023-07-23T10:01:04.233883';
	String get description => 'Chill Hub is a windows/mobile application that allows you to browse, search & download high-quality movies.';
	String get external_link => 'https://drive.google.com/file/d/14s_CpbkhbfDEdZHKBc5pqBBW9Lzy-8ze/view?usp=sharing';
	String get github_link => 'https://github.com/ericknamukolo/chill-hub';
	List<String> get images => [
		'https://i.ibb.co/HHrCTDp/chill.png',
		'https://i.ibb.co/syBDzwn/chill1.png',
		'https://i.ibb.co/Gvg2qgd/chill2.png',
		'https://i.ibb.co/YtKYZGh/chill3.png',
		'https://i.ibb.co/pnzsT18/chill4.png',
	];
	String get is_personal => 'true';
	String get name => 'Chill Hub';
	String get playstore_link => 'https://play.google.com/store/apps/details?id=com.ericknamukolo.chillhub';
	List<String> get tech => [
		'Flutter',
		'Dart',
		'API',
	];
	String get type => 'Mobile';
}

// Path: project.projects.2
class _TranslationsProject$projects$0i2$Vi {
	_TranslationsProject$projects$0i2$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get cover_img => 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/project-images%2FVent%20zm_2023-08-18T18%3A53%3A41.749750?alt=media&token=acca1990-8ad3-4425-9e9f-b40bd2a52ac6';
	String get created_at => '2023-08-18T18:53:52.173068';
	String get description => 'Vent is a unique platform that lets you express yourself freely without any fear of judgment or repercussion. It\'s a safe space where you can anonymously share your confessions, thoughts, and vents with a supportive community of like-minded individuals who are ready to lend a listening ear.';
	String get external_link => '';
	String get github_link => '';
	List<String> get images => [
		'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/project-images%2FVent%20zm_2023-08-18T18%3A53%3A47.120338?alt=media&token=edca8147-1976-4e13-b339-758a2f01aa88',
	];
	String get is_personal => 'true';
	String get name => 'Vent';
	String get playstore_link => 'https://play.google.com/store/apps/details?id=com.ericknamukolo.confessions';
	List<String> get tech => [
		'Flutter',
		'Dart',
		'Firebase',
	];
	String get type => 'Mobile';
}

// Path: project.projects.3
class _TranslationsProject$projects$0i3$Vi {
	_TranslationsProject$projects$0i3$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get cover_img => 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/project-images%2FBody%20Touch_2023-09-02T17%3A11%3A23.701593?alt=media&token=248042a5-4500-46a8-bb85-2ef4fbf4440e';
	String get created_at => '2023-09-02T17:11:36.508349';
	String get description => 'Body Touch là một nền tảng giúp bạn tìm và đặt lịch các thợ mát-xa chuyên nghiệp đã được chứng nhận gần bạn.\n\nTHÀNH VIÊN NHÓM\n~ Erick & Kuda [Frontend]\n~ Eugene [Backend]';
	String get external_link => 'https://bodyheatmassage.com.au';
	String get github_link => '';
	List<String> get images => [
		'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/project-images%2FBody%20Touch_2023-09-02T17%3A11%3A30.493795?alt=media&token=37ac8fb9-dffd-45dc-ab5b-2cb6f8660109',
	];
	String get is_personal => 'false';
	String get name => 'Body Touch';
	String get playstore_link => 'https://play.google.com/store/apps/details?id=zm.co.pynch.massageapp';
	List<String> get tech => [
		'Flutter',
		'Dart',
		'Firebase',
		'Google Maps',
		'PHP',
	];
	String get type => 'Mobile';
}

// Path: project.projects.4
class _TranslationsProject$projects$0i4$Vi {
	_TranslationsProject$projects$0i4$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get cover_img => 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/project-images%2FAffinity_2023-10-19T07%3A43%3A01.756163?alt=media&token=a0c58166-e23f-4948-8407-45ccff4ecacb';
	String get created_at => '2023-10-19T07:43:13.137047';
	String get description => 'Affinity là một ứng dụng hẹn hò địa phương vượt xa việc vuốt trên màn hình và kết nối nông cạn.';
	String get external_link => '';
	String get github_link => '';
	List<String> get images => [
		'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/project-images%2FAffinity_2023-10-19T07%3A43%3A07.404722?alt=media&token=37a58e93-7d40-46f0-b182-c1d766d9a015',
	];
	String get is_personal => 'true';
	String get name => 'Affinity';
	String get playstore_link => 'https://play.google.com/store/apps/details?id=com.sleepingpanda.affinity';
	List<String> get tech => [
		'Flutter',
		'Dart',
		'Firebase',
		'Adobe XD',
		'Codemagic (CI/CD)',
	];
	String get type => 'Mobile';
}

// Path: skills.skills.0
class _TranslationsSkills$skills$0i0$Vi {
	_TranslationsSkills$skills$0i0$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get date => '2022-12-06T15:05:22.268253';
	String get des => 'The HyperText Markup Language or HTML is the standard markup language for documents designed to be displayed in a web browser.';
	String get hidden => 'false';
	String get img => 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FHTML?alt=media&token=4d0a35d0-3726-4182-a6fd-fc000a409b5a';
	String get name => 'HTML';
}

// Path: skills.skills.1
class _TranslationsSkills$skills$0i1$Vi {
	_TranslationsSkills$skills$0i1$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get date => '2022-12-06T15:06:35.630660';
	String get des => 'Cascading Style Sheets is a style sheet language used for describing the presentation of a document written in a markup language such as HTML.';
	String get hidden => 'false';
	String get img => 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FCSS?alt=media&token=0e0d0e0b-bb9c-41ea-b2b7-0a37b1815092';
	String get name => 'CSS';
}

// Path: skills.skills.2
class _TranslationsSkills$skills$0i2$Vi {
	_TranslationsSkills$skills$0i2$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get date => '2022-12-06T15:07:09.232675';
	String get des => 'JS is a programming language that is one of the core technologies of the World Wide Web, alongside HTML and CSS.';
	String get hidden => 'false';
	String get img => 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FJavaScript?alt=media&token=640c6f32-cb7f-4752-a2d3-7a4477048688';
	String get name => 'JavaScript';
}

// Path: skills.skills.3
class _TranslationsSkills$skills$0i3$Vi {
	_TranslationsSkills$skills$0i3$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get date => '2022-12-06T15:07:31.798027';
	String get des => 'Git is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency.';
	String get hidden => 'false';
	String get img => 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FGit?alt=media&token=cd9be5b5-dca4-4d78-b84a-864d0a31c919';
	String get name => 'Git';
}

// Path: skills.skills.4
class _TranslationsSkills$skills$0i4$Vi {
	_TranslationsSkills$skills$0i4$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get date => '2022-12-06T15:08:03.833114';
	String get des => 'Adobe XD is a prototyping tool for user experience and interaction designers used to design websites, mobile apps, and more. Design at the speed of thought.';
	String get hidden => 'false';
	String get img => 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FAdobe%20XD?alt=media&token=3dddc27d-b63b-4ed6-b515-ff60db6ec01a';
	String get name => 'Adobe XD';
}

// Path: skills.skills.5
class _TranslationsSkills$skills$0i5$Vi {
	_TranslationsSkills$skills$0i5$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get date => '2022-12-06T15:09:18.175658';
	String get des => 'Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications for Android, iOS, Linux, macOS, Windows, Google Fuchsia, and the web from a single codebase.';
	String get hidden => 'false';
	String get img => 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FFlutter?alt=media&token=1b4e6984-6d9c-436c-8366-9843eb8c2836';
	String get name => 'Flutter';
}

// Path: skills.skills.6
class _TranslationsSkills$skills$0i6$Vi {
	_TranslationsSkills$skills$0i6$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get date => '2022-12-06T15:10:01.509497';
	String get des => 'Dart is a programming language designed for client development, such as for the web and mobile apps.';
	String get hidden => 'false';
	String get img => 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FDart?alt=media&token=82f1a59e-cf39-4e17-9f95-b5f39d8654a6';
	String get name => 'Dart';
}

// Path: skills.skills.7
class _TranslationsSkills$skills$0i7$Vi {
	_TranslationsSkills$skills$0i7$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get date => '2022-12-06T15:10:26.815054';
	String get des => 'Firebase is a Backend-as-a-Service (Baas). It provides developers with a variety of tools and services to help them develop quality apps. It is built on Google’s infrastructure.';
	String get hidden => 'false';
	String get img => 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FFirebase?alt=media&token=d1f23b7d-2cd7-4ff9-ab5e-4a9e746fa714';
	String get name => 'Firebase';
}

// Path: skills.skills.8
class _TranslationsSkills$skills$0i8$Vi {
	_TranslationsSkills$skills$0i8$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get date => '2022-12-06T15:10:53.810314';
	String get des => 'Node.js is an open source, cross-platform runtime environment for developing server-side and networking applications. Node.js applications are written in JavaScript, and can be run within the Node.js runtime on OS X, Microsoft Windows, and Linux.';
	String get hidden => 'true';
	String get img => 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FNode%20Js?alt=media&token=9441f167-b169-4fee-9d0e-e58683d5a1fa';
	String get name => 'Node Js';
}

// Path: skills.skills.9
class _TranslationsSkills$skills$0i9$Vi {
	_TranslationsSkills$skills$0i9$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get date => '2022-12-06T15:11:22.396871';
	String get des => 'MongoDB is an open source cross-platform document-oriented database program. Classified as a NoSQL database program, MongoDB uses JSON-like documents with optional schemas.';
	String get hidden => 'true';
	String get img => 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FMongoDb?alt=media&token=6174ec12-d249-48fe-94b2-caa19436c8cb';
	String get name => 'MongoDb';
}

// Path: skills.skills.10
class _TranslationsSkills$skills$0i10$Vi {
	_TranslationsSkills$skills$0i10$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get date => '2022-12-13T06:42:40.468743';
	String get des => 'TypeScript is a free and open source programming language developed and maintained by Microsoft. It is a strict syntactical superset of JavaScript and adds optional static typing to the language.';
	String get hidden => 'false';
	String get img => 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FTypeScript?alt=media&token=ba5d81bb-4dfb-49dd-8e0d-da22d0a03e08';
	String get name => 'TypeScript';
}

// Path: skills.skills.11
class _TranslationsSkills$skills$0i11$Vi {
	_TranslationsSkills$skills$0i11$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get date => '2022-12-13T06:51:19.229714';
	String get des => 'React is a free and open-source front-end JavaScript library for building user interfaces based on UI components.';
	String get hidden => 'false';
	String get img => 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FReact%20Js?alt=media&token=864bfc4f-bab3-49b7-804b-0f86b2480018';
	String get name => 'React Js';
}

// Path: skills.skills.12
class _TranslationsSkills$skills$0i12$Vi {
	_TranslationsSkills$skills$0i12$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get date => '2023-08-05T07:30:26.081916';
	String get des => 'CodeMagic is a continuous integration and delivery (CI/CD) platform specifically designed for mobile app development. It is primarily used for building, testing, and distributing mobile apps on both iOS and Android platforms.';
	String get hidden => 'false';
	String get img => 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FCodemagic%20(CI%2FCD)?alt=media&token=4b1f2119-e086-4144-8c89-da990b5afff7';
	String get name => 'Codemagic (CI/CD)';
}

// Path: <root>
class _TranslationsEn implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_TranslationsEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _TranslationsEn _root = this; // ignore: unused_field

	// Translations
	@override late final _TranslationsExperienceEn experience = _TranslationsExperienceEn._(_root);
	@override late final _TranslationsTabsEn tabs = _TranslationsTabsEn._(_root);
	@override late final _TranslationsAboutEn about = _TranslationsAboutEn._(_root);
	@override late final _TranslationsGeneralEn general = _TranslationsGeneralEn._(_root);
	@override late final _TranslationsProjectEn project = _TranslationsProjectEn._(_root);
	@override late final _TranslationsSkillsEn skills = _TranslationsSkillsEn._(_root);
}

// Path: experience
class _TranslationsExperienceEn implements _TranslationsExperienceVi {
	_TranslationsExperienceEn._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override List<dynamic> get experiences => [
		_TranslationsExperience$experiences$0i0$En._(_root),
		_TranslationsExperience$experiences$0i1$En._(_root),
		_TranslationsExperience$experiences$0i2$En._(_root),
	];
}

// Path: tabs
class _TranslationsTabsEn implements _TranslationsTabsVi {
	_TranslationsTabsEn._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override List<String> get tabs => [
		'Home',
		'About',
		'Skills',
		'Experience',
		'Projects',
		'Contact',
		'Download CV',
	];
}

// Path: about
class _TranslationsAboutEn implements _TranslationsAboutVi {
	_TranslationsAboutEn._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get name => 'Chung Nguyen Thanh';
	@override String get aboutMe => 'As a software engineer and UI/UX designer with extensive experience in Flutter, Dart, Firebase, and design, I am passionate about developing innovative and engaging digital experiences that meet the needs of users.\n\nWith a strong foundation in software engineering and design principles, I am adept at crafting high-quality code and intuitive user interfaces. I have experience in designing and developing user-friendly, cross-platform mobile applications using Flutter and Dart.\n\nAs a skilled designer, I can create engaging visuals, intuitive layouts, and an exceptional user experience. I have experience in user research, wireframing, prototyping, and designing user interfaces for mobile apps and web-based applications.\n\nI am highly proficient in Firebase, including Firestore, Realtime Database, and Firebase Cloud Messaging. I have used these technologies to build real-time collaborative applications, messaging systems, and cloud-based applications.\n\nThroughout my career, I have demonstrated strong collaboration skills, working closely with product managers, designers, and other developers to ensure that projects are delivered on time and to a high standard.\n\nIn summary, I am a highly skilled software engineer and UI/UX designer with expertise in Flutter, Dart, Firebase, and design. I am passionate about building innovative and engaging digital experiences that meet the needs of users and strive to deliver high-quality code and intuitive user interfaces for all projects.';
	@override List<dynamic> get aboutCard => [
		_TranslationsAbout$aboutCard$0i0$En._(_root),
		_TranslationsAbout$aboutCard$0i1$En._(_root),
		_TranslationsAbout$aboutCard$0i2$En._(_root),
		_TranslationsAbout$aboutCard$0i3$En._(_root),
	];
}

// Path: general
class _TranslationsGeneralEn implements _TranslationsGeneralVi {
	_TranslationsGeneralEn._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title_introduction_about_section => 'Introduction';
	@override String get name_about_section => 'Chung Nguyen Thanh';
	@override String get title_about_section => 'About';
	@override String get title_contact_section => 'Contact';
	@override String get title_contact_me_section => 'Contact Me';
	@override String get get_in_touch_contact_section => 'Get in touch';
	@override String get feel_free_contact_section => 'Feel free to get in touch';
	@override String get hint_your_name_contact_section => 'Your name';
	@override String get hint_your_email_contact_section => 'Your email';
	@override String get hint_message_contact_section => 'Type your message';
	@override String get btn_send_contact_section => 'Send';
	@override String get title_experience_section => 'Work Experience';
	@override String get title_project_section => 'Projects';
	@override String get title_personal_projects_project_section => 'Personal Projects';
	@override String get title_client_projects_project_section => 'Work/Client Projects';
	@override String get m_title_personal_projects_project_section => 'Personal';
	@override String get m_title_client_projects_project_section => 'Work/Client';
	@override String get title_all_projects_project_section => 'All Projects';
	@override String get title_skill_section => 'Skills';
	@override String get hi_about_section => 'Hi there! I\'m ';
	@override String get introduce_home_section1 => 'I am a Software Development Engineer for Consumer Product Line (Phone, Set-top Box,...) and a Flutter Developer.';
	@override String get introduce_home_section2 => 'I build system applications for AOSP, ATV in the Consumer Product Line and build websites and interactive software applications that run on multiple platforms and devices.';
	@override String get browse_projects_home_section => 'Browse Projects';
	@override String get required_input_field => 'This field is required';
}

// Path: project
class _TranslationsProjectEn implements _TranslationsProjectVi {
	_TranslationsProjectEn._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override List<dynamic> get projects => [
		_TranslationsProject$projects$0i0$En._(_root),
		_TranslationsProject$projects$0i1$En._(_root),
		_TranslationsProject$projects$0i2$En._(_root),
		_TranslationsProject$projects$0i3$En._(_root),
		_TranslationsProject$projects$0i4$En._(_root),
	];
}

// Path: skills
class _TranslationsSkillsEn implements _TranslationsSkillsVi {
	_TranslationsSkillsEn._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override List<dynamic> get skills => [
		_TranslationsSkills$skills$0i0$En._(_root),
		_TranslationsSkills$skills$0i1$En._(_root),
		_TranslationsSkills$skills$0i2$En._(_root),
		_TranslationsSkills$skills$0i3$En._(_root),
		_TranslationsSkills$skills$0i4$En._(_root),
		_TranslationsSkills$skills$0i5$En._(_root),
		_TranslationsSkills$skills$0i6$En._(_root),
		_TranslationsSkills$skills$0i7$En._(_root),
		_TranslationsSkills$skills$0i8$En._(_root),
		_TranslationsSkills$skills$0i9$En._(_root),
		_TranslationsSkills$skills$0i10$En._(_root),
		_TranslationsSkills$skills$0i11$En._(_root),
		_TranslationsSkills$skills$0i12$En._(_root),
	];
}

// Path: experience.experiences.0
class _TranslationsExperience$experiences$0i0$En implements _TranslationsExperience$experiences$0i0$Vi {
	_TranslationsExperience$experiences$0i0$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get company => 'Omnis Corporation';
	@override String get country => 'Zambia';
	@override String get created_at => '2022-12-31T14:23:43.877077';
	@override String get emp_type => 'Part - Time';
	@override String get end_date => '2022-03-07T00:00:00.000';
	@override String get is_hidden => 'false';
	@override String get position => 'UI / UX Designer & Flutter Developer';
	@override String get start_date => '2021-01-05T00:00:00.000';
	@override String get state => 'Lusaka';
	@override String get work_done => 'Designed clean & Simple yet thoughtful UI/UX design patterns for both mobile and web apps.#Built both mobile and web applications with interactive & responsive layouts.#API integrations throughout a software to keep data in sync and enhance productivity.';
	@override String get works_here => 'false';
}

// Path: experience.experiences.1
class _TranslationsExperience$experiences$0i1$En implements _TranslationsExperience$experiences$0i1$Vi {
	_TranslationsExperience$experiences$0i1$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get company => 'Lassod Consulting Limited';
	@override String get country => 'UK';
	@override String get created_at => '2022-12-31T14:28:07.703644';
	@override String get emp_type => 'Full - Time';
	@override String get is_hidden => 'false';
	@override String get position => 'Software Engineer (Remote)';
	@override String get site_url => 'lassod.com';
	@override String get start_date => '2022-03-07T00:00:00.000';
	@override String get state => 'England';
	@override String get work_done => 'Write modern, performant, maintainable code for a diverse array of client and internal projects with Flutter & Dart.#Communicate with multi-disciplinary teams of engineers, designers and clients on a daily basis.#Work with a variety of different languages, platforms, frameworks, and content management systems such as Dart, Flutter, Github, Gitlab, Jira and Time Management.';
	@override String get works_here => 'true';
}

// Path: experience.experiences.2
class _TranslationsExperience$experiences$0i2$En implements _TranslationsExperience$experiences$0i2$Vi {
	_TranslationsExperience$experiences$0i2$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get company => 'Pynch Technology';
	@override String get country => 'Zambia';
	@override String get created_at => '2023-01-01T14:51:02.923189';
	@override String get emp_type => 'Part - Time';
	@override String get is_hidden => 'false';
	@override String get position => 'Mobile Developer (Remote)';
	@override String get site_url => 'pynch.co.zm';
	@override String get start_date => '2022-11-07T00:00:00.000';
	@override String get state => 'Lusaka';
	@override String get work_done => 'Designing, developing, testing and implementing mobile applications using the Flutter framework.#Working closely with the backend engineer and UI/UX designer to ensure proper integration in mobile applications.';
	@override String get works_here => 'true';
}

// Path: about.aboutCard.0
class _TranslationsAbout$aboutCard$0i0$En implements _TranslationsAbout$aboutCard$0i0$Vi {
	_TranslationsAbout$aboutCard$0i0$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get content => 'I value simple, clean design patterns, and thoughtful interactions.';
	@override String get iconPath => 'assets/vector.png';
	@override String get title => 'UI/UX Design';
}

// Path: about.aboutCard.1
class _TranslationsAbout$aboutCard$0i1$En implements _TranslationsAbout$aboutCard$0i1$Vi {
	_TranslationsAbout$aboutCard$0i1$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get content => 'Using Flutter & Dart, I build fast, interactive apps & websites.';
	@override String get iconPath => 'assets/programming-code-signs.png';
	@override String get title => 'Front-End Development';
}

// Path: about.aboutCard.2
class _TranslationsAbout$aboutCard$0i2$En implements _TranslationsAbout$aboutCard$0i2$Vi {
	_TranslationsAbout$aboutCard$0i2$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get content => 'API integrations throughout a software to keep data in sync and enhance productivity.';
	@override String get iconPath => 'assets/api.png';
	@override String get title => 'API Integration';
}

// Path: about.aboutCard.3
class _TranslationsAbout$aboutCard$0i3$En implements _TranslationsAbout$aboutCard$0i3$Vi {
	_TranslationsAbout$aboutCard$0i3$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get content => 'I enjoy bringing ideas to life on the phone or in the browser.';
	@override String get iconPath => 'assets/web-development.png';
	@override String get title => 'Mobile/Web Development';
}

// Path: project.projects.0
class _TranslationsProject$projects$0i0$En implements _TranslationsProject$projects$0i0$Vi {
	_TranslationsProject$projects$0i0$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get cover_img => 'https://i.ibb.co/3Fv9QRt/port.png';
	@override String get created_at => '2023-01-28T23:08:58.657311';
	@override String get description => 'Personal Portfolio Site showcases some of the projects I\'ve built so far.';
	@override String get external_link => 'https://ericknamukolo.com';
	@override String get github_link => 'https://github.com/ericknamukolo/ericknamukolo.github.io';
	@override List<String> get images => [
		'https://i.ibb.co/3Fv9QRt/port.png',
		'https://i.ibb.co/7bFG4jV/about.png',
	];
	@override String get is_personal => 'true';
	@override String get name => 'Portfolio';
	@override String get playstore_link => '';
	@override List<String> get tech => [
		'Flutter',
		'Dart',
		'Firebase',
	];
	@override String get type => 'Web/Windows';
}

// Path: project.projects.1
class _TranslationsProject$projects$0i1$En implements _TranslationsProject$projects$0i1$Vi {
	_TranslationsProject$projects$0i1$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get cover_img => 'https://i.ibb.co/phdq570/Chill-Poster.png';
	@override String get created_at => '2023-07-23T10:01:04.233883';
	@override String get description => 'Chill Hub is a windows/mobile application that allows you to browse, search & download high-quality movies.';
	@override String get external_link => 'https://drive.google.com/file/d/14s_CpbkhbfDEdZHKBc5pqBBW9Lzy-8ze/view?usp=sharing';
	@override String get github_link => 'https://github.com/ericknamukolo/chill-hub';
	@override List<String> get images => [
		'https://i.ibb.co/HHrCTDp/chill.png',
		'https://i.ibb.co/syBDzwn/chill1.png',
		'https://i.ibb.co/Gvg2qgd/chill2.png',
		'https://i.ibb.co/YtKYZGh/chill3.png',
		'https://i.ibb.co/pnzsT18/chill4.png',
	];
	@override String get is_personal => 'true';
	@override String get name => 'Chill Hub';
	@override String get playstore_link => 'https://play.google.com/store/apps/details?id=com.ericknamukolo.chillhub';
	@override List<String> get tech => [
		'Flutter',
		'Dart',
		'API',
	];
	@override String get type => 'Mobile';
}

// Path: project.projects.2
class _TranslationsProject$projects$0i2$En implements _TranslationsProject$projects$0i2$Vi {
	_TranslationsProject$projects$0i2$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get cover_img => 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/project-images%2FVent%20zm_2023-08-18T18%3A53%3A41.749750?alt=media&token=acca1990-8ad3-4425-9e9f-b40bd2a52ac6';
	@override String get created_at => '2023-08-18T18:53:52.173068';
	@override String get description => 'Vent is a unique platform that lets you express yourself freely without any fear of judgment or repercussion. It\'s a safe space where you can anonymously share your confessions, thoughts, and vents with a supportive community of like-minded individuals who are ready to lend a listening ear.';
	@override String get external_link => '';
	@override String get github_link => '';
	@override List<String> get images => [
		'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/project-images%2FVent%20zm_2023-08-18T18%3A53%3A47.120338?alt=media&token=edca8147-1976-4e13-b339-758a2f01aa88',
	];
	@override String get is_personal => 'true';
	@override String get name => 'Vent';
	@override String get playstore_link => 'https://play.google.com/store/apps/details?id=com.ericknamukolo.confessions';
	@override List<String> get tech => [
		'Flutter',
		'Dart',
		'Firebase',
	];
	@override String get type => 'Mobile';
}

// Path: project.projects.3
class _TranslationsProject$projects$0i3$En implements _TranslationsProject$projects$0i3$Vi {
	_TranslationsProject$projects$0i3$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get cover_img => 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/project-images%2FBody%20Touch_2023-09-02T17%3A11%3A23.701593?alt=media&token=248042a5-4500-46a8-bb85-2ef4fbf4440e';
	@override String get created_at => '2023-09-02T17:11:36.508349';
	@override String get description => 'Body Touch là một nền tảng giúp bạn tìm và đặt lịch các thợ mát-xa chuyên nghiệp đã được chứng nhận gần bạn.\n\nTHÀNH VIÊN NHÓM\n~ Erick & Kuda [Frontend]\n~ Eugene [Backend]';
	@override String get external_link => 'https://bodyheatmassage.com.au';
	@override String get github_link => '';
	@override List<String> get images => [
		'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/project-images%2FBody%20Touch_2023-09-02T17%3A11%3A30.493795?alt=media&token=37ac8fb9-dffd-45dc-ab5b-2cb6f8660109',
	];
	@override String get is_personal => 'false';
	@override String get name => 'Body Touch';
	@override String get playstore_link => 'https://play.google.com/store/apps/details?id=zm.co.pynch.massageapp';
	@override List<String> get tech => [
		'Flutter',
		'Dart',
		'Firebase',
		'Google Maps',
		'PHP',
	];
	@override String get type => 'Mobile';
}

// Path: project.projects.4
class _TranslationsProject$projects$0i4$En implements _TranslationsProject$projects$0i4$Vi {
	_TranslationsProject$projects$0i4$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get cover_img => 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/project-images%2FAffinity_2023-10-19T07%3A43%3A01.756163?alt=media&token=a0c58166-e23f-4948-8407-45ccff4ecacb';
	@override String get created_at => '2023-10-19T07:43:13.137047';
	@override String get description => 'Affinity là một ứng dụng hẹn hò địa phương vượt xa việc vuốt trên màn hình và kết nối nông cạn.';
	@override String get external_link => '';
	@override String get github_link => '';
	@override List<String> get images => [
		'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/project-images%2FAffinity_2023-10-19T07%3A43%3A07.404722?alt=media&token=37a58e93-7d40-46f0-b182-c1d766d9a015',
	];
	@override String get is_personal => 'true';
	@override String get name => 'Affinity';
	@override String get playstore_link => 'https://play.google.com/store/apps/details?id=com.sleepingpanda.affinity';
	@override List<String> get tech => [
		'Flutter',
		'Dart',
		'Firebase',
		'Adobe XD',
		'Codemagic (CI/CD)',
	];
	@override String get type => 'Mobile';
}

// Path: skills.skills.0
class _TranslationsSkills$skills$0i0$En implements _TranslationsSkills$skills$0i0$Vi {
	_TranslationsSkills$skills$0i0$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get date => '2022-12-06T15:05:22.268253';
	@override String get des => 'The HyperText Markup Language or HTML is the standard markup language for documents designed to be displayed in a web browser.';
	@override String get hidden => 'false';
	@override String get img => 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FHTML?alt=media&token=4d0a35d0-3726-4182-a6fd-fc000a409b5a';
	@override String get name => 'HTML';
}

// Path: skills.skills.1
class _TranslationsSkills$skills$0i1$En implements _TranslationsSkills$skills$0i1$Vi {
	_TranslationsSkills$skills$0i1$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get date => '2022-12-06T15:06:35.630660';
	@override String get des => 'Cascading Style Sheets is a style sheet language used for describing the presentation of a document written in a markup language such as HTML.';
	@override String get hidden => 'false';
	@override String get img => 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FCSS?alt=media&token=0e0d0e0b-bb9c-41ea-b2b7-0a37b1815092';
	@override String get name => 'CSS';
}

// Path: skills.skills.2
class _TranslationsSkills$skills$0i2$En implements _TranslationsSkills$skills$0i2$Vi {
	_TranslationsSkills$skills$0i2$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get date => '2022-12-06T15:07:09.232675';
	@override String get des => 'JS is a programming language that is one of the core technologies of the World Wide Web, alongside HTML and CSS.';
	@override String get hidden => 'false';
	@override String get img => 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FJavaScript?alt=media&token=640c6f32-cb7f-4752-a2d3-7a4477048688';
	@override String get name => 'JavaScript';
}

// Path: skills.skills.3
class _TranslationsSkills$skills$0i3$En implements _TranslationsSkills$skills$0i3$Vi {
	_TranslationsSkills$skills$0i3$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get date => '2022-12-06T15:07:31.798027';
	@override String get des => 'Git is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency.';
	@override String get hidden => 'false';
	@override String get img => 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FGit?alt=media&token=cd9be5b5-dca4-4d78-b84a-864d0a31c919';
	@override String get name => 'Git';
}

// Path: skills.skills.4
class _TranslationsSkills$skills$0i4$En implements _TranslationsSkills$skills$0i4$Vi {
	_TranslationsSkills$skills$0i4$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get date => '2022-12-06T15:08:03.833114';
	@override String get des => 'Adobe XD is a prototyping tool for user experience and interaction designers used to design websites, mobile apps, and more. Design at the speed of thought.';
	@override String get hidden => 'false';
	@override String get img => 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FAdobe%20XD?alt=media&token=3dddc27d-b63b-4ed6-b515-ff60db6ec01a';
	@override String get name => 'Adobe XD';
}

// Path: skills.skills.5
class _TranslationsSkills$skills$0i5$En implements _TranslationsSkills$skills$0i5$Vi {
	_TranslationsSkills$skills$0i5$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get date => '2022-12-06T15:09:18.175658';
	@override String get des => 'Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications for Android, iOS, Linux, macOS, Windows, Google Fuchsia, and the web from a single codebase.';
	@override String get hidden => 'false';
	@override String get img => 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FFlutter?alt=media&token=1b4e6984-6d9c-436c-8366-9843eb8c2836';
	@override String get name => 'Flutter';
}

// Path: skills.skills.6
class _TranslationsSkills$skills$0i6$En implements _TranslationsSkills$skills$0i6$Vi {
	_TranslationsSkills$skills$0i6$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get date => '2022-12-06T15:10:01.509497';
	@override String get des => 'Dart is a programming language designed for client development, such as for the web and mobile apps.';
	@override String get hidden => 'false';
	@override String get img => 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FDart?alt=media&token=82f1a59e-cf39-4e17-9f95-b5f39d8654a6';
	@override String get name => 'Dart';
}

// Path: skills.skills.7
class _TranslationsSkills$skills$0i7$En implements _TranslationsSkills$skills$0i7$Vi {
	_TranslationsSkills$skills$0i7$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get date => '2022-12-06T15:10:26.815054';
	@override String get des => 'Firebase is a Backend-as-a-Service (Baas). It provides developers with a variety of tools and services to help them develop quality apps. It is built on Google’s infrastructure.';
	@override String get hidden => 'false';
	@override String get img => 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FFirebase?alt=media&token=d1f23b7d-2cd7-4ff9-ab5e-4a9e746fa714';
	@override String get name => 'Firebase';
}

// Path: skills.skills.8
class _TranslationsSkills$skills$0i8$En implements _TranslationsSkills$skills$0i8$Vi {
	_TranslationsSkills$skills$0i8$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get date => '2022-12-06T15:10:53.810314';
	@override String get des => 'Node.js is an open source, cross-platform runtime environment for developing server-side and networking applications. Node.js applications are written in JavaScript, and can be run within the Node.js runtime on OS X, Microsoft Windows, and Linux.';
	@override String get hidden => 'true';
	@override String get img => 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FNode%20Js?alt=media&token=9441f167-b169-4fee-9d0e-e58683d5a1fa';
	@override String get name => 'Node Js';
}

// Path: skills.skills.9
class _TranslationsSkills$skills$0i9$En implements _TranslationsSkills$skills$0i9$Vi {
	_TranslationsSkills$skills$0i9$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get date => '2022-12-06T15:11:22.396871';
	@override String get des => 'MongoDB is an open source cross-platform document-oriented database program. Classified as a NoSQL database program, MongoDB uses JSON-like documents with optional schemas.';
	@override String get hidden => 'true';
	@override String get img => 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FMongoDb?alt=media&token=6174ec12-d249-48fe-94b2-caa19436c8cb';
	@override String get name => 'MongoDb';
}

// Path: skills.skills.10
class _TranslationsSkills$skills$0i10$En implements _TranslationsSkills$skills$0i10$Vi {
	_TranslationsSkills$skills$0i10$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get date => '2022-12-13T06:42:40.468743';
	@override String get des => 'TypeScript is a free and open source programming language developed and maintained by Microsoft. It is a strict syntactical superset of JavaScript and adds optional static typing to the language.';
	@override String get hidden => 'false';
	@override String get img => 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FTypeScript?alt=media&token=ba5d81bb-4dfb-49dd-8e0d-da22d0a03e08';
	@override String get name => 'TypeScript';
}

// Path: skills.skills.11
class _TranslationsSkills$skills$0i11$En implements _TranslationsSkills$skills$0i11$Vi {
	_TranslationsSkills$skills$0i11$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get date => '2022-12-13T06:51:19.229714';
	@override String get des => 'React is a free and open-source front-end JavaScript library for building user interfaces based on UI components.';
	@override String get hidden => 'false';
	@override String get img => 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FReact%20Js?alt=media&token=864bfc4f-bab3-49b7-804b-0f86b2480018';
	@override String get name => 'React Js';
}

// Path: skills.skills.12
class _TranslationsSkills$skills$0i12$En implements _TranslationsSkills$skills$0i12$Vi {
	_TranslationsSkills$skills$0i12$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get date => '2023-08-05T07:30:26.081916';
	@override String get des => 'CodeMagic is a continuous integration and delivery (CI/CD) platform specifically designed for mobile app development. It is primarily used for building, testing, and distributing mobile apps on both iOS and Android platforms.';
	@override String get hidden => 'false';
	@override String get img => 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FCodemagic%20(CI%2FCD)?alt=media&token=4b1f2119-e086-4144-8c89-da990b5afff7';
	@override String get name => 'Codemagic (CI/CD)';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'experience.experiences.0.company': return 'Omnis Corporation';
			case 'experience.experiences.0.country': return 'Zambia';
			case 'experience.experiences.0.created_at': return '2022-12-31T14:23:43.877077';
			case 'experience.experiences.0.emp_type': return 'Part - Time';
			case 'experience.experiences.0.end_date': return '2022-03-07T00:00:00.000';
			case 'experience.experiences.0.is_hidden': return 'false';
			case 'experience.experiences.0.position': return 'UI / UX Designer & Flutter Developer';
			case 'experience.experiences.0.start_date': return '2021-01-05T00:00:00.000';
			case 'experience.experiences.0.state': return 'Lusaka';
			case 'experience.experiences.0.work_done': return 'Designed clean & Simple yet thoughtful UI/UX design patterns for both mobile and web apps.#Built both mobile and web applications with interactive & responsive layouts.#API integrations throughout a software to keep data in sync and enhance productivity.';
			case 'experience.experiences.0.works_here': return 'false';
			case 'experience.experiences.1.company': return 'Lassod Consulting Limited';
			case 'experience.experiences.1.country': return 'UK';
			case 'experience.experiences.1.created_at': return '2022-12-31T14:28:07.703644';
			case 'experience.experiences.1.emp_type': return 'Full - Time';
			case 'experience.experiences.1.is_hidden': return 'false';
			case 'experience.experiences.1.position': return 'Software Engineer (Remote)';
			case 'experience.experiences.1.site_url': return 'lassod.com';
			case 'experience.experiences.1.start_date': return '2022-03-07T00:00:00.000';
			case 'experience.experiences.1.state': return 'England';
			case 'experience.experiences.1.work_done': return 'Write modern, performant, maintainable code for a diverse array of client and internal projects with Flutter & Dart.#Communicate with multi-disciplinary teams of engineers, designers and clients on a daily basis.#Work with a variety of different languages, platforms, frameworks, and content management systems such as Dart, Flutter, Github, Gitlab, Jira and Time Management.';
			case 'experience.experiences.1.works_here': return 'true';
			case 'experience.experiences.2.company': return 'Pynch Technology';
			case 'experience.experiences.2.country': return 'Zambia';
			case 'experience.experiences.2.created_at': return '2023-01-01T14:51:02.923189';
			case 'experience.experiences.2.emp_type': return 'Part - Time';
			case 'experience.experiences.2.is_hidden': return 'false';
			case 'experience.experiences.2.position': return 'Mobile Developer (Remote)';
			case 'experience.experiences.2.site_url': return 'pynch.co.zm';
			case 'experience.experiences.2.start_date': return '2022-11-07T00:00:00.000';
			case 'experience.experiences.2.state': return 'Lusaka';
			case 'experience.experiences.2.work_done': return 'Designing, developing, testing and implementing mobile applications using the Flutter framework.#Working closely with the backend engineer and UI/UX designer to ensure proper integration in mobile applications.';
			case 'experience.experiences.2.works_here': return 'true';
			case 'tabs.tabs.0': return 'Home';
			case 'tabs.tabs.1': return 'About';
			case 'tabs.tabs.2': return 'Skills';
			case 'tabs.tabs.3': return 'Experience';
			case 'tabs.tabs.4': return 'Projects';
			case 'tabs.tabs.5': return 'Contact';
			case 'tabs.tabs.6': return 'Download CV';
			case 'about.name': return 'Chung Nguyen Thanh';
			case 'about.aboutMe': return 'As a software engineer and UI/UX designer with extensive experience in Flutter, Dart, Firebase, and design, I am passionate about developing innovative and engaging digital experiences that meet the needs of users.\n\nWith a strong foundation in software engineering and design principles, I am adept at crafting high-quality code and intuitive user interfaces. I have experience in designing and developing user-friendly, cross-platform mobile applications using Flutter and Dart.\n\nAs a skilled designer, I can create engaging visuals, intuitive layouts, and an exceptional user experience. I have experience in user research, wireframing, prototyping, and designing user interfaces for mobile apps and web-based applications.\n\nI am highly proficient in Firebase, including Firestore, Realtime Database, and Firebase Cloud Messaging. I have used these technologies to build real-time collaborative applications, messaging systems, and cloud-based applications.\n\nThroughout my career, I have demonstrated strong collaboration skills, working closely with product managers, designers, and other developers to ensure that projects are delivered on time and to a high standard.\n\nIn summary, I am a highly skilled software engineer and UI/UX designer with expertise in Flutter, Dart, Firebase, and design. I am passionate about building innovative and engaging digital experiences that meet the needs of users and strive to deliver high-quality code and intuitive user interfaces for all projects.';
			case 'about.aboutCard.0.content': return 'I value simple, clean design patterns, and thoughtful interactions.';
			case 'about.aboutCard.0.iconPath': return 'assets/vector.png';
			case 'about.aboutCard.0.title': return 'UI/UX Design';
			case 'about.aboutCard.1.content': return 'Using Flutter & Dart, I build fast, interactive apps & websites.';
			case 'about.aboutCard.1.iconPath': return 'assets/programming-code-signs.png';
			case 'about.aboutCard.1.title': return 'Front-End Development';
			case 'about.aboutCard.2.content': return 'API integrations throughout a software to keep data in sync and enhance productivity.';
			case 'about.aboutCard.2.iconPath': return 'assets/api.png';
			case 'about.aboutCard.2.title': return 'API Integration';
			case 'about.aboutCard.3.content': return 'I enjoy bringing ideas to life on the phone or in the browser.';
			case 'about.aboutCard.3.iconPath': return 'assets/web-development.png';
			case 'about.aboutCard.3.title': return 'Mobile/Web Development';
			case 'general.title_introduction_about_section': return 'Introduction';
			case 'general.name_about_section': return 'Chung Nguyen Thanh';
			case 'general.title_about_section': return 'About';
			case 'general.title_contact_section': return 'Contact';
			case 'general.title_contact_me_section': return 'Contact Me';
			case 'general.get_in_touch_contact_section': return 'Get in touch';
			case 'general.feel_free_contact_section': return 'Feel free to get in touch';
			case 'general.hint_your_name_contact_section': return 'Your name';
			case 'general.hint_your_email_contact_section': return 'Your email';
			case 'general.hint_message_contact_section': return 'Type your message';
			case 'general.btn_send_contact_section': return 'Send';
			case 'general.title_experience_section': return 'Work Experience';
			case 'general.title_project_section': return 'Projects';
			case 'general.title_personal_projects_project_section': return 'Personal Projects';
			case 'general.title_client_projects_project_section': return 'Work/Client Projects';
			case 'general.m_title_personal_projects_project_section': return 'Personal';
			case 'general.m_title_client_projects_project_section': return 'Work/Client';
			case 'general.title_all_projects_project_section': return 'All Projects';
			case 'general.title_skill_section': return 'Skills';
			case 'general.hi_about_section': return 'Hi there! I\'m ';
			case 'general.introduce_home_section1': return 'I am a Software Development Engineer for Consumer Product Line (Phone, Set-top Box,...) and a Flutter Developer.';
			case 'general.introduce_home_section2': return 'I build system applications for AOSP, ATV in the Consumer Product Line and build websites and interactive software applications that run on multiple platforms and devices.';
			case 'general.browse_projects_home_section': return 'Browse Projects';
			case 'general.required_input_field': return 'This field is required';
			case 'project.projects.0.cover_img': return 'https://i.ibb.co/3Fv9QRt/port.png';
			case 'project.projects.0.created_at': return '2023-01-28T23:08:58.657311';
			case 'project.projects.0.description': return 'Personal Portfolio Site showcases some of the projects I\'ve built so far.';
			case 'project.projects.0.external_link': return 'https://ericknamukolo.com';
			case 'project.projects.0.github_link': return 'https://github.com/ericknamukolo/ericknamukolo.github.io';
			case 'project.projects.0.images.0': return 'https://i.ibb.co/3Fv9QRt/port.png';
			case 'project.projects.0.images.1': return 'https://i.ibb.co/7bFG4jV/about.png';
			case 'project.projects.0.is_personal': return 'true';
			case 'project.projects.0.name': return 'Portfolio';
			case 'project.projects.0.playstore_link': return '';
			case 'project.projects.0.tech.0': return 'Flutter';
			case 'project.projects.0.tech.1': return 'Dart';
			case 'project.projects.0.tech.2': return 'Firebase';
			case 'project.projects.0.type': return 'Web/Windows';
			case 'project.projects.1.cover_img': return 'https://i.ibb.co/phdq570/Chill-Poster.png';
			case 'project.projects.1.created_at': return '2023-07-23T10:01:04.233883';
			case 'project.projects.1.description': return 'Chill Hub is a windows/mobile application that allows you to browse, search & download high-quality movies.';
			case 'project.projects.1.external_link': return 'https://drive.google.com/file/d/14s_CpbkhbfDEdZHKBc5pqBBW9Lzy-8ze/view?usp=sharing';
			case 'project.projects.1.github_link': return 'https://github.com/ericknamukolo/chill-hub';
			case 'project.projects.1.images.0': return 'https://i.ibb.co/HHrCTDp/chill.png';
			case 'project.projects.1.images.1': return 'https://i.ibb.co/syBDzwn/chill1.png';
			case 'project.projects.1.images.2': return 'https://i.ibb.co/Gvg2qgd/chill2.png';
			case 'project.projects.1.images.3': return 'https://i.ibb.co/YtKYZGh/chill3.png';
			case 'project.projects.1.images.4': return 'https://i.ibb.co/pnzsT18/chill4.png';
			case 'project.projects.1.is_personal': return 'true';
			case 'project.projects.1.name': return 'Chill Hub';
			case 'project.projects.1.playstore_link': return 'https://play.google.com/store/apps/details?id=com.ericknamukolo.chillhub';
			case 'project.projects.1.tech.0': return 'Flutter';
			case 'project.projects.1.tech.1': return 'Dart';
			case 'project.projects.1.tech.2': return 'API';
			case 'project.projects.1.type': return 'Mobile';
			case 'project.projects.2.cover_img': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/project-images%2FVent%20zm_2023-08-18T18%3A53%3A41.749750?alt=media&token=acca1990-8ad3-4425-9e9f-b40bd2a52ac6';
			case 'project.projects.2.created_at': return '2023-08-18T18:53:52.173068';
			case 'project.projects.2.description': return 'Vent is a unique platform that lets you express yourself freely without any fear of judgment or repercussion. It\'s a safe space where you can anonymously share your confessions, thoughts, and vents with a supportive community of like-minded individuals who are ready to lend a listening ear.';
			case 'project.projects.2.external_link': return '';
			case 'project.projects.2.github_link': return '';
			case 'project.projects.2.images.0': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/project-images%2FVent%20zm_2023-08-18T18%3A53%3A47.120338?alt=media&token=edca8147-1976-4e13-b339-758a2f01aa88';
			case 'project.projects.2.is_personal': return 'true';
			case 'project.projects.2.name': return 'Vent';
			case 'project.projects.2.playstore_link': return 'https://play.google.com/store/apps/details?id=com.ericknamukolo.confessions';
			case 'project.projects.2.tech.0': return 'Flutter';
			case 'project.projects.2.tech.1': return 'Dart';
			case 'project.projects.2.tech.2': return 'Firebase';
			case 'project.projects.2.type': return 'Mobile';
			case 'project.projects.3.cover_img': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/project-images%2FBody%20Touch_2023-09-02T17%3A11%3A23.701593?alt=media&token=248042a5-4500-46a8-bb85-2ef4fbf4440e';
			case 'project.projects.3.created_at': return '2023-09-02T17:11:36.508349';
			case 'project.projects.3.description': return 'Body Touch là một nền tảng giúp bạn tìm và đặt lịch các thợ mát-xa chuyên nghiệp đã được chứng nhận gần bạn.\n\nTHÀNH VIÊN NHÓM\n~ Erick & Kuda [Frontend]\n~ Eugene [Backend]';
			case 'project.projects.3.external_link': return 'https://bodyheatmassage.com.au';
			case 'project.projects.3.github_link': return '';
			case 'project.projects.3.images.0': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/project-images%2FBody%20Touch_2023-09-02T17%3A11%3A30.493795?alt=media&token=37ac8fb9-dffd-45dc-ab5b-2cb6f8660109';
			case 'project.projects.3.is_personal': return 'false';
			case 'project.projects.3.name': return 'Body Touch';
			case 'project.projects.3.playstore_link': return 'https://play.google.com/store/apps/details?id=zm.co.pynch.massageapp';
			case 'project.projects.3.tech.0': return 'Flutter';
			case 'project.projects.3.tech.1': return 'Dart';
			case 'project.projects.3.tech.2': return 'Firebase';
			case 'project.projects.3.tech.3': return 'Google Maps';
			case 'project.projects.3.tech.4': return 'PHP';
			case 'project.projects.3.type': return 'Mobile';
			case 'project.projects.4.cover_img': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/project-images%2FAffinity_2023-10-19T07%3A43%3A01.756163?alt=media&token=a0c58166-e23f-4948-8407-45ccff4ecacb';
			case 'project.projects.4.created_at': return '2023-10-19T07:43:13.137047';
			case 'project.projects.4.description': return 'Affinity là một ứng dụng hẹn hò địa phương vượt xa việc vuốt trên màn hình và kết nối nông cạn.';
			case 'project.projects.4.external_link': return '';
			case 'project.projects.4.github_link': return '';
			case 'project.projects.4.images.0': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/project-images%2FAffinity_2023-10-19T07%3A43%3A07.404722?alt=media&token=37a58e93-7d40-46f0-b182-c1d766d9a015';
			case 'project.projects.4.is_personal': return 'true';
			case 'project.projects.4.name': return 'Affinity';
			case 'project.projects.4.playstore_link': return 'https://play.google.com/store/apps/details?id=com.sleepingpanda.affinity';
			case 'project.projects.4.tech.0': return 'Flutter';
			case 'project.projects.4.tech.1': return 'Dart';
			case 'project.projects.4.tech.2': return 'Firebase';
			case 'project.projects.4.tech.3': return 'Adobe XD';
			case 'project.projects.4.tech.4': return 'Codemagic (CI/CD)';
			case 'project.projects.4.type': return 'Mobile';
			case 'skills.skills.0.date': return '2022-12-06T15:05:22.268253';
			case 'skills.skills.0.des': return 'The HyperText Markup Language or HTML is the standard markup language for documents designed to be displayed in a web browser.';
			case 'skills.skills.0.hidden': return 'false';
			case 'skills.skills.0.img': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FHTML?alt=media&token=4d0a35d0-3726-4182-a6fd-fc000a409b5a';
			case 'skills.skills.0.name': return 'HTML';
			case 'skills.skills.1.date': return '2022-12-06T15:06:35.630660';
			case 'skills.skills.1.des': return 'Cascading Style Sheets is a style sheet language used for describing the presentation of a document written in a markup language such as HTML.';
			case 'skills.skills.1.hidden': return 'false';
			case 'skills.skills.1.img': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FCSS?alt=media&token=0e0d0e0b-bb9c-41ea-b2b7-0a37b1815092';
			case 'skills.skills.1.name': return 'CSS';
			case 'skills.skills.2.date': return '2022-12-06T15:07:09.232675';
			case 'skills.skills.2.des': return 'JS is a programming language that is one of the core technologies of the World Wide Web, alongside HTML and CSS.';
			case 'skills.skills.2.hidden': return 'false';
			case 'skills.skills.2.img': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FJavaScript?alt=media&token=640c6f32-cb7f-4752-a2d3-7a4477048688';
			case 'skills.skills.2.name': return 'JavaScript';
			case 'skills.skills.3.date': return '2022-12-06T15:07:31.798027';
			case 'skills.skills.3.des': return 'Git is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency.';
			case 'skills.skills.3.hidden': return 'false';
			case 'skills.skills.3.img': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FGit?alt=media&token=cd9be5b5-dca4-4d78-b84a-864d0a31c919';
			case 'skills.skills.3.name': return 'Git';
			case 'skills.skills.4.date': return '2022-12-06T15:08:03.833114';
			case 'skills.skills.4.des': return 'Adobe XD is a prototyping tool for user experience and interaction designers used to design websites, mobile apps, and more. Design at the speed of thought.';
			case 'skills.skills.4.hidden': return 'false';
			case 'skills.skills.4.img': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FAdobe%20XD?alt=media&token=3dddc27d-b63b-4ed6-b515-ff60db6ec01a';
			case 'skills.skills.4.name': return 'Adobe XD';
			case 'skills.skills.5.date': return '2022-12-06T15:09:18.175658';
			case 'skills.skills.5.des': return 'Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications for Android, iOS, Linux, macOS, Windows, Google Fuchsia, and the web from a single codebase.';
			case 'skills.skills.5.hidden': return 'false';
			case 'skills.skills.5.img': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FFlutter?alt=media&token=1b4e6984-6d9c-436c-8366-9843eb8c2836';
			case 'skills.skills.5.name': return 'Flutter';
			case 'skills.skills.6.date': return '2022-12-06T15:10:01.509497';
			case 'skills.skills.6.des': return 'Dart is a programming language designed for client development, such as for the web and mobile apps.';
			case 'skills.skills.6.hidden': return 'false';
			case 'skills.skills.6.img': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FDart?alt=media&token=82f1a59e-cf39-4e17-9f95-b5f39d8654a6';
			case 'skills.skills.6.name': return 'Dart';
			case 'skills.skills.7.date': return '2022-12-06T15:10:26.815054';
			case 'skills.skills.7.des': return 'Firebase is a Backend-as-a-Service (Baas). It provides developers with a variety of tools and services to help them develop quality apps. It is built on Google’s infrastructure.';
			case 'skills.skills.7.hidden': return 'false';
			case 'skills.skills.7.img': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FFirebase?alt=media&token=d1f23b7d-2cd7-4ff9-ab5e-4a9e746fa714';
			case 'skills.skills.7.name': return 'Firebase';
			case 'skills.skills.8.date': return '2022-12-06T15:10:53.810314';
			case 'skills.skills.8.des': return 'Node.js is an open source, cross-platform runtime environment for developing server-side and networking applications. Node.js applications are written in JavaScript, and can be run within the Node.js runtime on OS X, Microsoft Windows, and Linux.';
			case 'skills.skills.8.hidden': return 'true';
			case 'skills.skills.8.img': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FNode%20Js?alt=media&token=9441f167-b169-4fee-9d0e-e58683d5a1fa';
			case 'skills.skills.8.name': return 'Node Js';
			case 'skills.skills.9.date': return '2022-12-06T15:11:22.396871';
			case 'skills.skills.9.des': return 'MongoDB is an open source cross-platform document-oriented database program. Classified as a NoSQL database program, MongoDB uses JSON-like documents with optional schemas.';
			case 'skills.skills.9.hidden': return 'true';
			case 'skills.skills.9.img': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FMongoDb?alt=media&token=6174ec12-d249-48fe-94b2-caa19436c8cb';
			case 'skills.skills.9.name': return 'MongoDb';
			case 'skills.skills.10.date': return '2022-12-13T06:42:40.468743';
			case 'skills.skills.10.des': return 'TypeScript is a free and open source programming language developed and maintained by Microsoft. It is a strict syntactical superset of JavaScript and adds optional static typing to the language.';
			case 'skills.skills.10.hidden': return 'false';
			case 'skills.skills.10.img': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FTypeScript?alt=media&token=ba5d81bb-4dfb-49dd-8e0d-da22d0a03e08';
			case 'skills.skills.10.name': return 'TypeScript';
			case 'skills.skills.11.date': return '2022-12-13T06:51:19.229714';
			case 'skills.skills.11.des': return 'React is a free and open-source front-end JavaScript library for building user interfaces based on UI components.';
			case 'skills.skills.11.hidden': return 'false';
			case 'skills.skills.11.img': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FReact%20Js?alt=media&token=864bfc4f-bab3-49b7-804b-0f86b2480018';
			case 'skills.skills.11.name': return 'React Js';
			case 'skills.skills.12.date': return '2023-08-05T07:30:26.081916';
			case 'skills.skills.12.des': return 'CodeMagic is a continuous integration and delivery (CI/CD) platform specifically designed for mobile app development. It is primarily used for building, testing, and distributing mobile apps on both iOS and Android platforms.';
			case 'skills.skills.12.hidden': return 'false';
			case 'skills.skills.12.img': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FCodemagic%20(CI%2FCD)?alt=media&token=4b1f2119-e086-4144-8c89-da990b5afff7';
			case 'skills.skills.12.name': return 'Codemagic (CI/CD)';
			default: return null;
		}
	}
}

extension on _TranslationsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'experience.experiences.0.company': return 'Omnis Corporation';
			case 'experience.experiences.0.country': return 'Zambia';
			case 'experience.experiences.0.created_at': return '2022-12-31T14:23:43.877077';
			case 'experience.experiences.0.emp_type': return 'Part - Time';
			case 'experience.experiences.0.end_date': return '2022-03-07T00:00:00.000';
			case 'experience.experiences.0.is_hidden': return 'false';
			case 'experience.experiences.0.position': return 'UI / UX Designer & Flutter Developer';
			case 'experience.experiences.0.start_date': return '2021-01-05T00:00:00.000';
			case 'experience.experiences.0.state': return 'Lusaka';
			case 'experience.experiences.0.work_done': return 'Designed clean & Simple yet thoughtful UI/UX design patterns for both mobile and web apps.#Built both mobile and web applications with interactive & responsive layouts.#API integrations throughout a software to keep data in sync and enhance productivity.';
			case 'experience.experiences.0.works_here': return 'false';
			case 'experience.experiences.1.company': return 'Lassod Consulting Limited';
			case 'experience.experiences.1.country': return 'UK';
			case 'experience.experiences.1.created_at': return '2022-12-31T14:28:07.703644';
			case 'experience.experiences.1.emp_type': return 'Full - Time';
			case 'experience.experiences.1.is_hidden': return 'false';
			case 'experience.experiences.1.position': return 'Software Engineer (Remote)';
			case 'experience.experiences.1.site_url': return 'lassod.com';
			case 'experience.experiences.1.start_date': return '2022-03-07T00:00:00.000';
			case 'experience.experiences.1.state': return 'England';
			case 'experience.experiences.1.work_done': return 'Write modern, performant, maintainable code for a diverse array of client and internal projects with Flutter & Dart.#Communicate with multi-disciplinary teams of engineers, designers and clients on a daily basis.#Work with a variety of different languages, platforms, frameworks, and content management systems such as Dart, Flutter, Github, Gitlab, Jira and Time Management.';
			case 'experience.experiences.1.works_here': return 'true';
			case 'experience.experiences.2.company': return 'Pynch Technology';
			case 'experience.experiences.2.country': return 'Zambia';
			case 'experience.experiences.2.created_at': return '2023-01-01T14:51:02.923189';
			case 'experience.experiences.2.emp_type': return 'Part - Time';
			case 'experience.experiences.2.is_hidden': return 'false';
			case 'experience.experiences.2.position': return 'Mobile Developer (Remote)';
			case 'experience.experiences.2.site_url': return 'pynch.co.zm';
			case 'experience.experiences.2.start_date': return '2022-11-07T00:00:00.000';
			case 'experience.experiences.2.state': return 'Lusaka';
			case 'experience.experiences.2.work_done': return 'Designing, developing, testing and implementing mobile applications using the Flutter framework.#Working closely with the backend engineer and UI/UX designer to ensure proper integration in mobile applications.';
			case 'experience.experiences.2.works_here': return 'true';
			case 'tabs.tabs.0': return 'Home';
			case 'tabs.tabs.1': return 'About';
			case 'tabs.tabs.2': return 'Skills';
			case 'tabs.tabs.3': return 'Experience';
			case 'tabs.tabs.4': return 'Projects';
			case 'tabs.tabs.5': return 'Contact';
			case 'tabs.tabs.6': return 'Download CV';
			case 'about.name': return 'Chung Nguyen Thanh';
			case 'about.aboutMe': return 'As a software engineer and UI/UX designer with extensive experience in Flutter, Dart, Firebase, and design, I am passionate about developing innovative and engaging digital experiences that meet the needs of users.\n\nWith a strong foundation in software engineering and design principles, I am adept at crafting high-quality code and intuitive user interfaces. I have experience in designing and developing user-friendly, cross-platform mobile applications using Flutter and Dart.\n\nAs a skilled designer, I can create engaging visuals, intuitive layouts, and an exceptional user experience. I have experience in user research, wireframing, prototyping, and designing user interfaces for mobile apps and web-based applications.\n\nI am highly proficient in Firebase, including Firestore, Realtime Database, and Firebase Cloud Messaging. I have used these technologies to build real-time collaborative applications, messaging systems, and cloud-based applications.\n\nThroughout my career, I have demonstrated strong collaboration skills, working closely with product managers, designers, and other developers to ensure that projects are delivered on time and to a high standard.\n\nIn summary, I am a highly skilled software engineer and UI/UX designer with expertise in Flutter, Dart, Firebase, and design. I am passionate about building innovative and engaging digital experiences that meet the needs of users and strive to deliver high-quality code and intuitive user interfaces for all projects.';
			case 'about.aboutCard.0.content': return 'I value simple, clean design patterns, and thoughtful interactions.';
			case 'about.aboutCard.0.iconPath': return 'assets/vector.png';
			case 'about.aboutCard.0.title': return 'UI/UX Design';
			case 'about.aboutCard.1.content': return 'Using Flutter & Dart, I build fast, interactive apps & websites.';
			case 'about.aboutCard.1.iconPath': return 'assets/programming-code-signs.png';
			case 'about.aboutCard.1.title': return 'Front-End Development';
			case 'about.aboutCard.2.content': return 'API integrations throughout a software to keep data in sync and enhance productivity.';
			case 'about.aboutCard.2.iconPath': return 'assets/api.png';
			case 'about.aboutCard.2.title': return 'API Integration';
			case 'about.aboutCard.3.content': return 'I enjoy bringing ideas to life on the phone or in the browser.';
			case 'about.aboutCard.3.iconPath': return 'assets/web-development.png';
			case 'about.aboutCard.3.title': return 'Mobile/Web Development';
			case 'general.title_introduction_about_section': return 'Introduction';
			case 'general.name_about_section': return 'Chung Nguyen Thanh';
			case 'general.title_about_section': return 'About';
			case 'general.title_contact_section': return 'Contact';
			case 'general.title_contact_me_section': return 'Contact Me';
			case 'general.get_in_touch_contact_section': return 'Get in touch';
			case 'general.feel_free_contact_section': return 'Feel free to get in touch';
			case 'general.hint_your_name_contact_section': return 'Your name';
			case 'general.hint_your_email_contact_section': return 'Your email';
			case 'general.hint_message_contact_section': return 'Type your message';
			case 'general.btn_send_contact_section': return 'Send';
			case 'general.title_experience_section': return 'Work Experience';
			case 'general.title_project_section': return 'Projects';
			case 'general.title_personal_projects_project_section': return 'Personal Projects';
			case 'general.title_client_projects_project_section': return 'Work/Client Projects';
			case 'general.m_title_personal_projects_project_section': return 'Personal';
			case 'general.m_title_client_projects_project_section': return 'Work/Client';
			case 'general.title_all_projects_project_section': return 'All Projects';
			case 'general.title_skill_section': return 'Skills';
			case 'general.hi_about_section': return 'Hi there! I\'m ';
			case 'general.introduce_home_section1': return 'I am a Software Development Engineer for Consumer Product Line (Phone, Set-top Box,...) and a Flutter Developer.';
			case 'general.introduce_home_section2': return 'I build system applications for AOSP, ATV in the Consumer Product Line and build websites and interactive software applications that run on multiple platforms and devices.';
			case 'general.browse_projects_home_section': return 'Browse Projects';
			case 'general.required_input_field': return 'This field is required';
			case 'project.projects.0.cover_img': return 'https://i.ibb.co/3Fv9QRt/port.png';
			case 'project.projects.0.created_at': return '2023-01-28T23:08:58.657311';
			case 'project.projects.0.description': return 'Personal Portfolio Site showcases some of the projects I\'ve built so far.';
			case 'project.projects.0.external_link': return 'https://ericknamukolo.com';
			case 'project.projects.0.github_link': return 'https://github.com/ericknamukolo/ericknamukolo.github.io';
			case 'project.projects.0.images.0': return 'https://i.ibb.co/3Fv9QRt/port.png';
			case 'project.projects.0.images.1': return 'https://i.ibb.co/7bFG4jV/about.png';
			case 'project.projects.0.is_personal': return 'true';
			case 'project.projects.0.name': return 'Portfolio';
			case 'project.projects.0.playstore_link': return '';
			case 'project.projects.0.tech.0': return 'Flutter';
			case 'project.projects.0.tech.1': return 'Dart';
			case 'project.projects.0.tech.2': return 'Firebase';
			case 'project.projects.0.type': return 'Web/Windows';
			case 'project.projects.1.cover_img': return 'https://i.ibb.co/phdq570/Chill-Poster.png';
			case 'project.projects.1.created_at': return '2023-07-23T10:01:04.233883';
			case 'project.projects.1.description': return 'Chill Hub is a windows/mobile application that allows you to browse, search & download high-quality movies.';
			case 'project.projects.1.external_link': return 'https://drive.google.com/file/d/14s_CpbkhbfDEdZHKBc5pqBBW9Lzy-8ze/view?usp=sharing';
			case 'project.projects.1.github_link': return 'https://github.com/ericknamukolo/chill-hub';
			case 'project.projects.1.images.0': return 'https://i.ibb.co/HHrCTDp/chill.png';
			case 'project.projects.1.images.1': return 'https://i.ibb.co/syBDzwn/chill1.png';
			case 'project.projects.1.images.2': return 'https://i.ibb.co/Gvg2qgd/chill2.png';
			case 'project.projects.1.images.3': return 'https://i.ibb.co/YtKYZGh/chill3.png';
			case 'project.projects.1.images.4': return 'https://i.ibb.co/pnzsT18/chill4.png';
			case 'project.projects.1.is_personal': return 'true';
			case 'project.projects.1.name': return 'Chill Hub';
			case 'project.projects.1.playstore_link': return 'https://play.google.com/store/apps/details?id=com.ericknamukolo.chillhub';
			case 'project.projects.1.tech.0': return 'Flutter';
			case 'project.projects.1.tech.1': return 'Dart';
			case 'project.projects.1.tech.2': return 'API';
			case 'project.projects.1.type': return 'Mobile';
			case 'project.projects.2.cover_img': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/project-images%2FVent%20zm_2023-08-18T18%3A53%3A41.749750?alt=media&token=acca1990-8ad3-4425-9e9f-b40bd2a52ac6';
			case 'project.projects.2.created_at': return '2023-08-18T18:53:52.173068';
			case 'project.projects.2.description': return 'Vent is a unique platform that lets you express yourself freely without any fear of judgment or repercussion. It\'s a safe space where you can anonymously share your confessions, thoughts, and vents with a supportive community of like-minded individuals who are ready to lend a listening ear.';
			case 'project.projects.2.external_link': return '';
			case 'project.projects.2.github_link': return '';
			case 'project.projects.2.images.0': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/project-images%2FVent%20zm_2023-08-18T18%3A53%3A47.120338?alt=media&token=edca8147-1976-4e13-b339-758a2f01aa88';
			case 'project.projects.2.is_personal': return 'true';
			case 'project.projects.2.name': return 'Vent';
			case 'project.projects.2.playstore_link': return 'https://play.google.com/store/apps/details?id=com.ericknamukolo.confessions';
			case 'project.projects.2.tech.0': return 'Flutter';
			case 'project.projects.2.tech.1': return 'Dart';
			case 'project.projects.2.tech.2': return 'Firebase';
			case 'project.projects.2.type': return 'Mobile';
			case 'project.projects.3.cover_img': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/project-images%2FBody%20Touch_2023-09-02T17%3A11%3A23.701593?alt=media&token=248042a5-4500-46a8-bb85-2ef4fbf4440e';
			case 'project.projects.3.created_at': return '2023-09-02T17:11:36.508349';
			case 'project.projects.3.description': return 'Body Touch là một nền tảng giúp bạn tìm và đặt lịch các thợ mát-xa chuyên nghiệp đã được chứng nhận gần bạn.\n\nTHÀNH VIÊN NHÓM\n~ Erick & Kuda [Frontend]\n~ Eugene [Backend]';
			case 'project.projects.3.external_link': return 'https://bodyheatmassage.com.au';
			case 'project.projects.3.github_link': return '';
			case 'project.projects.3.images.0': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/project-images%2FBody%20Touch_2023-09-02T17%3A11%3A30.493795?alt=media&token=37ac8fb9-dffd-45dc-ab5b-2cb6f8660109';
			case 'project.projects.3.is_personal': return 'false';
			case 'project.projects.3.name': return 'Body Touch';
			case 'project.projects.3.playstore_link': return 'https://play.google.com/store/apps/details?id=zm.co.pynch.massageapp';
			case 'project.projects.3.tech.0': return 'Flutter';
			case 'project.projects.3.tech.1': return 'Dart';
			case 'project.projects.3.tech.2': return 'Firebase';
			case 'project.projects.3.tech.3': return 'Google Maps';
			case 'project.projects.3.tech.4': return 'PHP';
			case 'project.projects.3.type': return 'Mobile';
			case 'project.projects.4.cover_img': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/project-images%2FAffinity_2023-10-19T07%3A43%3A01.756163?alt=media&token=a0c58166-e23f-4948-8407-45ccff4ecacb';
			case 'project.projects.4.created_at': return '2023-10-19T07:43:13.137047';
			case 'project.projects.4.description': return 'Affinity là một ứng dụng hẹn hò địa phương vượt xa việc vuốt trên màn hình và kết nối nông cạn.';
			case 'project.projects.4.external_link': return '';
			case 'project.projects.4.github_link': return '';
			case 'project.projects.4.images.0': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/project-images%2FAffinity_2023-10-19T07%3A43%3A07.404722?alt=media&token=37a58e93-7d40-46f0-b182-c1d766d9a015';
			case 'project.projects.4.is_personal': return 'true';
			case 'project.projects.4.name': return 'Affinity';
			case 'project.projects.4.playstore_link': return 'https://play.google.com/store/apps/details?id=com.sleepingpanda.affinity';
			case 'project.projects.4.tech.0': return 'Flutter';
			case 'project.projects.4.tech.1': return 'Dart';
			case 'project.projects.4.tech.2': return 'Firebase';
			case 'project.projects.4.tech.3': return 'Adobe XD';
			case 'project.projects.4.tech.4': return 'Codemagic (CI/CD)';
			case 'project.projects.4.type': return 'Mobile';
			case 'skills.skills.0.date': return '2022-12-06T15:05:22.268253';
			case 'skills.skills.0.des': return 'The HyperText Markup Language or HTML is the standard markup language for documents designed to be displayed in a web browser.';
			case 'skills.skills.0.hidden': return 'false';
			case 'skills.skills.0.img': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FHTML?alt=media&token=4d0a35d0-3726-4182-a6fd-fc000a409b5a';
			case 'skills.skills.0.name': return 'HTML';
			case 'skills.skills.1.date': return '2022-12-06T15:06:35.630660';
			case 'skills.skills.1.des': return 'Cascading Style Sheets is a style sheet language used for describing the presentation of a document written in a markup language such as HTML.';
			case 'skills.skills.1.hidden': return 'false';
			case 'skills.skills.1.img': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FCSS?alt=media&token=0e0d0e0b-bb9c-41ea-b2b7-0a37b1815092';
			case 'skills.skills.1.name': return 'CSS';
			case 'skills.skills.2.date': return '2022-12-06T15:07:09.232675';
			case 'skills.skills.2.des': return 'JS is a programming language that is one of the core technologies of the World Wide Web, alongside HTML and CSS.';
			case 'skills.skills.2.hidden': return 'false';
			case 'skills.skills.2.img': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FJavaScript?alt=media&token=640c6f32-cb7f-4752-a2d3-7a4477048688';
			case 'skills.skills.2.name': return 'JavaScript';
			case 'skills.skills.3.date': return '2022-12-06T15:07:31.798027';
			case 'skills.skills.3.des': return 'Git is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency.';
			case 'skills.skills.3.hidden': return 'false';
			case 'skills.skills.3.img': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FGit?alt=media&token=cd9be5b5-dca4-4d78-b84a-864d0a31c919';
			case 'skills.skills.3.name': return 'Git';
			case 'skills.skills.4.date': return '2022-12-06T15:08:03.833114';
			case 'skills.skills.4.des': return 'Adobe XD is a prototyping tool for user experience and interaction designers used to design websites, mobile apps, and more. Design at the speed of thought.';
			case 'skills.skills.4.hidden': return 'false';
			case 'skills.skills.4.img': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FAdobe%20XD?alt=media&token=3dddc27d-b63b-4ed6-b515-ff60db6ec01a';
			case 'skills.skills.4.name': return 'Adobe XD';
			case 'skills.skills.5.date': return '2022-12-06T15:09:18.175658';
			case 'skills.skills.5.des': return 'Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications for Android, iOS, Linux, macOS, Windows, Google Fuchsia, and the web from a single codebase.';
			case 'skills.skills.5.hidden': return 'false';
			case 'skills.skills.5.img': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FFlutter?alt=media&token=1b4e6984-6d9c-436c-8366-9843eb8c2836';
			case 'skills.skills.5.name': return 'Flutter';
			case 'skills.skills.6.date': return '2022-12-06T15:10:01.509497';
			case 'skills.skills.6.des': return 'Dart is a programming language designed for client development, such as for the web and mobile apps.';
			case 'skills.skills.6.hidden': return 'false';
			case 'skills.skills.6.img': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FDart?alt=media&token=82f1a59e-cf39-4e17-9f95-b5f39d8654a6';
			case 'skills.skills.6.name': return 'Dart';
			case 'skills.skills.7.date': return '2022-12-06T15:10:26.815054';
			case 'skills.skills.7.des': return 'Firebase is a Backend-as-a-Service (Baas). It provides developers with a variety of tools and services to help them develop quality apps. It is built on Google’s infrastructure.';
			case 'skills.skills.7.hidden': return 'false';
			case 'skills.skills.7.img': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FFirebase?alt=media&token=d1f23b7d-2cd7-4ff9-ab5e-4a9e746fa714';
			case 'skills.skills.7.name': return 'Firebase';
			case 'skills.skills.8.date': return '2022-12-06T15:10:53.810314';
			case 'skills.skills.8.des': return 'Node.js is an open source, cross-platform runtime environment for developing server-side and networking applications. Node.js applications are written in JavaScript, and can be run within the Node.js runtime on OS X, Microsoft Windows, and Linux.';
			case 'skills.skills.8.hidden': return 'true';
			case 'skills.skills.8.img': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FNode%20Js?alt=media&token=9441f167-b169-4fee-9d0e-e58683d5a1fa';
			case 'skills.skills.8.name': return 'Node Js';
			case 'skills.skills.9.date': return '2022-12-06T15:11:22.396871';
			case 'skills.skills.9.des': return 'MongoDB is an open source cross-platform document-oriented database program. Classified as a NoSQL database program, MongoDB uses JSON-like documents with optional schemas.';
			case 'skills.skills.9.hidden': return 'true';
			case 'skills.skills.9.img': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FMongoDb?alt=media&token=6174ec12-d249-48fe-94b2-caa19436c8cb';
			case 'skills.skills.9.name': return 'MongoDb';
			case 'skills.skills.10.date': return '2022-12-13T06:42:40.468743';
			case 'skills.skills.10.des': return 'TypeScript is a free and open source programming language developed and maintained by Microsoft. It is a strict syntactical superset of JavaScript and adds optional static typing to the language.';
			case 'skills.skills.10.hidden': return 'false';
			case 'skills.skills.10.img': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FTypeScript?alt=media&token=ba5d81bb-4dfb-49dd-8e0d-da22d0a03e08';
			case 'skills.skills.10.name': return 'TypeScript';
			case 'skills.skills.11.date': return '2022-12-13T06:51:19.229714';
			case 'skills.skills.11.des': return 'React is a free and open-source front-end JavaScript library for building user interfaces based on UI components.';
			case 'skills.skills.11.hidden': return 'false';
			case 'skills.skills.11.img': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FReact%20Js?alt=media&token=864bfc4f-bab3-49b7-804b-0f86b2480018';
			case 'skills.skills.11.name': return 'React Js';
			case 'skills.skills.12.date': return '2023-08-05T07:30:26.081916';
			case 'skills.skills.12.des': return 'CodeMagic is a continuous integration and delivery (CI/CD) platform specifically designed for mobile app development. It is primarily used for building, testing, and distributing mobile apps on both iOS and Android platforms.';
			case 'skills.skills.12.hidden': return 'false';
			case 'skills.skills.12.img': return 'https://firebasestorage.googleapis.com/v0/b/portfolio-28840.appspot.com/o/skill-icons%2FCodemagic%20(CI%2FCD)?alt=media&token=4b1f2119-e086-4144-8c89-da990b5afff7';
			case 'skills.skills.12.name': return 'Codemagic (CI/CD)';
			default: return null;
		}
	}
}
