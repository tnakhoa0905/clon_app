import 'package:clon_app/models/manga.dart';
import 'package:clon_app/screens/comic/detail_comic_screen.dart';
import 'package:clon_app/screens/comic/sort_comic_screen.dart';
import 'package:clon_app/screens/home_screen.dart';
import 'package:clon_app/screens/prolife/prolife_options/change_prolife.dart';
import 'package:clon_app/screens/prolife/prolife_options/notification_screen.dart';
import 'package:clon_app/screens/prolife/prolife_options/payment_history_screen.dart';
import 'package:clon_app/screens/prolife/prolife_options/tien_linh_thach_screen.dart';
import 'package:clon_app/screens/prolife/prolife_options/tui_can_khon_screen.dart';

import 'package:flutter/material.dart';

import '../models/argument/sort_comic_argument.dart';
import '../screens/comic/read/read_comic.dart';
import '../screens/prolife/prolife_options/change_password.dart';
import '../screens/prolife/prolife_options/payment_screen.dart';
import '../screens/prolife/prolife_options/store_prolife_screen.dart';

class AppRoute {
  static const String homePage = "/";
  static const String detaiComic = "/detail_comic";
  static const String changeProlife = "/change_prolife";
  static const String changePassword = "/change_password";
  static const String store = "/store";
  static const String sortComic = "/sort_comic";
  static const String notification = "/notification";
  static const String tienLinhThach = "/tien_linh_thach";
  static const String payment = "/payment";
  static const String paymentHistory = "/payment_history";
  static const String tuiCanKhon = "/tui_can_khon";
  static const String readComic = "/readComic";
  static Route<dynamic> genarateroute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case detaiComic:
        Manga manga = settings.arguments as Manga;
        print(manga);
        return MaterialPageRoute(
            builder: (context) => DetailComicScreen(
                  manga: manga,
                ));
      case changeProlife:
        return MaterialPageRoute(
            builder: (context) => const ChangeProlifeScreen());
      case changePassword:
        return MaterialPageRoute(builder: (context) => const ChangePassWord());
      case store:
        return MaterialPageRoute(
            builder: (context) => const StoreProlifeScreen());
      case sortComic:
        // TODO: Sai đoạn case ni
        SortComicArguments? code = settings.arguments as SortComicArguments;
        print("debug by code: ${code.orderby}");

        return MaterialPageRoute(builder: (context) {
          return SortComicScreen(
            sort: code,
          );
        });

      case notification:
        return MaterialPageRoute(
            builder: (context) => const NotificationScreen());
      case payment:
        return MaterialPageRoute(builder: (context) => const PaymentScreen());
      case tienLinhThach:
        return MaterialPageRoute(
            builder: ((context) => const TienLinhThachScreen()));
      case paymentHistory:
        return MaterialPageRoute(
            builder: ((context) => const PaymentHistoryScreen()));
      case tuiCanKhon:
        return MaterialPageRoute(
            builder: ((context) => const TuiCanKhonScreen()));
      case readComic:
        print(settings.arguments);
        var detailChapter = settings.arguments as List<Chapter>;
        print(detailChapter);
        return MaterialPageRoute(
            builder: (context) => ReadComicScreen(
                  detailChapter: detailChapter,
                ));
      default:
        throw FormatException('Route khong ton tai');
    }
  }
}
