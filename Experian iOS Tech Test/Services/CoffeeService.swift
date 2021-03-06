//
//  CoffeeService.swift
//  Experian iOS Tech Test
//
//  Created by Experian ECS
//

import Foundation
import RxSwift
import RxAlamofire

enum CoffeeServiceError: Error {
    case parsingError
    case networkError
}

class CoffeeService {

    let apiURL = "https://experian-tech-test.herokuapp.com/api/v2/coffee"
    var disposeBag = DisposeBag()

    /// CoffeeService should return an parsing error if the json cannot be serialised
    /// CoffeeService should return a network error if the endpoint is unavailable
    func fetchCoffees() -> Observable<[Coffee]> {
        return NetworkService()
            .request(url: apiURL)
            .map { response, json in
                // unavailable == 503
                if response.statusCode == 503 {
                    throw CoffeeServiceError.networkError
                }
                
                do {
                    return try JSONDecoder().decode([Coffee].self, from: json)
                } catch {
                    throw CoffeeServiceError.parsingError
                }
                
            }
    }
}


