//
//  WelcomeView.swift
//  11thWeek
//
//  Created by Mustafa Berkay Kaya on 14.12.2021.
//

import UIKit
import MobilliumBuilders
import TinyConstraints

class WelcomeView: UIView {
    
    weak var delagate: WelcomeViewDelegate?
    
    private let titleLabel = UILabelBuilder()
        .numberOfLines(1)
        .build()
    
    private let button = UIButtonBuilder()
        .build()
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureContents()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureContents()
        
    }
    
    private func configureContents() {
        addSubViews()
        titleLabel.text = "Welcome to 11th of Week"
        button.setTitle("Ok", for: .normal)
        
    }
}

extension WelcomeView {
    
    private func addSubViews() {
        addTittle()
        addButton()
    }
    
    private func addTittle() {
        addSubview(titleLabel)
        titleLabel.horizontalToSuperview()
        titleLabel.verticalToSuperview()
        titleLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        titleLabel.textAlignment = .center
    }
    
    private func addButton() {
        addSubview(button)
        button.horizontalToSuperview()
        button.bottomToSuperview()
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
    }
    
    @objc
    private func didTapButton() {
        delagate?.didTapEnableButton()
    }
}
