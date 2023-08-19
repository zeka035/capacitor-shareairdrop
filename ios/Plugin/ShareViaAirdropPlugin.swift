import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(ShareViaAirdropPlugin)
public class ShareViaAirdropPlugin: CAPPlugin {
    @objc func shareViaAirDrop(_ call: CAPPluginCall) {
        let text = call.getString("text") ?? ""
        let items: [Any] = [text]
        let activityViewController = UIActivityViewController(activityItems: items, applicationActivities: nil)

        // Restrict sharing to AirDrop only
        activityViewController.excludedActivityTypes = [
            UIActivity.ActivityType.mail,
            UIActivity.ActivityType.message,
            // Add other activity types you want to exclude here
        ]

        DispatchQueue.main.async {
            if let viewController = self.bridge?.viewController {
                viewController.present(activityViewController, animated: true, completion: nil)
            }
        }
    }
}
