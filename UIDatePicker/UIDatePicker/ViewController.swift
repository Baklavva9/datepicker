//
//  ViewController.swift
//  UIDatePicker
//
//  Created by Izati Ng on 27/12/17.
//  Copyright © 2017 bklv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var dateField: UITextField!
    
    let picker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        createDatePicker()
        
    }
    
    func createDatePicker() {
        
        // toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        // done button for toolbar
        let done = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([done], animated: false)
        
        dateField.inputAccessoryView = toolbar
        dateField.inputView = picker
        
        // format picker for date
        picker.datePickerMode = .date
        
    }
    
    @objc func donePressed() {
        // format date
        
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .none
        let dateString = formatter.string(from: picker.date)
        
        dateField.text = "\(dateString)"
        self.view.endEditing(true)
    }
    
}
