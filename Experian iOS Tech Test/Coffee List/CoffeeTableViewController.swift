//
//  CoffeeTableViewController.swift
//  Experian iOS Tech Test
//
//  Created by Experian ECS
//

import UIKit
import SwiftUI
import Foundation
import RxSwift

class CoffeeTableViewController: UITableViewController {

    let viewModel = CoffeeViewModel()
    var disposeBag = DisposeBag()
    var coffees: [Coffee] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // View setup
        self.tableView.separatorStyle = .none
        self.tableView.registerTableViewCell(cellName: "CoffeeTableViewCell")

        viewModel.fetchCoffees()
            .subscribe { event in
                switch(event) {
                case .next(let input):
                    self.coffees = input
                    self.tableView.reloadData()
                case .error(let error):
                    print(error)
                case .completed:
                    print("completed")
                }
            }
            .disposed(by: disposeBag)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 10
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CoffeeTableViewCell", for: indexPath) as! CoffeeTableViewCell
        let colorFromHex = UIColor.init(hex: "#AD7E7EFF")
        let imageURL = URL(string: "https://experian-tech-test.herokuapp.com/images/coffee_mocha.png")
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let swiftUIView = CoffeeDetailView(coffee: Coffee(id: 1, name: "Americano", imageResource: "coffee_americano.png", imageBackground: "#FFB72CFF"))
        let hostingController = UIHostingController(rootView: swiftUIView)
        present(hostingController, animated: true, completion: nil)
    }
}
