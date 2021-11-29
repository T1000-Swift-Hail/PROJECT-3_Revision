//
//  HomeVC.swift
//  Project-3
//
//  Created by Majed Alshammari on 23/04/1443 AH.
//

import UIKit

class HomeVC: UIViewController {
    
    var collectionImages = [UIImage(named: "cover1")!,UIImage(named: "cover2")!,UIImage(named: "cover3")!,UIImage(named: "cover4")!,UIImage(named: "cover5")!]
    var pass = "you passed"
    var timer: Timer?
    var currentCellIndex = 0
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var collectionView: UICollectionView!
    var textSelected: String?
    var imageSelected: UIImage?
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        collectionView.delegate = self
        collectionView.dataSource = self
        pageControl.numberOfPages = collectionImages.count
        startTimer()
    }
    
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 2.5, target: self, selector: #selector(moveToNextIndex), userInfo: nil, repeats: true)
    }
    
    
    @objc func moveToNextIndex() {
        if currentCellIndex < collectionImages.count - 1 {
            
            currentCellIndex += 1
            
        }
        else {
            currentCellIndex = 0
        }
        
        collectionView.scrollToItem(at: IndexPath(item: currentCellIndex, section: 0), at: .centeredHorizontally, animated: true)
        pageControl.currentPage = currentCellIndex
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! WorkersDescription
        vc.imageView = imageSelected
        vc.textLabel = textSelected
    }
    
    @IBAction func plumberButton(_ sender: Any) {
        imageSelected = UIImage(named: "plumber")
        textSelected = plumber.description
        performSegue(withIdentifier: "goToRequest", sender: nil)
    }
    @IBAction func electricalButton(_ sender: Any) {
        imageSelected = UIImage(named: "electrical")
        textSelected = electrical.description
        performSegue(withIdentifier: "goToRequest", sender: nil)
    }
    @IBAction func carpenterButton(_ sender: Any) {
        imageSelected = UIImage(named: "carpenter")
        textSelected = carpenter.description
        performSegue(withIdentifier: "goToRequest", sender: nil)
    }
    @IBAction func welderButton(_ sender: Any) {
        imageSelected = UIImage(named: "welder")
        textSelected = welder.description
        performSegue(withIdentifier: "goToRequest", sender: nil)
    }
    @IBAction func cleanerButton(_ sender: Any) {
        imageSelected = UIImage(named: "cleaner")
        textSelected = cleaner.description
        performSegue(withIdentifier: "goToRequest", sender: nil)
    }
    
    @IBAction func painterButton(_ sender: Any) {
        imageSelected = UIImage(named: "painter")
        textSelected = painter.description
        performSegue(withIdentifier: "goToRequest", sender: nil)
    }
}

extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        collectionImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.imageView.image = collectionImages[indexPath.row]
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
