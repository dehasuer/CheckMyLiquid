//
//  AddDrinksViewController.swift
//  CheckMyLiquid
//
//  Created by Deha Süer on 4.09.2022.
//

import UIKit

class AddDrinksViewController: UIViewController {
    @IBOutlet weak var drinksPickerView: UIPickerView!
    
    var pickerData = [["Water", "Mojito", "Juice"], ["100", "250", "500"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        drinksPickerView.delegate = self
        drinksPickerView.dataSource = self

        // Do any additional setup after loading the view.
    }
    

    @IBAction func drinksButtonTapped(_ sender: Any) {
        let defaults = UserDefaults.standard
                
        let selectedDrink = drinksPickerView.selectedRow(inComponent: 0)
        let selectedAmount = drinksPickerView.selectedRow(inComponent: 1)
        let savedDrink = pickerData[0][selectedDrink]
        let savedAmount = pickerData[1][selectedAmount]
        let dict = ["drink": savedDrink, "amount": savedAmount]
                
        var drinksArray: [[String: String]] = defaults.value(forKey: "MyDrinks") as? [[String: String]] ?? []
                
        drinksArray.append(dict)
        defaults.set(drinksArray, forKey: "MyDrinks")
        print(drinksArray)
        dismiss(animated: true, completion: nil)

    }
    

}

extension AddDrinksViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[component][row]
    }
}
