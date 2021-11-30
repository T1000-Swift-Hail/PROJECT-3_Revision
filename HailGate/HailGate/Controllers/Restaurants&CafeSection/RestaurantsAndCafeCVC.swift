//
//  Restaurants&CafeCVC.swift
//  HailGate
//
//  Created by Monafh on 24/04/1443 AH.
//
//
//import UIKit
//
//
//struct Photo {
//    let name : String
//    let photos : [UIImage]
//}
//
//
//
//
//class RestaurantsAndCafeCVC: UIViewController ,  UICollectionViewDataSource, UICollectionViewDelegateFlowLayout  {
//    
//
//    @IBOutlet weak var photoRestaurantsAndCafe: UICollectionView!
//
//
//    //    var selectPhoto = UIImage(named: "")
//
//    var arraysPhoto = [Photo]()
//
//    //    let arraysPhoto = [UIImage(named: <#T##String#>),UIImage(named: <#T##String#>)]
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
////        arraysPhoto.append(Photo(name: "Restaurants", photos: [UIImage(named: "1")!,UIImage(named: "1")!])
////
////                           arraysPhoto.append(Photo(name: "jj", photos: )
////
////        arraysPhoto.append(Photo(name: "Cafe", photos: [UIImage(named: "1")!,UIImage(named: "1")!])
////
////            photoRestaurantsAndCafe.delegate = self
////            photoRestaurantsAndCafe.dataSource = self
////                                              }
//
//
//func numberOfSections(in collectionView: UICollectionView) -> Int {
//            return arraysPhoto.count
//        }
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//            return arraysPhoto[section].photos.count
//        }
//
//func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//
//    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RestaurantsAndCafeCell", for: indexPath) as? RestaurantsAndCafeCellCollectionViewCell
//            cell?.photosForSection.image = arraysPhoto[indexPath.section].photos[indexPath.row]
//            return cell ?? ""
//        }
//
//       func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//            return CGSize(width: collectionView.frame.width * 0.45, height: collectionView.frame.width * 0.45)
//        }
//
//
//
//    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
//            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "sectionHeader", for: indexPath) as! SectionCollectionReusableView
//            header.sectionHeaderCV.text = arraysPhoto[indexPath.section].name
//            header.backgroundColor = .green
//            return header
//        }
//
//                                              }
//
//
