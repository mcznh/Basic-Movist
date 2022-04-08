import UIKit

class CustomTableViewCell: UITableViewCell {
    let movieYearLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 60, height: 45))
    
    func setupCell(movieName: String, movieYear: String) {
        textLabel?.text = movieName
        movieYearLabel.text = movieYear
        accessoryView = movieYearLabel
    }
}
