import 'package:FirstProject/utils/route_generator.dart';
import 'package:FirstProject/utils/routes.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

class DynamicLinksApi {
  final dynamicLink = FirebaseDynamicLinks.instance;

  handleDynamicLink() async {
    await dynamicLink.getInitialLink();
    dynamicLink.onLink(onSuccess: (PendingDynamicLinkData data) async {
      handleSuccessLinking(data);
    }, onError: (OnLinkErrorException error) async {
      print(error.message.toString());
    });
  }

  Future<String> createReferralLink(String referralCode) async {
    final DynamicLinkParameters dynamicLinkParameters = DynamicLinkParameters(
      uriPrefix: 'https://chikooapp.page.link',
      link: Uri.parse('https://asim123.com/refer?code=$referralCode'),
      androidParameters: AndroidParameters(
        packageName: 'com.example.FirstProject',
      ),
      // socialMetaTagParameters: SocialMetaTagParameters(
      //   title: 'Refer A Friend',
      //   description: 'Refer and earn',
      //   imageUrl: Uri.parse(
      //       'https://www.insperity.com/wp-content/uploads/Referral-_Program1200x600.png'),
      // ),
    );

    final ShortDynamicLink shortLink =
        await dynamicLinkParameters.buildShortLink();

    final Uri dynamicUrl = shortLink.shortUrl;
    print(dynamicUrl);
    return dynamicUrl.toString();
  }

  void handleSuccessLinking(PendingDynamicLinkData data) {
    final Uri deepLink = data?.link;

    if (deepLink != null) {
      var isRefer = deepLink.pathSegments.contains('refer');
      if (isRefer) {
        var code = deepLink.queryParameters['code'];
        print(code.toString());
        if (code != null) {
          GeneratedRoute.navigateTo(
            MyRoutes.loginRoute,
            args: code,
          );
        }
      }
    }
  }
}
