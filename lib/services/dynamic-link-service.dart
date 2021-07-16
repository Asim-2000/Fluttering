// import 'package:firebase_dynamic_links/firebase_dynamic_links.dart'
// class DynamicLinks{
//   final dynamicLink = FirebaseDynamicLinks.instance;

//   handleDynamicLink() async{
//     dynamicLink.onLink(onSuccess: (PendingDynamicLinkData data) async {
//       handleSuccessLinking(data);

//     },onError: (onLinkErrorException error) async{
//       print(error.message.toString());
//     });
//   }
//   void handleSuccessLinking(PendingDynamicLinkData data){
//     final Uri deeplink = data?.link;

//     if (deeplink != null){
//       var isRefer = deeplink.pathSegments.contains('refer');
//       if (isRefer){
//         var code = deeplink.queryParameters['code'];
//         if (code != null){
//           Navigator.pushNamed(context,'/login',
//           arguments:{
//             code
//           }
//           });
//       }

//     }
//   }

// }