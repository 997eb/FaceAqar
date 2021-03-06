//
//  AppDelegate.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 07/06/1442 AH.
//

import UIKit
import GoogleMaps
import GooglePlaces

@main
class AppDelegate: UIResponder, UIApplicationDelegate , UITabBarControllerDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        GMSServices.provideAPIKey("AIzaSyDgg4D567XfdUCA_kVrL0AuTV-xbZ4KvW0")
        GMSPlacesClient.provideAPIKey("AIzaSyDgg4D567XfdUCA_kVrL0AuTV-xbZ4KvW0")
        
        
        
       /* let defaults = UserDefaults.standard
        defaults.set("false", forKey: "open")
        print(defaults.string(forKey: "open") ?? "false")
*/

        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

 func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if viewController is addViewController {
   
            if let popupView = tabBarController.storyboard?.instantiateViewController(withIdentifier: "Popup") {
                tabBarController.present(popupView, animated: true)
                return false
            }
            return false
        }
        

        return true
    }

}
