import UIKit

final class HomeTableViewCell: UITableViewCell {
    static let identifier =  String(describing: HomeTableViewCell.self)
    
    private lazy var carBradLabel: UILabel = {
        let label = UILabel()
        label.text = "Ford"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var carImageFixed: UIImageView = {
        let image = UIImage(named: "car")
        let imgView = UIImageView(image: image)
        imgView.contentMode = .scaleAspectFit
        imgView.translatesAutoresizingMaskIntoConstraints = false
        return imgView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style , reuseIdentifier: reuseIdentifier)
        commomInit()
    }
    
    required init?(coder: NSCoder) { nil }
    
    private func commomInit() {
        configureHierarchy()
        configuraContraints()
        configureStyle()
    }
    
    private func configureHierarchy() {
        contentView.addSubview(carImageFixed)
        contentView.addSubview(carBradLabel)
    }
    
    private func configuraContraints() {
        NSLayoutConstraint.activate([
            carImageFixed.topAnchor.constraint(equalTo: contentView.topAnchor),
            carImageFixed.heightAnchor.constraint(equalToConstant: 45),
            carImageFixed.widthAnchor.constraint(equalToConstant: 45),
            carImageFixed.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            carImageFixed.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),

            carBradLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            carBradLabel.leadingAnchor.constraint(equalTo: carImageFixed.trailingAnchor, constant: 8),
            carBradLabel.bottomAnchor.constraint(equalTo: carImageFixed.bottomAnchor),
            

        ])
    }
    
    private func configureStyle() {
        backgroundColor = .systemCyan
    }
}
