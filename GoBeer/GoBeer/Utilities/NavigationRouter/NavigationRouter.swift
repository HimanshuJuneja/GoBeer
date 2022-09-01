//
//  NavigationRouter.swift
//  GoBeer
//
//  Created by Himanshu Juneja on 01/09/22.
//

import Foundation
import UIKit

struct NavigationRouter {
    static func navigateToBeerDetails(for beer: BeerResponseProtocol, with navigationController: UINavigationController?) {
        let storyBoard = UIStoryboard(name: AppStoryboardsName.main.rawValue, bundle: nil)
        if let beerDetailsViewController = storyBoard.instantiateViewController(withIdentifier: BeerDetailsViewController.className) as? BeerDetailsViewController, let navigationController = navigationController {
            beerDetailsViewController.beer = beer
            navigationController.setNavigationBarHidden(true, animated: true)
            navigationController.pushViewController(beerDetailsViewController, animated: true)
        }
    }
    
    static func provideBeerListViewController() -> BeerListViewController {
        let storyBoard = UIStoryboard(name: AppStoryboardsName.main.rawValue, bundle: nil)
        let beerListViewController = storyBoard.instantiateViewController(withIdentifier: BeerListViewController.className) as! BeerListViewController
        beerListViewController.viewModel = BeersViewModel(service: BeerAPIService())
        return beerListViewController
    }
}
