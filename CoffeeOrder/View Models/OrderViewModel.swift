//
//  OrderViewModel.swift
//  CoffeeOrder
//
//  Created by karlis.stekels on 16/09/2022.
//

import Foundation

class OrderListViewModel {
    var ordersViewModel: [OrderViewModel]
    
    init() {
        self.ordersViewModel = [OrderViewModel]()
    }
}

extension OrderListViewModel {
    func orderViewModel(at index: Int) -> OrderViewModel {
        return self.ordersViewModel[index]
    }
}

struct OrderViewModel {
    let order: Order
}

extension OrderViewModel {
    var name: String {
        self.order.name
    }
    
    var email: String {
        return self.order.email
    }
    
    var type: String {
        self.order.type.rawValue.capitalized
    }
    
    var size: String {
        self.order.size.rawValue.capitalized
    }
}
