//
//  StripeClient.swift
//  Mountain Gear
//
//  Created by Mark Rabins on 9/14/19.
//  Copyright © 2019 Mark Rabins. All rights reserved.
//

import Foundation
import Alamofire
import Stripe

enum Result {
    case success
    case failure(Error)
}

final class StripeClient {
    
    static let shared = StripeClient()
    
    private init() {
        // private
    }
    
    private lazy var baseURL: URL = {
        guard let url = URL(string: Constants.baseURLString) else {
            fatalError("Invalid URL")
        }
        return url
    }()
    
    func completeCharge(with token: STPToken, amount: Int, completion: @escaping (Result) -> Void) {
        let url = baseURL.appendingPathComponent("charge")
        let params: [String: Any] = [
            "token": token.tokenId,
            "amount": amount,
            "currency": Constants.defaultCurrency,
            "description": Constants.defaultDescription
        ]
        Alamofire.request(url, method: .post, parameters: params)
            .validate(statusCode: 200..<300)
            .responseString { response in
                switch response.result {
                case .success:
                    completion(Result.success)
                    print("Result.success", params)

                case .failure(let error):
                    completion(Result.failure(error))
                }
        }
    }
    
}

