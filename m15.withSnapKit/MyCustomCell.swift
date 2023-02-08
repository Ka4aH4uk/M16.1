//
//  MyCustomCell.swift
//  m15.withSnapKit
//
//  Created by Ka4aH on 31.01.2023.
//

import UIKit
import SnapKit

class MyCustomCell: UITableViewCell {
    
    let colorLabel = UILabel()
    let headerLabel = UILabel()
    let mainTextLabel = UILabel()
    let timeLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureContents()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(_ viewModel: DataText) {
        colorLabel.text = viewModel.color
        headerLabel.text = viewModel.header
        mainTextLabel.text = viewModel.mainText
        timeLabel.text = viewModel.timeText
    }
    
    func configureContents() {
        contentView.addSubview(colorLabel)
        colorLabel.layer.masksToBounds = true
        colorLabel.layer.cornerRadius = 8
        colorLabel.text = Constants.Text.image
        colorLabel.backgroundColor = Constants.Colors.lightColor
        colorLabel.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.width.equalTo(50)
            make.left.equalToSuperview().inset(16)
            make.top.equalToSuperview().inset(16)
        }
        
        contentView.addSubview(headerLabel)
        headerLabel.text = Constants.Text.title
        headerLabel.textColor = Constants.Colors.blackColor
        headerLabel.font = Constants.Fonts.ui16Semi
        headerLabel.snp.makeConstraints { make in
            make.height.equalTo(19)
            make.width.equalTo(57)
            make.left.equalToSuperview().inset(82)
            make.top.equalToSuperview().inset(16)
        }
        
        contentView.addSubview(mainTextLabel)
        mainTextLabel.text = Constants.Text.text
        mainTextLabel.numberOfLines = 0
        mainTextLabel.spacing = 2.5
        mainTextLabel.textColor = Constants.Colors.blackColor
        mainTextLabel.font = Constants.Fonts.ui14Regular
        mainTextLabel.text = Constants.Text.text
        mainTextLabel.snp.makeConstraints { make in
            make.right.equalToSuperview().inset(24)
            make.left.equalToSuperview().inset(82)
            make.top.equalToSuperview().inset(43)
        }
        
        contentView.addSubview(timeLabel)
        timeLabel.text = Constants.Text.time
        timeLabel.textColor = Constants.Colors.grayColor
        timeLabel.font = Constants.Fonts.ui14Regular
        timeLabel.text = Constants.Text.time
        timeLabel.snp.makeConstraints { make in
            make.height.equalTo(17)
            make.top.equalToSuperview().inset(18)
            make.right.equalToSuperview().inset(16)
        }
    }
}

extension UILabel {
    var spacing: CGFloat {
        get {
            return 0
        }
        set {
            let textAlignment = self.textAlignment
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineSpacing = newValue
            let attributedString = NSAttributedString(string: self.text ?? "", attributes: [NSAttributedString.Key.paragraphStyle : paragraphStyle])
            self.attributedText = attributedString
            self.textAlignment = textAlignment
        }
    }
}
