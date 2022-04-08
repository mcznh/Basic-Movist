import UIKit

class ViewController: UIViewController {
    let movies: [String] = ["Sonho de Liberdade", "Massacre da Serra Elétrica", "Casa de Cera", "Jogos Mortais", "Grinch"]
    let tableView = UITableView()
    let titleLabel = UILabel()
    private let customCellReuseIdentifier = "customCellReuseIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
          
        setupConstraints()
        setupTableView()
        setupView()
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
    
    private func setupTableView() {
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: customCellReuseIdentifier)
        tableView.dataSource = self
        titleLabel.text = "Filmes"
        titleLabel.textAlignment = .center
    }
    
    private func setupView() {
        view.backgroundColor = .white
    }
}

//      Etapas do Projeto
// tableView: adicionar uma tableview na tela (dentro da view da viewcontroller)
// fazer constraints da tableview
// adicionar células
// criar uma Accessory view para a célula, onde será apresentado o ano de lançamento do filme.
// 


// get JSON data into object for display
// Decode JSON Data String to Swift Objects

// MARK: - TableViewDataSource
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell =  tableView.dequeueReusableCell(withIdentifier: customCellReuseIdentifier, for: indexPath) as? CustomTableViewCell else {
            return UITableViewCell()
        }
        cell.setupCell(movieName: movies[indexPath.row], movieYear: "666")
        return cell
    }
}
