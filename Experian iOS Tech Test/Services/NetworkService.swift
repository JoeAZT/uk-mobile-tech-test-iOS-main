//
//  NetworkService.swift
//  Experian iOS Tech Test
//
//  Created by Experian ECS
//

import Foundation
import RxSwift
import RxAlamofire

class NetworkService {
    func request(url: String) -> Observable<(HTTPURLResponse, Data)> {
        return RxAlamofire
            .requestData(.get, url)
    }
}
