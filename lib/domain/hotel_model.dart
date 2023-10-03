import 'dart:convert';

class HotelModel {
  final Ae? ae;
  final Ae? hotelModelAs;
  final At? at;
  final Ch? ch;
  final Ae? dk;
  final Ae? es;
  final Ae? fr;
  final Ae? ie;
  final Ae? nl;
  final Ae? se;

  HotelModel({
    this.ae,
    this.hotelModelAs,
    this.at,
    this.ch,
    this.dk,
    this.es,
    this.fr,
    this.ie,
    this.nl,
    this.se,
  });

  factory HotelModel.fromRawJson(String str) =>
      HotelModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HotelModel.fromJson(Map<String, dynamic> json) => HotelModel(
        ae: json["AE"] == null ? null : Ae.fromJson(json["AE"]),
        hotelModelAs: json["AS"] == null ? null : Ae.fromJson(json["AS"]),
        at: json["AT"] == null ? null : At.fromJson(json["AT"]),
        ch: json["CH"] == null ? null : Ch.fromJson(json["CH"]),
        dk: json["DK"] == null ? null : Ae.fromJson(json["DK"]),
        es: json["ES"] == null ? null : Ae.fromJson(json["ES"]),
        fr: json["FR"] == null ? null : Ae.fromJson(json["FR"]),
        ie: json["IE"] == null ? null : Ae.fromJson(json["IE"]),
        nl: json["NL"] == null ? null : Ae.fromJson(json["NL"]),
        se: json["SE"] == null ? null : Ae.fromJson(json["SE"]),
      );

  Map<String, dynamic> toJson() => {
        "AE": ae?.toJson(),
        "AS": hotelModelAs?.toJson(),
        "AT": at?.toJson(),
        "CH": ch?.toJson(),
        "DK": dk?.toJson(),
        "ES": es?.toJson(),
        "FR": fr?.toJson(),
        "IE": ie?.toJson(),
        "NL": nl?.toJson(),
        "SE": se?.toJson(),
      };
}

class Ae {
  final int? siteId;
  final SupportPhoneNumber? supportPhoneNumber;

  final String? url;
  final String? countryCode;

  Ae({
    this.siteId,
    this.supportPhoneNumber,
    this.url,
    this.countryCode,
  });

  factory Ae.fromRawJson(String str) => Ae.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Ae.fromJson(Map<String, dynamic> json) => Ae(
        siteId: json["siteId"],
        supportPhoneNumber: json["supportPhoneNumber"] == null
            ? null
            : SupportPhoneNumber.fromJson(json["supportPhoneNumber"]),
        url: json["url"],
        countryCode: json["countryCode"],
      );

  Map<String, dynamic> toJson() => {
        "siteId": siteId,
        "supportPhoneNumber": supportPhoneNumber?.toJson(),
        "url": url,
        "countryCode": countryCode,
      };
}

class SupportPhoneNumber {
  final String? empty;

  SupportPhoneNumber({
    this.empty,
  });

  factory SupportPhoneNumber.fromRawJson(String str) =>
      SupportPhoneNumber.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SupportPhoneNumber.fromJson(Map<String, dynamic> json) =>
      SupportPhoneNumber(
        empty: json["*"],
      );

  Map<String, dynamic> toJson() => {
        "*": empty,
      };
}

class ArSupportedLocale {
  final String? localeIdentifier;
  final String? languageCode;
  final int? languageIdentifier;
  final String? localeBasedPointOfSaleName;
  final String? appInfoUrl;
  final String? createAccountMarketingText;
  final String? forgotPasswordUrl;
  final AppSupportUrLs? appSupportUrLs;
  final String? bookingSupportUrl;
  final String? airlineRulesUrl;
  final String? websiteUrl;
  final String? accountUrl;
  final String? termsAndConditionsUrl;
  final String? resultsSortFaqLegalLink;
  final String? privacyPolicyUrl;
  final String? loyaltyTermsAndConditionsUrl;
  final String? carsTabWebViewUrl;
  final String? coronavirusInfoUrl;

  ArSupportedLocale({
    this.localeIdentifier,
    this.languageCode,
    this.languageIdentifier,
    this.localeBasedPointOfSaleName,
    this.appInfoUrl,
    this.createAccountMarketingText,
    this.forgotPasswordUrl,
    this.appSupportUrLs,
    this.bookingSupportUrl,
    this.airlineRulesUrl,
    this.websiteUrl,
    this.accountUrl,
    this.termsAndConditionsUrl,
    this.resultsSortFaqLegalLink,
    this.privacyPolicyUrl,
    this.loyaltyTermsAndConditionsUrl,
    this.carsTabWebViewUrl,
    this.coronavirusInfoUrl,
  });

  factory ArSupportedLocale.fromRawJson(String str) =>
      ArSupportedLocale.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ArSupportedLocale.fromJson(Map<String, dynamic> json) =>
      ArSupportedLocale(
        localeIdentifier: json["localeIdentifier"],
        languageCode: json["languageCode"],
        languageIdentifier: json["languageIdentifier"],
        localeBasedPointOfSaleName: json["localeBasedPointOfSaleName"],
        appInfoUrl: json["appInfoURL"],
        createAccountMarketingText: json["createAccountMarketingText"],
        forgotPasswordUrl: json["forgotPasswordURL"],
        appSupportUrLs: json["appSupportURLs"] == null
            ? null
            : AppSupportUrLs.fromJson(json["appSupportURLs"]),
        bookingSupportUrl: json["bookingSupportURL"],
        airlineRulesUrl: json["airlineRulesURL"],
        websiteUrl: json["websiteURL"],
        accountUrl: json["accountURL"],
        termsAndConditionsUrl: json["termsAndConditionsURL"],
        resultsSortFaqLegalLink: json["resultsSortFAQLegalLink"],
        privacyPolicyUrl: json["privacyPolicyURL"],
        loyaltyTermsAndConditionsUrl: json["loyaltyTermsAndConditionsURL"],
        carsTabWebViewUrl: json["carsTabWebViewURL"],
        coronavirusInfoUrl: json["coronavirusInfoUrl"],
      );

  Map<String, dynamic> toJson() => {
        "localeIdentifier": localeIdentifier,
        "languageCode": languageCode,
        "languageIdentifier": languageIdentifier,
        "localeBasedPointOfSaleName": localeBasedPointOfSaleName,
        "appInfoURL": appInfoUrl,
        "createAccountMarketingText": createAccountMarketingText,
        "forgotPasswordURL": forgotPasswordUrl,
        "appSupportURLs": appSupportUrLs?.toJson(),
        "bookingSupportURL": bookingSupportUrl,
        "airlineRulesURL": airlineRulesUrl,
        "websiteURL": websiteUrl,
        "accountURL": accountUrl,
        "termsAndConditionsURL": termsAndConditionsUrl,
        "resultsSortFAQLegalLink": resultsSortFaqLegalLink,
        "privacyPolicyURL": privacyPolicyUrl,
        "loyaltyTermsAndConditionsURL": loyaltyTermsAndConditionsUrl,
        "carsTabWebViewURL": carsTabWebViewUrl,
        "coronavirusInfoUrl": coronavirusInfoUrl,
      };
}

class AppSupportUrLs {
  final String? ios;
  final String? android;

  AppSupportUrLs({
    this.ios,
    this.android,
  });

  factory AppSupportUrLs.fromRawJson(String str) =>
      AppSupportUrLs.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AppSupportUrLs.fromJson(Map<String, dynamic> json) => AppSupportUrLs(
        ios: json["ios"],
        android: json["android"],
      );

  Map<String, dynamic> toJson() => {
        "ios": ios,
        "android": android,
      };
}

class At {
  final int? siteId;
  final SupportPhoneNumber? supportPhoneNumber;
  final String? url;
  final String? memberDealCardImageUrl;
  final String? lastMinuteDealsCardImageUrl;
  final String? countryCode;

  At({
    this.siteId,
    this.supportPhoneNumber,
    this.url,
    this.memberDealCardImageUrl,
    this.lastMinuteDealsCardImageUrl,
    this.countryCode,
  });

  factory At.fromRawJson(String str) => At.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory At.fromJson(Map<String, dynamic> json) => At(
        siteId: json["siteId"],
        supportPhoneNumber: json["supportPhoneNumber"] == null
            ? null
            : SupportPhoneNumber.fromJson(json["supportPhoneNumber"]),
        url: json["url"],
        memberDealCardImageUrl: json["memberDealCardImageUrl"],
        lastMinuteDealsCardImageUrl: json["lastMinuteDealsCardImageUrl"],
        countryCode: json["countryCode"],
      );

  Map<String, dynamic> toJson() => {
        "siteId": siteId,
        "supportPhoneNumber": supportPhoneNumber?.toJson(),
        "url": url,
        "memberDealCardImageUrl": memberDealCardImageUrl,
        "lastMinuteDealsCardImageUrl": lastMinuteDealsCardImageUrl,
        "countryCode": countryCode,
      };
}

class AtSupportedLocale {
  final String? localeIdentifier;
  final String? languageCode;
  final int? languageIdentifier;

  final String? appInfoUrl;

  AtSupportedLocale({
    this.localeIdentifier,
    this.languageCode,
    this.languageIdentifier,
    this.appInfoUrl,
  });

  factory AtSupportedLocale.fromRawJson(String str) =>
      AtSupportedLocale.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AtSupportedLocale.fromJson(Map<String, dynamic> json) =>
      AtSupportedLocale(
        localeIdentifier: json["localeIdentifier"],
        languageCode: json["languageCode"],
        languageIdentifier: json["languageIdentifier"],
        appInfoUrl: json["appInfoURL"],
      );

  Map<String, dynamic> toJson() => {
        "localeIdentifier": localeIdentifier,
        "languageCode": languageCode,
        "languageIdentifier": languageIdentifier,
      };
}

class Ch {
  final int? siteId;
  final SupportPhoneNumber? supportPhoneNumber;
  final String? memberDealCardImageUrl;
  final String? lastMinuteDealsCardImageUrl;
  final String? countryCode;

  Ch({
    this.siteId,
    this.supportPhoneNumber,
    this.memberDealCardImageUrl,
    this.lastMinuteDealsCardImageUrl,
    this.countryCode,
  });

  factory Ch.fromRawJson(String str) => Ch.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Ch.fromJson(Map<String, dynamic> json) => Ch(
        siteId: json["siteId"],
        supportPhoneNumber: json["supportPhoneNumber"] == null
            ? null
            : SupportPhoneNumber.fromJson(json["supportPhoneNumber"]),
        memberDealCardImageUrl: json["memberDealCardImageUrl"],
        lastMinuteDealsCardImageUrl: json["lastMinuteDealsCardImageUrl"],
        countryCode: json["countryCode"],
      );

  Map<String, dynamic> toJson() => {
        "siteId": siteId,
        "supportPhoneNumber": supportPhoneNumber?.toJson(),
        "memberDealCardImageUrl": memberDealCardImageUrl,
        "lastMinuteDealsCardImageUrl": lastMinuteDealsCardImageUrl,
        "countryCode": countryCode,
      };
}
