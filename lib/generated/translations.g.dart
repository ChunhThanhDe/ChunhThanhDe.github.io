/// Generated file. Do not edit.
///
/// Original: i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 344 (172 per locale)
///
/// Built on 2024-02-19 at 03:11 UTC

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
	];
}

// Path: tabs
class _TranslationsTabsVi {
	_TranslationsTabsVi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	List<String> get tabs => [
		'Trang chủ',
		'Về tôi',
		'Kỹ năng',
		'Kinh nghiệm',
		'Các dự án',
		'Liên hệ',
		'Tải về CV',
	];
}

// Path: about
class _TranslationsAboutVi {
	_TranslationsAboutVi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => 'Nguyễn Thành Chung';
	String get aboutMe => 'Là một nhà phát triển phần mềm có năng lực, tôi luôn tích luỹ kỹ năng, kinh nghiệm, trải nghiệm trong quá trình xây dựng và phát triển các ứng dụng và hệ thống phần mềm. Tôi đã làm việc trong vai trò kỹ sư phát triển phần mềm cho dòng sản phẩm điện thoại và smart box, chẳng hạn như việc tích hợp phát triển các dịch vụ và ứng dụng hệ thống vào mã nguồn Android TV và AOSP.\n\nTôi có hiểu biết và kĩ năng tốt trong việc sử dụng Flutter, Dart, Java, Spring boot để thiết kế và tạo ra những ứng dụng đa nền tảng, hệ thống đem đến những trải nghiệm kỹ thuật số hấp dẫn, thân thiện thiện với người dùng.\n\nVới kiến thức sâu về công nghệ phần mềm và nguyên tắc phân tích thiết kế hệ thống, tôi luôn đảm bảo rằng mã nguồn mà tôi tạo ra đạt chất lượng cao với giao diện người dùng trực quan. Tôi có kinh nghiệm trong việc phân tích thiết kế hệ thống phần mềm cho ứng dụng di động và trang web, và đã thực hiện nghiên cứu người dùng, tạo mẫu và thiết kế một số sản phẩm độc đáo và hấp dẫn.\n\nNgoài ra, tôi cũng có kiến thức về triển khai hệ thống với ASUZE và AWS. Điều này cho phép tôi xây dựng hệ thống phức tạp và mạnh mẽ, đáp ứng được nhiều yêu cầu và đảm bảo hiệu suất cao.\n\nTrong quá trình làm việc, tôi đã chứng tỏ khả năng làm việc độc lập đồng thời có khả năng làm việc nhóm mạnh mẽ và hợp tác chặt chẽ với các thành viên khác trong dự án. Tôi đã tham gia vào quá trình đánh giá khả thi, tìm kiếm giải pháp, xây dựng kế hoạch phát triển và kiểm thử cùng với các nhà thiết kế và nhà phát triển khác. Tôi luôn đảm bảo rằng các dự án được hoàn thành đúng thời hạn và đạt tiêu chuẩn chất lượng cao.\n\nTôi luôn tìm kiếm cơ hội để áp dụng kiến thức và kỹ năng của mình vào việc phát triển phần mềm đột phá, mang lại giá trị cao cho xã hội. Tôi đam mê việc tạo ra những sản phẩm tuyệt vời và đáp ứng nhu cầu của người dùng. Tôi luôn sẵn sàng để đóng góp vào các dự án hấp dẫn và thú vị, và mong muốn tiếp tục phát triển và mở rộng khả năng của mình trong lĩnh vực phát triển phần mềm.';
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
	String get vietnam => 'Tiếng Việt';
	String get english => 'Tiếng Anh';
	String get thank_you => 'Cảm ơn bạn đã liên hệ với tôi';
	String get get_back => 'Tôi sẽ liên hệ lại với bạn sớm';
	String get title_introduction_about_section => 'Giới thiệu';
	String get title_about_section => 'Thông tin cá nhân';
	String get title_contact_section => 'Liên hệ';
	String get title_contact_me_section => 'Liên hệ với tôi';
	String get get_in_touch_contact_section => 'Liên hệ ngay';
	String get feel_free_contact_section => 'Hãy thoải mái liên hệ với tôi';
	String get hint_your_name_contact_section => 'Họ và tên của bạn';
	String get hint_your_email_contact_section => 'Địa chỉ email của bạn';
	String get hint_message_contact_section => 'Nhập nội dung tin nhắn';
	String get btn_send_contact_section => 'Gửi';
	String get title_experience_section => 'Kinh nghiệm làm việc';
	String get title_project_section => 'Dự án';
	String get title_personal_projects_project_section => 'Dự án cá nhân';
	String get title_client_projects_project_section => 'Dự án công việc';
	String get m_title_personal_projects_project_section => 'Cá nhân';
	String get m_title_client_projects_project_section => 'Công việc';
	String get title_all_projects_project_section => 'Tất cả dự án';
	String get title_skill_section => 'Kỹ năng';
	String get hi_about_section => 'Xin chào! Tôi là ';
	String get introduce_home_section1 => 'Tôi là Kỹ sư Phát triển Phần mềm cho Dòng sản phẩm Tiêu dùng (Điện thoại, Set-top Box,...) và là một Lập trình viên Flutter.';
	String get introduce_home_section2 => 'Tôi xây dựng các ứng dụng hệ thống cho AOSP, ATV trong Dòng sản phẩm Tiêu dùng và xây dựng các trang web và ứng dụng phần mềm tương tác chạy trên nhiều nền tảng và thiết bị.';
	String get browse_projects_home_section => 'Các dự án';
	String get required_input_field => 'Trường này là bắt buộc';
	String get copy => 'Đã sao chép vào clipboard';
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
	];
}

// Path: experience.experiences.0
class _TranslationsExperience$experiences$0i0$Vi {
	_TranslationsExperience$experiences$0i0$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get company => 'VNPT Technology';
	String get country => 'Việt Nam';
	String get emp_type => 'Full - Time';
	String get position => 'Software Engineer (Onsite)';
	String get site_url => 'www.vnpt-technology.vn';
	String get start_date => '2022-08-15T00:00:00.000';
	String get state => 'Hà Nội';
	String get work_done => 'Phát triển ứng dụng hệ thống cho dòng sản phẩm SmartBox 2 AOSP, SmartBox 2 ATV và SmartBox 3 ATV bao gồm các ứng dụng cập nhật firmware OTA, Security Uboot, Security Setting.# Nghiên cứu định hướng các giải pháp phát triển cho dòng sản phẩm SmartBox # Xây dựng hệ thống  Quản lý các thiết bị đầu cuối SmartBox - TMS (Terminal Management system) # Phát triển các ứng dụng triển khai eSOP bằng Flutter & Dart cho dòng sản phẩm SmartBox';
	String get works_here => 'true';
}

// Path: about.aboutCard.0
class _TranslationsAbout$aboutCard$0i0$Vi {
	_TranslationsAbout$aboutCard$0i0$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get content => 'Tôi đánh giá cao các mẫu thiết kế hệ thống đơn giản, rõ ràng và đầy đủ các tương tác chu đáo..';
	String get iconPath => 'assets/vector.png';
	String get title => 'Back-End Development';
}

// Path: about.aboutCard.1
class _TranslationsAbout$aboutCard$0i1$Vi {
	_TranslationsAbout$aboutCard$0i1$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get content => 'Sử dụng Flutter & Dart, tôi có thể xây dựng các ứng dụng và trang web cho hệ thống của mình.';
	String get iconPath => 'assets/programming-code-signs.png';
	String get title => 'Front-End Development';
}

// Path: about.aboutCard.2
class _TranslationsAbout$aboutCard$0i2$Vi {
	_TranslationsAbout$aboutCard$0i2$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get content => 'Tích hợp API trong toàn bộ phần mềm để giữ cho dữ liệu được đồng bộ hóa và nâng cao năng suất.';
	String get iconPath => 'assets/api.png';
	String get title => 'API Integration';
}

// Path: about.aboutCard.3
class _TranslationsAbout$aboutCard$0i3$Vi {
	_TranslationsAbout$aboutCard$0i3$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get content => 'Tôi thích xây dựng những ứng dụng có ích cho cộng đồng, khiến cuộc sống của mọi người trở nên đơn giản hơn.';
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
	String get date => '2022-12-06T15:07:31.798027';
	String get des => 'Git là một hệ thống quản lý phiên bản phân tán miễn phí và mã nguồn mở, được thiết kế để xử lý từ dự án nhỏ đến rất lớn với tốc độ và hiệu suất cao';
	String get img => 'https://cdn3.iconfinder.com/data/icons/social-media-2169/24/social_media_social_media_logo_git-512.png';
	String get name => 'Git';
}

// Path: skills.skills.1
class _TranslationsSkills$skills$0i1$Vi {
	_TranslationsSkills$skills$0i1$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get date => '2022-12-06T15:09:18.175658';
	String get des => 'Flutter là bộ công cụ phát triển phần mềm UI nguồn mở do Google tạo ra. Nó được sử dụng để phát triển các ứng dụng đa nền tảng từ một cơ sở mã duy nhất cho mọi trình duyệt web, Fuchsia, Android, iOS, Linux, macOS và Windows.';
	String get img => 'https://img.icons8.com/?size=512&id=5pu47piHKg1I&format=png';
	String get name => 'Flutter';
}

// Path: skills.skills.2
class _TranslationsSkills$skills$0i2$Vi {
	_TranslationsSkills$skills$0i2$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get date => '2022-12-06T15:10:26.815054';
	String get des => 'Firebase là một dịch vụ Backend-as-a-Service (Baas). Nó cung cấp cho các nhà phát triển một loạt các công cụ và dịch vụ để giúp họ phát triển các ứng dụng chất lượng. Firebase được xây dựng trên cơ sở hạ tầng của Google.';
	String get img => 'https://img.icons8.com/?size=512&id=62452&format=png';
	String get name => 'Firebase';
}

// Path: skills.skills.3
class _TranslationsSkills$skills$0i3$Vi {
	_TranslationsSkills$skills$0i3$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get date => '2022-12-06T15:11:22.396871';
	String get des => 'MongoDB là một chương trình cơ sở dữ liệu hướng tài liệu mã nguồn mở, đa nền tảng. MongoDB được phân loại là chương trình cơ sở dữ liệu NoSQL, sử dụng tài liệu giống JSON với các schema tùy chọn';
	String get img => 'https://img.icons8.com/?size=512&id=tBBf3P8HL0vR&format=png';
	String get name => 'MongoDb';
}

// Path: skills.skills.4
class _TranslationsSkills$skills$0i4$Vi {
	_TranslationsSkills$skills$0i4$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get date => '2022-12-06T15:11:22.396871';
	String get des => 'SQL (Structured Query Language) là ngôn ngữ truy vấn dùng để quản lý và truy xuất cơ sở dữ liệu quan hệ. SQL cho phép thực hiện các thao tác như tạo, truy vấn, cập nhật và xóa dữ liệu trong cơ sở dữ liệu.';
	String get img => 'https://img.icons8.com/?size=512&id=qGUfLiYi1bRN&format=png';
	String get name => 'SQL';
}

// Path: skills.skills.5
class _TranslationsSkills$skills$0i5$Vi {
	_TranslationsSkills$skills$0i5$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get date => '2022-12-06T15:11:22.396871';
	String get des => 'Spring Boot là một framework phát triển ứng dụng Java. Nó cung cấp các công cụ và thư viện giúp dễ dàng xây dựng ứng dụng Java mà không cần quá nhiều cấu hình. Spring Boot giúp tăng năng suất phát triển và giảm đáng kể số lượng mã lặp lại.';
	String get img => 'https://img.icons8.com/?size=512&id=90519&format=png';
	String get name => 'Spring Boot';
}

// Path: skills.skills.6
class _TranslationsSkills$skills$0i6$Vi {
	_TranslationsSkills$skills$0i6$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get date => '2022-12-06T15:11:22.396871';
	String get des => 'Azure là một nền tảng đám mây được cung cấp bởi Microsoft. Nó cung cấp các dịch vụ đám mây như máy ảo, lưu trữ dữ liệu, dịch vụ phân tích và nhiều hơn nữa. Azure giúp các tổ chức xây dựng, triển khai và quản lý ứng dụng và dịch vụ trên môi trường đám mây.';
	String get img => 'https://img.icons8.com/?size=512&id=VLKafOkk3sBX&format=png';
	String get name => 'Azure';
}

// Path: skills.skills.7
class _TranslationsSkills$skills$0i7$Vi {
	_TranslationsSkills$skills$0i7$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get date => '2022-12-06T15:11:22.396871';
	String get des => 'AWS (Amazon Web Services) là một nền tảng đám mây hàng đầu do Amazon cung cấp. AWS cung cấp một loạt các dịch vụ đám mây bao gồm máy ảo, lưu trữ dữ liệu, cơ sở dữ liệu, dịch vụ tính toán và nhiều hơn nữa. AWS cho phép người dùng xây dựng và triển khai ứng dụng và dịch vụ trên nền tảng đám mây của Amazon.';
	String get img => 'https://img.icons8.com/?size=512&id=33039&format=png';
	String get name => 'AWS';
}

// Path: skills.skills.8
class _TranslationsSkills$skills$0i8$Vi {
	_TranslationsSkills$skills$0i8$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get date => '2022-12-06T15:11:22.396871';
	String get des => 'Android là một hệ điều hành di động phổ biến, phát triển bởi Google. Nó được sử dụng trên nhiều thiết bị di động như điện thoại thông minh và máy tính bảng. Android cung cấp một nền tảng phát triển mạnh mẽ cho việc xây dựng ứng dụng di động đa dạng.';
	String get img => 'https://img.icons8.com/?size=512&id=04OFrkjznvcd&format=png';
	String get name => 'Android';
}

// Path: skills.skills.9
class _TranslationsSkills$skills$0i9$Vi {
	_TranslationsSkills$skills$0i9$Vi._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get date => '2022-12-06T15:11:22.396871';
	String get des => 'AOSP (Android Open Source Project) là dự án mã nguồn mở cho hệ điều hành Android. Nó cung cấp mã nguồn cho các thành phần cốt lõi của Android và cho phép các nhà phát triển tùy chỉnh và xâydựng phiên bản riêng của hệ điều hành này. AOSP cho phép sự mở rộng và tùy chỉnh linh hoạt của Android.';
	String get img => 'https://img.icons8.com/?size=512&id=17836&format=png';
	String get name => 'AOSP';
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
	@override String get aboutMe => 'As a skilled software developer, I continually accumulate skills, experience, and expertise in the process of building and developing software applications and systems. I have worked in the role of a software development engineer for phone and smart box product lines, such as integrating system development services and applications into Android TV and AOSP source code.\n\nI have a good understanding and proficiency in utilizing Flutter, Dart, Java, and Spring Boot to design and create cross-platform applications and systems that deliver engaging and user-friendly digital experiences.\n\nWith deep knowledge of software technology and principles of system design analysis, I always ensure that the source code I produce is of high quality with intuitive user interfaces. I have experience in analyzing system design for mobile applications and websites and have conducted user research, prototyping, and designing unique and appealing products.\n\nFurthermore, I also have knowledge of system deployment with ASUZE and AWS. This enables me to build complex and robust systems that meet various requirements and ensure high performance.\n\nThroughout my work, I have demonstrated the ability to work independently while also being a strong team player, collaborating closely with other members of the project. I have been involved in feasibility assessment, solution finding, development planning, and testing alongside designers and other developers. I always ensure that projects are completed on time and meet high-quality standards.\n\nI am always seeking opportunities to apply my knowledge and skills to develop breakthrough software, bringing high value to society. I am passionate about creating exceptional products that fulfill user needs. I am ready to contribute to exciting and meaningful projects and look forward to further developing and expanding my capabilities in the field of software development.';
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
	@override String get vietnam => 'Vietnamese';
	@override String get english => 'English';
	@override String get thank_you => 'Thank You for contacting me';
	@override String get get_back => 'I will get back to you shortly';
	@override String get title_introduction_about_section => 'Introduction';
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
	@override String get copy => 'Copied to clipboard';
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
	];
}

// Path: experience.experiences.0
class _TranslationsExperience$experiences$0i0$En implements _TranslationsExperience$experiences$0i0$Vi {
	_TranslationsExperience$experiences$0i0$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get company => 'VNPT Technology';
	@override String get country => 'VietNam';
	@override String get emp_type => 'Full - Time';
	@override String get position => 'Software Engineer (Remote)';
	@override String get site_url => 'www.vnpt-technology.vn';
	@override String get start_date => '2022-08-15T00:00:00.000';
	@override String get state => 'HaNoi';
	@override String get work_done => 'Develop system applications for the SmartBox 2 AOSP, SmartBox 2 ATV and SmartBox 3 ATV product lines including OTA firmware update applications, Security Uboot, Security Setting.# Research and develop solutions for the product line SmartBox product # Build SmartBox terminal management system - TMS (Terminal Management system) # Develop eSOP deployment applications using Flutter & Dart for SmartBox product line';
	@override String get works_here => 'true';
}

// Path: about.aboutCard.0
class _TranslationsAbout$aboutCard$0i0$En implements _TranslationsAbout$aboutCard$0i0$Vi {
	_TranslationsAbout$aboutCard$0i0$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get content => 'I appreciate system design patterns that are simple, clear, and full of thoughtful interactions..';
	@override String get iconPath => 'assets/vector.png';
	@override String get title => 'Back-End Development';
}

// Path: about.aboutCard.1
class _TranslationsAbout$aboutCard$0i1$En implements _TranslationsAbout$aboutCard$0i1$Vi {
	_TranslationsAbout$aboutCard$0i1$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get content => 'Using Flutter & Dart, I can build applications and websites for my system.';
	@override String get iconPath => 'assets/programming-code-signs.png';
	@override String get title => 'Front-End Development';
}

// Path: about.aboutCard.2
class _TranslationsAbout$aboutCard$0i2$En implements _TranslationsAbout$aboutCard$0i2$Vi {
	_TranslationsAbout$aboutCard$0i2$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get content => 'Integrating APIs throughout the software to keep data synchronized and enhance productivity.';
	@override String get iconPath => 'assets/api.png';
	@override String get title => 'API Integration';
}

// Path: about.aboutCard.3
class _TranslationsAbout$aboutCard$0i3$En implements _TranslationsAbout$aboutCard$0i3$Vi {
	_TranslationsAbout$aboutCard$0i3$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get content => 'I enjoy building useful applications for the community, making people\'s lives simpler.';
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
	@override String get date => '2022-12-06T15:07:31.798027';
	@override String get des => 'Git is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency.';
	@override String get img => 'https://cdn3.iconfinder.com/data/icons/social-media-2169/24/social_media_social_media_logo_git-512.png';
	@override String get name => 'Git';
}

// Path: skills.skills.1
class _TranslationsSkills$skills$0i1$En implements _TranslationsSkills$skills$0i1$Vi {
	_TranslationsSkills$skills$0i1$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get date => '2022-12-06T15:09:18.175658';
	@override String get des => 'Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications for Android, iOS, Linux, macOS, Windows, Google Fuchsia, and the web from a single codebase.';
	@override String get img => 'https://img.icons8.com/?size=512&id=5pu47piHKg1I&format=png';
	@override String get name => 'Flutter';
}

// Path: skills.skills.2
class _TranslationsSkills$skills$0i2$En implements _TranslationsSkills$skills$0i2$Vi {
	_TranslationsSkills$skills$0i2$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get date => '2022-12-06T15:10:26.815054';
	@override String get des => 'Firebase is a Backend-as-a-Service (Baas). It provides developers with a variety of tools and services to help them develop quality apps. It is built on Google’s infrastructure.';
	@override String get img => 'https://img.icons8.com/?size=512&id=62452&format=png';
	@override String get name => 'Firebase';
}

// Path: skills.skills.3
class _TranslationsSkills$skills$0i3$En implements _TranslationsSkills$skills$0i3$Vi {
	_TranslationsSkills$skills$0i3$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get date => '2022-12-06T15:11:22.396871';
	@override String get des => 'MongoDB is an open source cross-platform document-oriented database program. Classified as a NoSQL database program, MongoDB uses JSON-like documents with optional schemas.';
	@override String get img => 'https://img.icons8.com/?size=512&id=tBBf3P8HL0vR&format=png';
	@override String get name => 'MongoDb';
}

// Path: skills.skills.4
class _TranslationsSkills$skills$0i4$En implements _TranslationsSkills$skills$0i4$Vi {
	_TranslationsSkills$skills$0i4$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get date => '2022-12-06T15:11:22.396871';
	@override String get des => 'SQL (Structured Query Language) is a standard language for managing and manipulating relational databases. It is used to create, modify, and retrieve data from databases.';
	@override String get img => 'https://img.icons8.com/?size=512&id=qGUfLiYi1bRN&format=png';
	@override String get name => 'SQL';
}

// Path: skills.skills.5
class _TranslationsSkills$skills$0i5$En implements _TranslationsSkills$skills$0i5$Vi {
	_TranslationsSkills$skills$0i5$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get date => '2022-12-06T15:11:22.396871';
	@override String get des => 'Spring Boot is a framework that simplifies the development of Java applications. It provides a set of ready-to-use components and conventions to rapidly build and configure robust and production-ready applications.';
	@override String get img => 'https://img.icons8.com/?size=512&id=90519&format=png';
	@override String get name => 'Spring Boot';
}

// Path: skills.skills.6
class _TranslationsSkills$skills$0i6$En implements _TranslationsSkills$skills$0i6$Vi {
	_TranslationsSkills$skills$0i6$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get date => '2022-12-06T15:11:22.396871';
	@override String get des => 'Azure is a cloud computing platform provided by Microsoft. It offers a wide range of cloud services, including virtual machines, storage, databases, and AI capabilities, enabling organizations to build, deploy, and manage applications and services.';
	@override String get img => 'https://img.icons8.com/?size=512&id=VLKafOkk3sBX&format=png';
	@override String get name => 'Azure';
}

// Path: skills.skills.7
class _TranslationsSkills$skills$0i7$En implements _TranslationsSkills$skills$0i7$Vi {
	_TranslationsSkills$skills$0i7$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get date => '2022-12-06T15:11:22.396871';
	@override String get des => 'AWS is a comprehensive cloud computing platform provided by Amazon. It offers a wide range of on-demand services, such as computing power, storage, databases, and analytics, allowing businesses to scale and grow their applications and infrastructure.';
	@override String get img => 'https://img.icons8.com/?size=512&id=33039&format=png';
	@override String get name => 'AWS';
}

// Path: skills.skills.8
class _TranslationsSkills$skills$0i8$En implements _TranslationsSkills$skills$0i8$Vi {
	_TranslationsSkills$skills$0i8$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get date => '2022-12-06T15:11:22.396871';
	@override String get des => 'Android is an open-source mobile operating system developed by Google. It is designed for smartphones, tablets, and other mobile devices. Android allows developers to create a wide range of applications using Java or Kotlin programming languages';
	@override String get img => 'https://img.icons8.com/?size=512&id=04OFrkjznvcd&format=png';
	@override String get name => 'Android';
}

// Path: skills.skills.9
class _TranslationsSkills$skills$0i9$En implements _TranslationsSkills$skills$0i9$Vi {
	_TranslationsSkills$skills$0i9$En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get date => '2022-12-06T15:11:22.396871';
	@override String get des => ' AOSP (Android Open Source Project) is the open-source project that maintains and develops the Android operating system. It provides the source code, documentation, and tools for building custom Android ROMs and modifying the Android system';
	@override String get img => 'https://img.icons8.com/?size=512&id=17836&format=png';
	@override String get name => 'AOSP';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'experience.experiences.0.company': return 'VNPT Technology';
			case 'experience.experiences.0.country': return 'Việt Nam';
			case 'experience.experiences.0.emp_type': return 'Full - Time';
			case 'experience.experiences.0.position': return 'Software Engineer (Onsite)';
			case 'experience.experiences.0.site_url': return 'www.vnpt-technology.vn';
			case 'experience.experiences.0.start_date': return '2022-08-15T00:00:00.000';
			case 'experience.experiences.0.state': return 'Hà Nội';
			case 'experience.experiences.0.work_done': return 'Phát triển ứng dụng hệ thống cho dòng sản phẩm SmartBox 2 AOSP, SmartBox 2 ATV và SmartBox 3 ATV bao gồm các ứng dụng cập nhật firmware OTA, Security Uboot, Security Setting.# Nghiên cứu định hướng các giải pháp phát triển cho dòng sản phẩm SmartBox # Xây dựng hệ thống  Quản lý các thiết bị đầu cuối SmartBox - TMS (Terminal Management system) # Phát triển các ứng dụng triển khai eSOP bằng Flutter & Dart cho dòng sản phẩm SmartBox';
			case 'experience.experiences.0.works_here': return 'true';
			case 'tabs.tabs.0': return 'Trang chủ';
			case 'tabs.tabs.1': return 'Về tôi';
			case 'tabs.tabs.2': return 'Kỹ năng';
			case 'tabs.tabs.3': return 'Kinh nghiệm';
			case 'tabs.tabs.4': return 'Các dự án';
			case 'tabs.tabs.5': return 'Liên hệ';
			case 'tabs.tabs.6': return 'Tải về CV';
			case 'about.name': return 'Nguyễn Thành Chung';
			case 'about.aboutMe': return 'Là một nhà phát triển phần mềm có năng lực, tôi luôn tích luỹ kỹ năng, kinh nghiệm, trải nghiệm trong quá trình xây dựng và phát triển các ứng dụng và hệ thống phần mềm. Tôi đã làm việc trong vai trò kỹ sư phát triển phần mềm cho dòng sản phẩm điện thoại và smart box, chẳng hạn như việc tích hợp phát triển các dịch vụ và ứng dụng hệ thống vào mã nguồn Android TV và AOSP.\n\nTôi có hiểu biết và kĩ năng tốt trong việc sử dụng Flutter, Dart, Java, Spring boot để thiết kế và tạo ra những ứng dụng đa nền tảng, hệ thống đem đến những trải nghiệm kỹ thuật số hấp dẫn, thân thiện thiện với người dùng.\n\nVới kiến thức sâu về công nghệ phần mềm và nguyên tắc phân tích thiết kế hệ thống, tôi luôn đảm bảo rằng mã nguồn mà tôi tạo ra đạt chất lượng cao với giao diện người dùng trực quan. Tôi có kinh nghiệm trong việc phân tích thiết kế hệ thống phần mềm cho ứng dụng di động và trang web, và đã thực hiện nghiên cứu người dùng, tạo mẫu và thiết kế một số sản phẩm độc đáo và hấp dẫn.\n\nNgoài ra, tôi cũng có kiến thức về triển khai hệ thống với ASUZE và AWS. Điều này cho phép tôi xây dựng hệ thống phức tạp và mạnh mẽ, đáp ứng được nhiều yêu cầu và đảm bảo hiệu suất cao.\n\nTrong quá trình làm việc, tôi đã chứng tỏ khả năng làm việc độc lập đồng thời có khả năng làm việc nhóm mạnh mẽ và hợp tác chặt chẽ với các thành viên khác trong dự án. Tôi đã tham gia vào quá trình đánh giá khả thi, tìm kiếm giải pháp, xây dựng kế hoạch phát triển và kiểm thử cùng với các nhà thiết kế và nhà phát triển khác. Tôi luôn đảm bảo rằng các dự án được hoàn thành đúng thời hạn và đạt tiêu chuẩn chất lượng cao.\n\nTôi luôn tìm kiếm cơ hội để áp dụng kiến thức và kỹ năng của mình vào việc phát triển phần mềm đột phá, mang lại giá trị cao cho xã hội. Tôi đam mê việc tạo ra những sản phẩm tuyệt vời và đáp ứng nhu cầu của người dùng. Tôi luôn sẵn sàng để đóng góp vào các dự án hấp dẫn và thú vị, và mong muốn tiếp tục phát triển và mở rộng khả năng của mình trong lĩnh vực phát triển phần mềm.';
			case 'about.aboutCard.0.content': return 'Tôi đánh giá cao các mẫu thiết kế hệ thống đơn giản, rõ ràng và đầy đủ các tương tác chu đáo..';
			case 'about.aboutCard.0.iconPath': return 'assets/vector.png';
			case 'about.aboutCard.0.title': return 'Back-End Development';
			case 'about.aboutCard.1.content': return 'Sử dụng Flutter & Dart, tôi có thể xây dựng các ứng dụng và trang web cho hệ thống của mình.';
			case 'about.aboutCard.1.iconPath': return 'assets/programming-code-signs.png';
			case 'about.aboutCard.1.title': return 'Front-End Development';
			case 'about.aboutCard.2.content': return 'Tích hợp API trong toàn bộ phần mềm để giữ cho dữ liệu được đồng bộ hóa và nâng cao năng suất.';
			case 'about.aboutCard.2.iconPath': return 'assets/api.png';
			case 'about.aboutCard.2.title': return 'API Integration';
			case 'about.aboutCard.3.content': return 'Tôi thích xây dựng những ứng dụng có ích cho cộng đồng, khiến cuộc sống của mọi người trở nên đơn giản hơn.';
			case 'about.aboutCard.3.iconPath': return 'assets/web-development.png';
			case 'about.aboutCard.3.title': return 'Mobile/Web Development';
			case 'general.vietnam': return 'Tiếng Việt';
			case 'general.english': return 'Tiếng Anh';
			case 'general.thank_you': return 'Cảm ơn bạn đã liên hệ với tôi';
			case 'general.get_back': return 'Tôi sẽ liên hệ lại với bạn sớm';
			case 'general.title_introduction_about_section': return 'Giới thiệu';
			case 'general.title_about_section': return 'Thông tin cá nhân';
			case 'general.title_contact_section': return 'Liên hệ';
			case 'general.title_contact_me_section': return 'Liên hệ với tôi';
			case 'general.get_in_touch_contact_section': return 'Liên hệ ngay';
			case 'general.feel_free_contact_section': return 'Hãy thoải mái liên hệ với tôi';
			case 'general.hint_your_name_contact_section': return 'Họ và tên của bạn';
			case 'general.hint_your_email_contact_section': return 'Địa chỉ email của bạn';
			case 'general.hint_message_contact_section': return 'Nhập nội dung tin nhắn';
			case 'general.btn_send_contact_section': return 'Gửi';
			case 'general.title_experience_section': return 'Kinh nghiệm làm việc';
			case 'general.title_project_section': return 'Dự án';
			case 'general.title_personal_projects_project_section': return 'Dự án cá nhân';
			case 'general.title_client_projects_project_section': return 'Dự án công việc';
			case 'general.m_title_personal_projects_project_section': return 'Cá nhân';
			case 'general.m_title_client_projects_project_section': return 'Công việc';
			case 'general.title_all_projects_project_section': return 'Tất cả dự án';
			case 'general.title_skill_section': return 'Kỹ năng';
			case 'general.hi_about_section': return 'Xin chào! Tôi là ';
			case 'general.introduce_home_section1': return 'Tôi là Kỹ sư Phát triển Phần mềm cho Dòng sản phẩm Tiêu dùng (Điện thoại, Set-top Box,...) và là một Lập trình viên Flutter.';
			case 'general.introduce_home_section2': return 'Tôi xây dựng các ứng dụng hệ thống cho AOSP, ATV trong Dòng sản phẩm Tiêu dùng và xây dựng các trang web và ứng dụng phần mềm tương tác chạy trên nhiều nền tảng và thiết bị.';
			case 'general.browse_projects_home_section': return 'Các dự án';
			case 'general.required_input_field': return 'Trường này là bắt buộc';
			case 'general.copy': return 'Đã sao chép vào clipboard';
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
			case 'skills.skills.0.date': return '2022-12-06T15:07:31.798027';
			case 'skills.skills.0.des': return 'Git là một hệ thống quản lý phiên bản phân tán miễn phí và mã nguồn mở, được thiết kế để xử lý từ dự án nhỏ đến rất lớn với tốc độ và hiệu suất cao';
			case 'skills.skills.0.img': return 'https://cdn3.iconfinder.com/data/icons/social-media-2169/24/social_media_social_media_logo_git-512.png';
			case 'skills.skills.0.name': return 'Git';
			case 'skills.skills.1.date': return '2022-12-06T15:09:18.175658';
			case 'skills.skills.1.des': return 'Flutter là bộ công cụ phát triển phần mềm UI nguồn mở do Google tạo ra. Nó được sử dụng để phát triển các ứng dụng đa nền tảng từ một cơ sở mã duy nhất cho mọi trình duyệt web, Fuchsia, Android, iOS, Linux, macOS và Windows.';
			case 'skills.skills.1.img': return 'https://img.icons8.com/?size=512&id=5pu47piHKg1I&format=png';
			case 'skills.skills.1.name': return 'Flutter';
			case 'skills.skills.2.date': return '2022-12-06T15:10:26.815054';
			case 'skills.skills.2.des': return 'Firebase là một dịch vụ Backend-as-a-Service (Baas). Nó cung cấp cho các nhà phát triển một loạt các công cụ và dịch vụ để giúp họ phát triển các ứng dụng chất lượng. Firebase được xây dựng trên cơ sở hạ tầng của Google.';
			case 'skills.skills.2.img': return 'https://img.icons8.com/?size=512&id=62452&format=png';
			case 'skills.skills.2.name': return 'Firebase';
			case 'skills.skills.3.date': return '2022-12-06T15:11:22.396871';
			case 'skills.skills.3.des': return 'MongoDB là một chương trình cơ sở dữ liệu hướng tài liệu mã nguồn mở, đa nền tảng. MongoDB được phân loại là chương trình cơ sở dữ liệu NoSQL, sử dụng tài liệu giống JSON với các schema tùy chọn';
			case 'skills.skills.3.img': return 'https://img.icons8.com/?size=512&id=tBBf3P8HL0vR&format=png';
			case 'skills.skills.3.name': return 'MongoDb';
			case 'skills.skills.4.date': return '2022-12-06T15:11:22.396871';
			case 'skills.skills.4.des': return 'SQL (Structured Query Language) là ngôn ngữ truy vấn dùng để quản lý và truy xuất cơ sở dữ liệu quan hệ. SQL cho phép thực hiện các thao tác như tạo, truy vấn, cập nhật và xóa dữ liệu trong cơ sở dữ liệu.';
			case 'skills.skills.4.img': return 'https://img.icons8.com/?size=512&id=qGUfLiYi1bRN&format=png';
			case 'skills.skills.4.name': return 'SQL';
			case 'skills.skills.5.date': return '2022-12-06T15:11:22.396871';
			case 'skills.skills.5.des': return 'Spring Boot là một framework phát triển ứng dụng Java. Nó cung cấp các công cụ và thư viện giúp dễ dàng xây dựng ứng dụng Java mà không cần quá nhiều cấu hình. Spring Boot giúp tăng năng suất phát triển và giảm đáng kể số lượng mã lặp lại.';
			case 'skills.skills.5.img': return 'https://img.icons8.com/?size=512&id=90519&format=png';
			case 'skills.skills.5.name': return 'Spring Boot';
			case 'skills.skills.6.date': return '2022-12-06T15:11:22.396871';
			case 'skills.skills.6.des': return 'Azure là một nền tảng đám mây được cung cấp bởi Microsoft. Nó cung cấp các dịch vụ đám mây như máy ảo, lưu trữ dữ liệu, dịch vụ phân tích và nhiều hơn nữa. Azure giúp các tổ chức xây dựng, triển khai và quản lý ứng dụng và dịch vụ trên môi trường đám mây.';
			case 'skills.skills.6.img': return 'https://img.icons8.com/?size=512&id=VLKafOkk3sBX&format=png';
			case 'skills.skills.6.name': return 'Azure';
			case 'skills.skills.7.date': return '2022-12-06T15:11:22.396871';
			case 'skills.skills.7.des': return 'AWS (Amazon Web Services) là một nền tảng đám mây hàng đầu do Amazon cung cấp. AWS cung cấp một loạt các dịch vụ đám mây bao gồm máy ảo, lưu trữ dữ liệu, cơ sở dữ liệu, dịch vụ tính toán và nhiều hơn nữa. AWS cho phép người dùng xây dựng và triển khai ứng dụng và dịch vụ trên nền tảng đám mây của Amazon.';
			case 'skills.skills.7.img': return 'https://img.icons8.com/?size=512&id=33039&format=png';
			case 'skills.skills.7.name': return 'AWS';
			case 'skills.skills.8.date': return '2022-12-06T15:11:22.396871';
			case 'skills.skills.8.des': return 'Android là một hệ điều hành di động phổ biến, phát triển bởi Google. Nó được sử dụng trên nhiều thiết bị di động như điện thoại thông minh và máy tính bảng. Android cung cấp một nền tảng phát triển mạnh mẽ cho việc xây dựng ứng dụng di động đa dạng.';
			case 'skills.skills.8.img': return 'https://img.icons8.com/?size=512&id=04OFrkjznvcd&format=png';
			case 'skills.skills.8.name': return 'Android';
			case 'skills.skills.9.date': return '2022-12-06T15:11:22.396871';
			case 'skills.skills.9.des': return 'AOSP (Android Open Source Project) là dự án mã nguồn mở cho hệ điều hành Android. Nó cung cấp mã nguồn cho các thành phần cốt lõi của Android và cho phép các nhà phát triển tùy chỉnh và xâydựng phiên bản riêng của hệ điều hành này. AOSP cho phép sự mở rộng và tùy chỉnh linh hoạt của Android.';
			case 'skills.skills.9.img': return 'https://img.icons8.com/?size=512&id=17836&format=png';
			case 'skills.skills.9.name': return 'AOSP';
			default: return null;
		}
	}
}

extension on _TranslationsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'experience.experiences.0.company': return 'VNPT Technology';
			case 'experience.experiences.0.country': return 'VietNam';
			case 'experience.experiences.0.emp_type': return 'Full - Time';
			case 'experience.experiences.0.position': return 'Software Engineer (Remote)';
			case 'experience.experiences.0.site_url': return 'www.vnpt-technology.vn';
			case 'experience.experiences.0.start_date': return '2022-08-15T00:00:00.000';
			case 'experience.experiences.0.state': return 'HaNoi';
			case 'experience.experiences.0.work_done': return 'Develop system applications for the SmartBox 2 AOSP, SmartBox 2 ATV and SmartBox 3 ATV product lines including OTA firmware update applications, Security Uboot, Security Setting.# Research and develop solutions for the product line SmartBox product # Build SmartBox terminal management system - TMS (Terminal Management system) # Develop eSOP deployment applications using Flutter & Dart for SmartBox product line';
			case 'experience.experiences.0.works_here': return 'true';
			case 'tabs.tabs.0': return 'Home';
			case 'tabs.tabs.1': return 'About';
			case 'tabs.tabs.2': return 'Skills';
			case 'tabs.tabs.3': return 'Experience';
			case 'tabs.tabs.4': return 'Projects';
			case 'tabs.tabs.5': return 'Contact';
			case 'tabs.tabs.6': return 'Download CV';
			case 'about.name': return 'Chung Nguyen Thanh';
			case 'about.aboutMe': return 'As a skilled software developer, I continually accumulate skills, experience, and expertise in the process of building and developing software applications and systems. I have worked in the role of a software development engineer for phone and smart box product lines, such as integrating system development services and applications into Android TV and AOSP source code.\n\nI have a good understanding and proficiency in utilizing Flutter, Dart, Java, and Spring Boot to design and create cross-platform applications and systems that deliver engaging and user-friendly digital experiences.\n\nWith deep knowledge of software technology and principles of system design analysis, I always ensure that the source code I produce is of high quality with intuitive user interfaces. I have experience in analyzing system design for mobile applications and websites and have conducted user research, prototyping, and designing unique and appealing products.\n\nFurthermore, I also have knowledge of system deployment with ASUZE and AWS. This enables me to build complex and robust systems that meet various requirements and ensure high performance.\n\nThroughout my work, I have demonstrated the ability to work independently while also being a strong team player, collaborating closely with other members of the project. I have been involved in feasibility assessment, solution finding, development planning, and testing alongside designers and other developers. I always ensure that projects are completed on time and meet high-quality standards.\n\nI am always seeking opportunities to apply my knowledge and skills to develop breakthrough software, bringing high value to society. I am passionate about creating exceptional products that fulfill user needs. I am ready to contribute to exciting and meaningful projects and look forward to further developing and expanding my capabilities in the field of software development.';
			case 'about.aboutCard.0.content': return 'I appreciate system design patterns that are simple, clear, and full of thoughtful interactions..';
			case 'about.aboutCard.0.iconPath': return 'assets/vector.png';
			case 'about.aboutCard.0.title': return 'Back-End Development';
			case 'about.aboutCard.1.content': return 'Using Flutter & Dart, I can build applications and websites for my system.';
			case 'about.aboutCard.1.iconPath': return 'assets/programming-code-signs.png';
			case 'about.aboutCard.1.title': return 'Front-End Development';
			case 'about.aboutCard.2.content': return 'Integrating APIs throughout the software to keep data synchronized and enhance productivity.';
			case 'about.aboutCard.2.iconPath': return 'assets/api.png';
			case 'about.aboutCard.2.title': return 'API Integration';
			case 'about.aboutCard.3.content': return 'I enjoy building useful applications for the community, making people\'s lives simpler.';
			case 'about.aboutCard.3.iconPath': return 'assets/web-development.png';
			case 'about.aboutCard.3.title': return 'Mobile/Web Development';
			case 'general.vietnam': return 'Vietnamese';
			case 'general.english': return 'English';
			case 'general.thank_you': return 'Thank You for contacting me';
			case 'general.get_back': return 'I will get back to you shortly';
			case 'general.title_introduction_about_section': return 'Introduction';
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
			case 'general.copy': return 'Copied to clipboard';
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
			case 'skills.skills.0.date': return '2022-12-06T15:07:31.798027';
			case 'skills.skills.0.des': return 'Git is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency.';
			case 'skills.skills.0.img': return 'https://cdn3.iconfinder.com/data/icons/social-media-2169/24/social_media_social_media_logo_git-512.png';
			case 'skills.skills.0.name': return 'Git';
			case 'skills.skills.1.date': return '2022-12-06T15:09:18.175658';
			case 'skills.skills.1.des': return 'Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications for Android, iOS, Linux, macOS, Windows, Google Fuchsia, and the web from a single codebase.';
			case 'skills.skills.1.img': return 'https://img.icons8.com/?size=512&id=5pu47piHKg1I&format=png';
			case 'skills.skills.1.name': return 'Flutter';
			case 'skills.skills.2.date': return '2022-12-06T15:10:26.815054';
			case 'skills.skills.2.des': return 'Firebase is a Backend-as-a-Service (Baas). It provides developers with a variety of tools and services to help them develop quality apps. It is built on Google’s infrastructure.';
			case 'skills.skills.2.img': return 'https://img.icons8.com/?size=512&id=62452&format=png';
			case 'skills.skills.2.name': return 'Firebase';
			case 'skills.skills.3.date': return '2022-12-06T15:11:22.396871';
			case 'skills.skills.3.des': return 'MongoDB is an open source cross-platform document-oriented database program. Classified as a NoSQL database program, MongoDB uses JSON-like documents with optional schemas.';
			case 'skills.skills.3.img': return 'https://img.icons8.com/?size=512&id=tBBf3P8HL0vR&format=png';
			case 'skills.skills.3.name': return 'MongoDb';
			case 'skills.skills.4.date': return '2022-12-06T15:11:22.396871';
			case 'skills.skills.4.des': return 'SQL (Structured Query Language) is a standard language for managing and manipulating relational databases. It is used to create, modify, and retrieve data from databases.';
			case 'skills.skills.4.img': return 'https://img.icons8.com/?size=512&id=qGUfLiYi1bRN&format=png';
			case 'skills.skills.4.name': return 'SQL';
			case 'skills.skills.5.date': return '2022-12-06T15:11:22.396871';
			case 'skills.skills.5.des': return 'Spring Boot is a framework that simplifies the development of Java applications. It provides a set of ready-to-use components and conventions to rapidly build and configure robust and production-ready applications.';
			case 'skills.skills.5.img': return 'https://img.icons8.com/?size=512&id=90519&format=png';
			case 'skills.skills.5.name': return 'Spring Boot';
			case 'skills.skills.6.date': return '2022-12-06T15:11:22.396871';
			case 'skills.skills.6.des': return 'Azure is a cloud computing platform provided by Microsoft. It offers a wide range of cloud services, including virtual machines, storage, databases, and AI capabilities, enabling organizations to build, deploy, and manage applications and services.';
			case 'skills.skills.6.img': return 'https://img.icons8.com/?size=512&id=VLKafOkk3sBX&format=png';
			case 'skills.skills.6.name': return 'Azure';
			case 'skills.skills.7.date': return '2022-12-06T15:11:22.396871';
			case 'skills.skills.7.des': return 'AWS is a comprehensive cloud computing platform provided by Amazon. It offers a wide range of on-demand services, such as computing power, storage, databases, and analytics, allowing businesses to scale and grow their applications and infrastructure.';
			case 'skills.skills.7.img': return 'https://img.icons8.com/?size=512&id=33039&format=png';
			case 'skills.skills.7.name': return 'AWS';
			case 'skills.skills.8.date': return '2022-12-06T15:11:22.396871';
			case 'skills.skills.8.des': return 'Android is an open-source mobile operating system developed by Google. It is designed for smartphones, tablets, and other mobile devices. Android allows developers to create a wide range of applications using Java or Kotlin programming languages';
			case 'skills.skills.8.img': return 'https://img.icons8.com/?size=512&id=04OFrkjznvcd&format=png';
			case 'skills.skills.8.name': return 'Android';
			case 'skills.skills.9.date': return '2022-12-06T15:11:22.396871';
			case 'skills.skills.9.des': return ' AOSP (Android Open Source Project) is the open-source project that maintains and develops the Android operating system. It provides the source code, documentation, and tools for building custom Android ROMs and modifying the Android system';
			case 'skills.skills.9.img': return 'https://img.icons8.com/?size=512&id=17836&format=png';
			case 'skills.skills.9.name': return 'AOSP';
			default: return null;
		}
	}
}
