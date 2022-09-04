//
//  ViewController.swift
//  CheckMyLiquid
//
//  Created by Deha Süer on 4.09.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var waterLabel: UILabel!
    @IBOutlet weak var mojitoLabel: UILabel!
    @IBOutlet weak var juiceLabel: UILabel!
    
    let defaults  = UserDefaults.standard
    var drinksArray: [[String: String]] = []
    
    var waterArray: [Int] = []
    var mojitoArray: [Int] = []
    var juiceArray: [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        drinksArray = UserDefaults.standard.value(forKey: "MyDrinks") as? [[String: String]] ?? []
        getDrinks()
        tableView.reloadData()
           
        waterLabel.text = "\(String(waterArray.reduce(0, +))) ML"
        mojitoLabel.text = "\(String(mojitoArray.reduce(0, +))) ML"
        juiceLabel.text = "\(String(juiceArray.reduce(0, +))) ML"
        
       }

    @IBAction func addDrinksButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "drinks", sender: self)
    }
    
}

extension ViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return drinksArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:DrinksTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for:indexPath as IndexPath) as! DrinksTableViewCell
        let drink = drinksArray[indexPath.row]["drink"]
        let amount = drinksArray[indexPath.row]["amount"]
               
        cell.drink.text = drink
        cell.amount.text = amount
               
        if drink == "Water" {
            cell.drinkImage.image = UIImage(named: "water")
        } else if drink == "Mojito" {
            cell.drinkImage.image = UIImage(named: "mojito")
        } else if drink == "Juice" {
            cell.drinkImage.image = UIImage(named: "juice")
        }
            return cell
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            print("Delete row")
            
            drinksArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            defaults.set(drinksArray, forKey: "MyDrinks")
            viewWillAppear(true)
        }
    }
  
    
}

extension ViewController {
    func getDrinks() {
        
        
        waterArray.removeAll()
        mojitoArray.removeAll()
        juiceArray.removeAll()
        
        for drink in drinksArray {
            let fluid = drink["drink"]
            let ml = drink["amount"]
            let intMl = Int(ml!)
            
            if fluid == "Water" {
                waterArray.append(intMl!)
            } else if fluid == "Mojito" {
                mojitoArray.append(intMl!)
            } else if fluid == "Juice" {
                juiceArray.append(intMl!)
            }
        }
    }
}
