//
//  ViewController.swift
//  BasicMovist
//
//  Created by mariemik on 03/03/22.
//

import UIKit

class ViewController: UIViewController {
    let chocolates: [String] = ["amargo", "preto", "ao leite", "granulado", "granulado"]
    let tableView = UITableView()
    let titleLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .red
        setupConstraints()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "reuseIdentifier")
        tableView.dataSource = self
        tableView.delegate = self
        titleLabel.text = "Suko de frutinha"
        titleLabel.textAlignment = .center
    }
    
    func setupConstraints () {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(titleLabel)
        view.addSubview(tableView)
        
        titleLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        tableView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
    }
    // tableView: adicionar uma tableview na tela (dentroda view da viewcontroller)
    // fazer constraints da tableview
    // adicionar células
    // UITitle ;  em tal lugar; se chama tal; tal cor; tal letra; posição da letra;
    // UIFilmes
    // UIButton ; em tal lugar; se chama tal; tal cor; tal letra; posição da letra;
}

// MARK: - TableViewDataSource
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chocolates.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.text = chocolates[indexPath.row]
        return cell
    }
}
