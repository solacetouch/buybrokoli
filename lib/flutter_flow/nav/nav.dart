import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;
import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';
export '/backend/firebase_dynamic_links/firebase_dynamic_links.dart'
    show generateCurrentPageLink;

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => _RouteErrorBuilder(
        state: state,
        child: appStateNotifier.loggedIn ? const NavBarPage() : const SignUpWidget(),
      ),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const NavBarPage() : const SignUpWidget(),
          routes: [
            FFRoute(
              name: 'Login',
              path: 'login',
              builder: (context, params) => LoginWidget(
                lastPage: params.getParam('lastPage', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'SignUp',
              path: 'signUp',
              builder: (context, params) => SignUpWidget(
                lastPage: params.getParam('lastPage', ParamType.String),
                businessType: params.getParam('businessType', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Home',
              path: 'home',
              builder: (context, params) => params.isEmpty
                  ? const NavBarPage(initialPage: 'Home')
                  : const HomeWidget(),
            ),
            FFRoute(
              name: 'Search',
              path: 'search',
              builder: (context, params) => params.isEmpty
                  ? const NavBarPage(initialPage: 'Search')
                  : SearchWidget(
                      filter: params.getParam('filter', ParamType.bool),
                    ),
            ),
            FFRoute(
              name: 'BusinessProfile',
              path: 'business',
              builder: (context, params) => BusinessProfileWidget(
                business: params.getParam('business',
                    ParamType.DocumentReference, false, ['businesses']),
              ),
            ),
            FFRoute(
              name: 'ProductPage',
              path: 'ProductPage',
              builder: (context, params) => ProductPageWidget(
                product: params.getParam('product', ParamType.DocumentReference,
                    false, ['products']),
                business: params.getParam('business',
                    ParamType.DocumentReference, false, ['businesses']),
              ),
            ),
            FFRoute(
              name: 'News',
              path: 'news',
              builder: (context, params) => params.isEmpty
                  ? const NavBarPage(initialPage: 'News')
                  : const NewsWidget(),
            ),
            FFRoute(
              name: 'Events',
              path: 'events',
              builder: (context, params) => params.isEmpty
                  ? const NavBarPage(initialPage: 'Events')
                  : const EventsWidget(),
            ),
            FFRoute(
              name: 'Messages',
              path: 'messages',
              requireAuth: true,
              builder: (context, params) => const MessagesWidget(),
            ),
            FFRoute(
              name: 'Chat',
              path: 'chat',
              requireAuth: true,
              asyncParams: {
                'chatUser': getDoc(['users'], UsersRecord.fromSnapshot),
                'chatRefDoc': getDoc(['chats'], ChatsRecord.fromSnapshot),
              },
              builder: (context, params) => ChatWidget(
                chatUser: params.getParam('chatUser', ParamType.Document),
                chatRefDoc: params.getParam('chatRefDoc', ParamType.Document),
                chatRef: params.getParam(
                    'chatRef', ParamType.DocumentReference, false, ['chats']),
              ),
            ),
            FFRoute(
              name: 'Settings',
              path: 'settings',
              requireAuth: true,
              builder: (context, params) => const SettingsWidget(),
            ),
            FFRoute(
              name: 'EditProfile',
              path: 'editProfile',
              requireAuth: true,
              builder: (context, params) => const EditProfileWidget(),
            ),
            FFRoute(
              name: 'ClaimBusinesses',
              path: 'claimBusinesses',
              requireAuth: true,
              builder: (context, params) => ClaimBusinessesWidget(
                business: params.getParam('business',
                    ParamType.DocumentReference, false, ['businesses']),
                pageLink: params.getParam('pageLink', ParamType.String),
                state: params.getParam('state', ParamType.String),
                productList: params.getParam<String>(
                    'productList', ParamType.String, true),
                businessType: params.getParam('businessType', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'RegisterBusiness',
              path: 'RegisterBusiness',
              requireAuth: true,
              builder: (context, params) => RegisterBusinessWidget(
                businessType: params.getParam('businessType', ParamType.String),
                state: params.getParam('state', ParamType.DocumentReference,
                    false, ['Legalization']),
                productTypes: params.getParam<String>(
                    'productTypes', ParamType.String, true),
              ),
            ),
            FFRoute(
              name: 'Webview',
              path: 'webview',
              builder: (context, params) => WebviewWidget(
                link: params.getParam('link', ParamType.String),
                title: params.getParam('title', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Notifications',
              path: 'notifications',
              builder: (context, params) => const NotificationsWidget(),
            ),
            FFRoute(
              name: 'vendorApprovalDetails',
              path: 'vendorApprovalDetails',
              requireAuth: true,
              builder: (context, params) => VendorApprovalDetailsWidget(
                vendorSubmission: params.getParam('vendorSubmission',
                    ParamType.DocumentReference, false, ['vendorSubmissions']),
                state: params.getParam('state', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'ReportDetail',
              path: 'reportDetail',
              asyncParams: {
                'owner': getDoc(['users'], UsersRecord.fromSnapshot),
                'reporter': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) => ReportDetailWidget(
                report: params.getParam(
                    'report', ParamType.DocumentReference, false, ['reports']),
                owner: params.getParam('owner', ParamType.Document),
                reporter: params.getParam('reporter', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'AgeVerification',
              path: 'ageVerification',
              builder: (context, params) => const AgeVerificationWidget(),
            ),
            FFRoute(
              name: 'RegisterBusiness_State',
              path: 'registerBusinessState',
              builder: (context, params) => RegisterBusinessStateWidget(
                business: params.getParam('business',
                    ParamType.DocumentReference, false, ['businesses']),
                pageLink: params.getParam('pageLink', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'RegisterBusiness_Type',
              path: 'registerBusinessType',
              builder: (context, params) => RegisterBusinessTypeWidget(
                state: params.getParam('state', ParamType.String),
                stat: params.getParam('stat', ParamType.DocumentReference,
                    false, ['Legalization']),
                business: params.getParam('business',
                    ParamType.DocumentReference, false, ['businesses']),
                pageLink: params.getParam('pageLink', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'RegisterBusiness_Medical',
              path: 'registerBusinessMedical',
              builder: (context, params) => RegisterBusinessMedicalWidget(
                state: params.getParam('state', ParamType.DocumentReference,
                    false, ['Legalization']),
                business: params.getParam('business',
                    ParamType.DocumentReference, false, ['businesses']),
                pageLink: params.getParam('pageLink', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'RegisterBusiness_Retail',
              path: 'registerBusinessRetail',
              builder: (context, params) => RegisterBusinessRetailWidget(
                state: params.getParam('state', ParamType.DocumentReference,
                    false, ['Legalization']),
                business: params.getParam('business',
                    ParamType.DocumentReference, false, ['businesses']),
                pageLink: params.getParam('pageLink', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'EventDetails',
              path: 'eventDetails',
              builder: (context, params) => EventDetailsWidget(
                event: params.getParam(
                    'event', ParamType.DocumentReference, false, ['events']),
              ),
            ),
            FFRoute(
              name: 'NewsDetail',
              path: 'newsDetail',
              builder: (context, params) => NewsDetailWidget(
                news: params.getParam(
                    'news', ParamType.DocumentReference, false, ['news']),
              ),
            ),
            FFRoute(
              name: 'BusinessManager',
              path: 'businessManager',
              requireAuth: true,
              asyncParams: {
                'businessDoc':
                    getDoc(['businesses'], BusinessesRecord.fromSnapshot),
              },
              builder: (context, params) => BusinessManagerWidget(
                business: params.getParam('business',
                    ParamType.DocumentReference, false, ['businesses']),
                page: params.getParam('page', ParamType.String),
                code: params.getParam('code', ParamType.String),
                businessDoc: params.getParam('businessDoc', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'BusinessListing',
              path: 'businessListing',
              requireAuth: true,
              builder: (context, params) => BusinessListingWidget(
                business: params.getParam('business',
                    ParamType.DocumentReference, false, ['businesses']),
                page: params.getParam('page', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'BusinessProducts',
              path: 'businessProducts',
              requireAuth: true,
              builder: (context, params) => BusinessProductsWidget(
                business: params.getParam('business',
                    ParamType.DocumentReference, false, ['businesses']),
                page: params.getParam('page', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'BusinessEvents',
              path: 'businessEvents',
              requireAuth: true,
              asyncParams: {
                'businessDoc':
                    getDoc(['businesses'], BusinessesRecord.fromSnapshot),
              },
              builder: (context, params) => BusinessEventsWidget(
                business: params.getParam('business',
                    ParamType.DocumentReference, false, ['businesses']),
                page: params.getParam('page', ParamType.String),
                businessDoc: params.getParam('businessDoc', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'BusinessBoosts',
              path: 'businessBoosts',
              requireAuth: true,
              builder: (context, params) => BusinessBoostsWidget(
                business: params.getParam('business',
                    ParamType.DocumentReference, false, ['businesses']),
                page: params.getParam('page', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'BusinessLocations',
              path: 'businessLocations',
              requireAuth: true,
              builder: (context, params) => BusinessLocationsWidget(
                business: params.getParam('business',
                    ParamType.DocumentReference, false, ['businesses']),
                page: params.getParam('page', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'BusinessPlan',
              path: 'businessPlan',
              requireAuth: true,
              builder: (context, params) => BusinessPlanWidget(
                business: params.getParam('business',
                    ParamType.DocumentReference, false, ['businesses']),
                page: params.getParam('page', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'AdminOverview',
              path: 'adminOverview',
              builder: (context, params) => AdminOverviewWidget(
                business: params.getParam('business',
                    ParamType.DocumentReference, false, ['businesses']),
              ),
            ),
            FFRoute(
              name: 'BusinessPhotos',
              path: 'businessPhotos',
              requireAuth: true,
              builder: (context, params) => BusinessPhotosWidget(
                business: params.getParam('business',
                    ParamType.DocumentReference, false, ['businesses']),
                page: params.getParam('page', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Brands',
              path: 'brands',
              builder: (context, params) => params.isEmpty
                  ? const NavBarPage(initialPage: 'Brands')
                  : const BrandsWidget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList,
        collectionNamePath: collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/signUp';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                  child: Center(
                    child: Image.asset(
                      'assets/images/BuyBrokoli_logo_full_logo.jpg',
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : PushNotificationsHandler(child: page);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class _RouteErrorBuilder extends StatefulWidget {
  const _RouteErrorBuilder({
    required this.state,
    required this.child,
  });

  final GoRouterState state;
  final Widget child;

  @override
  State<_RouteErrorBuilder> createState() => _RouteErrorBuilderState();
}

class _RouteErrorBuilderState extends State<_RouteErrorBuilder> {
  @override
  void initState() {
    super.initState();
    // Handle erroneous links from Firebase Dynamic Links.
    if (widget.state.location.startsWith('/link') &&
        widget.state.location.contains('request_ip_version')) {
      SchedulerBinding.instance.addPostFrameCallback((_) => context.go('/'));
    }
  }

  @override
  Widget build(BuildContext context) => widget.child;
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
