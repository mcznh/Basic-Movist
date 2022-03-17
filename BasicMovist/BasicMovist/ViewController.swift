//
//  ViewController.swift
//  BasicMovist
//
//  Created by mariemik on 03/03/22.
//

import UIKit

class ViewController: UIViewController {

    let lable = UILabel()
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .red
        
        configureLabel()
    }

    func configureLabel() {
        lable.text = "coração melão"
        lable.textColor = .yellow
        view.addSubview(lable)
        lable.translatesAutoresizingMaskIntoConstraints = false
        lable.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        lable.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
    }
    

    
    
    
    // tableView; adicionar tela de cima com constraints
    // UITitle ;  em tal lugar; se chama tal; tal cor; tal letra; posição da letra;
    // UIFilmes
    // UIButton ; em tal lugar; se chama tal; tal cor; tal letra; posição da letra;
    
    
}

