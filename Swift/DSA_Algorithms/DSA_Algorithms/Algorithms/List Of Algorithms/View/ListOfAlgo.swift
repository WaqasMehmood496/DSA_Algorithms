//
//  ListOfAlgo.swift
//  DSA_Algorithms
//
//  Created by iApple Basement on 19/11/2023.
//

import UIKit

class ListOfAlgo: UIViewController {
    
    //UI COMPONENT'S
    @IBOutlet weak var listOfAlgo: UITableView!
    
    // DATA MEMBER'S
    var viewModel = ListOfAlgoViewModel()
    
    // VC LIDE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "List Of Algorithms"
        setupTableView()
    }
    
}


// MARK: -------------------------- HELPING METHOD'S --------------------------
extension ListOfAlgo {
    
    func setupTableView() {
        
        listOfAlgo.register(AlgoCell.nib, forCellReuseIdentifier: AlgoCell.identifier)
        
    }
    
}


// MARK: -------------------------- UITABLEVIEW DATA SOURCE AND DELEGATE METHOD'S --------------------------
extension ListOfAlgo: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.algoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let algoCell = tableView.dequeueReusableCell(withIdentifier: AlgoCell.identifier, for: indexPath) as! AlgoCell
        algoCell.config(algoData: viewModel.algoList[indexPath.row])
        return algoCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.navigationController?.pushViewController(LinkedList(), animated: true)
    }
    
}
