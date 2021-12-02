//
//  ViewController.swift
//  Project 3
//
//  Created by Ahmed Alenazi on 27/04/1443 AH.
//

import UIKit

// struct
struct TextCallViewModel {
    let text:String
    let font:UIFont
    
    
}

// Main Enume witch in it the three main data section
enum SuctionType {
    case productPhotos(Imeges:[UIImage])
    case productinfo(viewModels: [TextCallViewModel])
    case relatedProducts(viewModels: [RelatedProductTableViewCellViewModel])
    
    var titel:String?  {
        switch self {
            
        case.relatedProducts:
            return "Related Product"
        default:
            return nil
            
            
        }
        
    }
}
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
   
    // define the table view
    
    private let tableView:UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        table.register(PhotoTableViewCell.self, forCellReuseIdentifier: PhotoTableViewCell.identifier)
        table.register(RelatedProductTableViewCell.self, forCellReuseIdentifier: RelatedProductTableViewCell.identifire)
        return table
        
        
    }()
    
    private var sections = [SuctionType]()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureSections()
        title = "Fancy Shop"
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .lightGray
        
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    // function to configure sections data for section
    private func configureSections() {
        
        sections.append(.productPhotos(Imeges: [
        UIImage(named: "images-1"),
        UIImage(named: "images-2"),
        UIImage(named: "images-3")
        
        
        ].compactMap({ $0 })))
        sections.append(.productinfo(viewModels: [
            TextCallViewModel(text: "discription", font: .systemFont(ofSize: 18)),
            TextCallViewModel(text: "price", font: .systemFont(ofSize: 22))
        ]))
        sections.append(.relatedProducts(viewModels: [
           
            RelatedProductTableViewCellViewModel(imege:UIImage(named: "images-7") , titel: "shirt"),
            RelatedProductTableViewCellViewModel(imege:UIImage(named: "images-8") , titel: "dress"),
            RelatedProductTableViewCellViewModel(imege:UIImage(named: "images-9") , titel: "shirt")
        ]))
        
    }
    // number of section
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    // number of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let sectionType = sections[section]
        
        switch sectionType {
            
        case.productPhotos:
            return 1
            
        case .productinfo(let viewModels):
            return viewModels.count
            
        case .relatedProducts(viewModels: let viewModels):
            return viewModels.count
        }
    }
    // titel for header
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let sectionType = sections[section]
        return sectionType.titel

    }
    
    // cell for row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let sectionType = sections[indexPath.section]
        
        
        switch sectionType {
            
        case .productPhotos(let images):
            
            guard let cell = tableView.dequeueReusableCell(withIdentifier: PhotoTableViewCell.identifier, for: indexPath) as? PhotoTableViewCell else {
                
                fatalError()
            }
            cell.configure(with: images)
           
            return cell
            
        case .productinfo(let viewModels):
            let viewModel = viewModels [indexPath.row]
           let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath
           )
            cell.configure(with: viewModel)
            
            return cell
            
            
        case .relatedProducts(let viewModels):
            
            guard let cell = tableView.dequeueReusableCell(withIdentifier: RelatedProductTableViewCell.identifire, for: indexPath) as? RelatedProductTableViewCell else {
                
                fatalError()
                
            }
            cell.configure(with: viewModels[indexPath.row])
            return cell
        }
    
    }
    // height for row
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let sectionType = sections[indexPath.section]
        
        switch sectionType {
            
        case .productPhotos:
            return view.frame.size.width
        case .productinfo:
            return UITableView.automaticDimension
        case .relatedProducts:
            return 150
        }
    }
  
}

extension UITableViewCell {
    // configer the text
    func configure(with viewModel:TextCallViewModel){
        textLabel?.text = viewModel.text
        textLabel?.numberOfLines = 0
        textLabel?.font = viewModel.font
    }
}

