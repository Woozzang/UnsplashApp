//
//  SearchViewController.swift
//  UnsplashApp
//
//  Created by Park Woo Chan on 2022/06/29.
//

import UIKit
import SnapKit
import RxSwift
import RxCocoa

class SearchViewController: UIViewController {
    
    private let loginTopView: UIView = {
        $0.backgroundColor = .gray
        return $0
    }(UIView())
    
    private let titleLabel: UILabel = {
        $0.text = "Unsplash"
        return $0
    }(UILabel())
    
    private let loginButton: UIButton = {
        $0.setTitle("로그인", for: .normal)
        return $0
    }(UIButton())
    
    private let searchBar: UISearchBar = {
        return $0
    }(UISearchBar())
    
    private let tableView = UITableView()
    
    init(test: String) {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#function)
    }
    
    private func configure() {
        
        // vc 에서 넘겨주는 인풋
        // vm 에서 넘겨주는 아웃풋
        
        view.backgroundColor = .white
        
        loginTopView.addSubview(titleLabel)
        
        titleLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        loginTopView.addSubview(loginButton)
        
        loginButton.snp.makeConstraints { make in
            make.centerY.equalTo(titleLabel)
            make.trailing.equalToSuperview().inset(10)
        }
        
        loginTopView.addSubview(loginButton)
        
//        view.addSubview(loginTopView)
//
//        loginTopView.snp.makeConstraints { make in
//            make.height.equalTo(50)
//            make.top.leading.trailing.equalTo(view.safeAreaLayoutGuide)
//        }
//
        view.addSubview(searchBar)
        
        searchBar.snp.makeConstraints { make in
//            make.top.equalTo(loginTopView.snp.bottom)
            make.top.leading.trailing.equalTo(view.safeAreaLayoutGuide)
            
        }
        
        view.addSubview(tableView)
        
        tableView.snp.makeConstraints { make in
            make.top.equalTo(searchBar.snp.bottom)
            make.leading.trailing.bottom.equalToSuperview()
            
        }
    }
}
