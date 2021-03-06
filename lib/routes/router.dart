import 'package:auto_route/auto_route.dart';
import 'package:bazaar/core/pipe/bazaar_app.dart';
import 'package:bazaar/features/browse/widgets/pages/app_page.dart';
import 'package:bazaar/features/browse/widgets/pages/browse_page.dart';
import 'package:bazaar/features/installed/widgets/pages/installed_page.dart';
import 'package:bazaar/features/updates/widgets/pages/updates_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      path: '/',
      page: BazaarApp,
      children: [
        AutoRoute(
          path: 'browse',
          name: 'BrowseRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: BrowsePage,
            ),
            AutoRoute(
              path: ':appId',
              page: AppPage,
            )
          ],
        ),
        AutoRoute(
          path: 'installed',
          name: 'InstalledRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: InstalledPage,
            ),
            // AutoRoute(
            //   path: 'community-screen',
            //   page: CommunityScreen,
            // ),
          ],
        ),
        AutoRoute(
          path: 'updates',
          name: 'UpdatesRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: UpdatesPage,
            ),
            // AutoRoute(
            //   path: 'community-screen',
            //   page: CommunityScreen,
            // ),
          ],
        ),
      ],
    ),
    // AutoRoute(
    //   path: 'new-post',
    //   name: 'NewPostRouter',
    //   page: NewPostScreen,
    // ),
  ],
)
class $AppRouter {}
