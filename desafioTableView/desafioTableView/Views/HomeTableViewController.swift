import UIKit

final class HomeTableViewController: UITableViewController {
    
    var listCar: [Car] = [
        Car(carBrand: "ford",
            carBrandImage: UIImage(named: "ford") ?? UIImage()),
        Car(carBrand: "bmw",
            carBrandImage: UIImage(named: "bmw") ?? UIImage()),
        Car(carBrand: "toyota",
            carBrandImage: UIImage(named: "toyota") ?? UIImage()),
        Car(carBrand: "honda",
            carBrandImage: UIImage(named: "honda") ?? UIImage()),
        Car(carBrand: "fiat",
            carBrandImage: UIImage(named: "fiat") ?? UIImage()),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray.withAlphaComponent(0.3)
        tableView.register(HomeTableViewCell.self, forCellReuseIdentifier: HomeTableViewCell.identifier)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listCar.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: HomeTableViewCell.identifier, for: indexPath) as? HomeTableViewCell {
            
            cell.setupCell(listCar[indexPath.row])
            
            return cell
        }
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("A marca selecionada é \(listCar[indexPath.row].carBrand)")
    }
    
}
