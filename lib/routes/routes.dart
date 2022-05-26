import 'package:get/get.dart';
import 'package:project/screens/pay_transfer_client.dart';
import 'package:project/screens/payment_model/client_payment.dart';
import 'package:project/screens/payment_model/second_way_pay.dart';
import 'package:project/screens/second_main_screen.dart';
import 'package:project/screens/second_main_screens/accept_refuse_gifts.dart';
import 'package:project/screens/second_main_screens/accept_refuse_screen.dart';
import 'package:project/screens/second_main_screens/confirm_data_screen.dart';
import 'package:project/screens/third_card.dart';
import 'package:project/widgets/open_closed_container.dart';

class AppRoute {
// initialRoutes
  static const openClose = Routes.openClose;
  static const mainScreen = Routes.mainScreen;
  static const payScreen = Routes.payScreen;
  static const thirdCard = Routes.thirdCard;
  static const secondMain = Routes.secondMain;
  static const acceptScreen = Routes.acceptScreen;
  static const confirmScreen = Routes.confirmScreen;
  static const giftScreen = Routes.giftScreen;
  static const secondWayScreen = Routes.secondWayScreen;

  // pages
  static final routes = [
    GetPage(
      name: Routes.mainScreen,
      page: () => const PayTransferClient(),
    ),GetPage(
      name: Routes.openClose,
      page: () =>  OpendCloseContainer(),
    ),GetPage(
      name: Routes.payScreen,
      page: () =>  PayScreen(),
    ),
    GetPage(
      name: Routes.thirdCard,
      page: () =>  ThirdCard(),
    ),
    GetPage(
      name: Routes.secondMain,
      page: () =>  const SecondMain(),
    ),
    GetPage(
      name: Routes.acceptScreen,
      page: () =>AcceptRefuseScreen  (),
    ),
    GetPage(
      name: Routes.confirmScreen,
      page: () =>ConfirmData  (),
    ),
    GetPage(
      name: Routes.giftScreen,
      page: () => GiftsScreen (),
    ),  GetPage(
      name: Routes.secondWayScreen,
      page: () => SecondPayScreen (),
    ),
  ];
}

class Routes {

  static const mainScreen = '/mainScreen';
  static const openClose = '/openClose';
  static const payScreen = '/payScreen';
  static const thirdCard = '/thirdCard';
  static const secondMain = '/secondMain';
  static const acceptScreen = '/acceptScreen';
  static const confirmScreen = '/confirmScreen';
  static const giftScreen = '/giftScreen';
  static const secondWayScreen = '/secondWayScreen';
}
//SecondPayScreen