//
//  CoffeeViewModel.swift
//  Experian iOS Tech Test
//
//  Created by Experian ECS
//

import Foundation
import RxSwift

struct CoffeeViewModel {
    func fetchCoffees() -> Observable<[Coffee]> {
        return CoffeeService().fetchCoffees()
    }
}
