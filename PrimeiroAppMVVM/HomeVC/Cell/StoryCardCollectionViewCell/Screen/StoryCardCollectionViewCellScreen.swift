//
//  StoryCardCollectionViewCellScreen.swift
//  PrimeiroAppMVVM
//
//  Created by Felipe  on 02/03/23.
//

import UIKit

class StoryCardCollectionViewCellScreen: UIView {

    lazy var cardView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 15
        view.setCardShadow()
        return view
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(cardView)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            cardView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            cardView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            cardView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 15),
            cardView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -15),
        ])
    }
    
}
