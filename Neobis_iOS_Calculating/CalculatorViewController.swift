//  ViewController.swift
//  Neobis_iOS_Calculating
//  Created by Askar Soronbekov

import UIKit

 class ViewController: UIViewController {

     let mainView = CalculatorView()
     let calculator = CalculatorModel(operand1: 0, operand2: 0, currentOperation: .add)

     override var preferredStatusBarStyle: UIStatusBarStyle {
         .lightContent
     }

     override func viewDidLoad() {
         super.viewDidLoad()

         addToView()
         constraints()
     }

     func addToView() {
         view.addSubview(mainView)

     }

     func constraints() {
         mainView.translatesAutoresizingMaskIntoConstraints = false

         NSLayoutConstraint.activate([
             mainView.topAnchor.constraint(equalTo: view.topAnchor),
             mainView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
             mainView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
             mainView.trailingAnchor.constraint(equalTo: view.trailingAnchor),

         ])

     }
 }


