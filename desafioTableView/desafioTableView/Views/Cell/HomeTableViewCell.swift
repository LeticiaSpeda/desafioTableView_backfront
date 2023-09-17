import UIKit

final class HomeTableViewCell: UITableViewCell {
    static let identifier =  String(describing: HomeTableViewCell.self)
    
     lazy var carBradLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var carImage: UIImageView = {
        let imgView = UIImageView()
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
    
    func setupCell(_ carName: String, nameImage: String) {
        carBradLabel.text = carName
        carImage.image = UIImage(named: nameImage)
    }
    
    private func configureHierarchy() {
        contentView.addSubview(carImage)
        contentView.addSubview(carBradLabel)
    }
    
    private func configuraContraints() {
        NSLayoutConstraint.activate([
            carImage.topAnchor.constraint(equalTo: contentView.topAnchor),
            carImage.heightAnchor.constraint(equalToConstant: 60),
            carImage.widthAnchor.constraint(equalToConstant: 60),
            carImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            carImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),

            carBradLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            carBradLabel.leadingAnchor.constraint(equalTo: carImage.trailingAnchor, constant: 8),
            carBradLabel.bottomAnchor.constraint(equalTo: carImage.bottomAnchor),
            
            contentView.heightAnchor.constraint(equalToConstant: 130)

        ])
    }
    
    private func configureStyle() {
        backgroundColor = .white
        selectionStyle = .none
    }
}
