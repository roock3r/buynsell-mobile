import UIKit
import Flutter
import Firebase
import Braintree

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    
    if FirebaseApp.app() == nil {
        FirebaseApp.configure()
    }
    GeneratedPluginRegistrant.register(with: self)
    BTAppSwitch.setReturnURLScheme("org.silvatech.buynsell.payments")
       
   if #available(iOS 10.0, *) {
     UNUserNotificationCenter.current().delegate = self as? UNUserNotificationCenterDelegate
   }
    return true;//super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  override
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any]) -> Bool {
    if url.scheme?.localizedCaseInsensitiveCompare("org.silvatech.buynsell.payments") == .orderedSame {
        return BTAppSwitch.handleOpen(url, options: options)
    }
    return false
  }

// If you support iOS 8, add the following method.
override
func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any) -> Bool {
    if url.scheme?.localizedCaseInsensitiveCompare("org.silvatech.buynsell.payments") == .orderedSame {
        return BTAppSwitch.handleOpen(url, sourceApplication: sourceApplication)
    }
    return false
}
  override func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        let firebaseAuth = Auth.auth()
        firebaseAuth.setAPNSToken(deviceToken, type: AuthAPNSTokenType.unknown)

    }
    override func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        let firebaseAuth = Auth.auth()
        if (firebaseAuth.canHandleNotification(userInfo)){
            print(userInfo)
            return
        }
    }
}
