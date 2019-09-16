//
//  CartVC.swift
//  Mountain Gear
//
//  Created by Mark Rabins on 9/15/19.
//  Copyright © 2019 Mark Rabins. All rights reserved.
//

import UIKit
import Stripe

class CartVC: UIViewController {
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var buyButton: UIButton!
    
    var theProduct = [Product]()
    var theProductPrice = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productTitle.text = theProduct.first?.title
        theProductPrice = Int(theProduct.first?.price ?? 1.00)
        productPrice.text = String("$\(theProductPrice).00")
        productImage.image = UIImage(named: theProduct.first?.imageName ?? "NoImage.png")
    }
    @IBAction func checkOutButton(_ sender: Any) {
        let addCardViewController = STPAddCardViewController()
        addCardViewController.delegate = self
        navigationController?.pushViewController(addCardViewController, animated: true)
    }
}

extension CartVC: STPAddCardViewControllerDelegate {
    
    func addCardViewControllerDidCancel(_ addCardViewController: STPAddCardViewController) {
        navigationController?.popViewController(animated: true)
    }
    
    func addCardViewController(_ addCardViewController: STPAddCardViewController, didCreateToken token: STPToken, completion: @escaping STPErrorBlock) {
        StripeClient.shared.completeCharge(with: token, amount: theProductPrice) { result in
            switch result {
            case .success:
                completion(nil)
                let alertController = UIAlertController(title: "Purchase Successful", message: "The purchase price was $\(self.theProductPrice).00 and your payment confirmation is \(token) ", preferredStyle: .alert)
                let alertAction = UIAlertAction(title: "OK", style: .default, handler: { _ in
                    self.navigationController?.popViewController(animated: true)
                })
                alertController.addAction(alertAction)
                self.present(alertController, animated: true)
            case .failure(let error):
                completion(error)
            }
        }
    }
}
