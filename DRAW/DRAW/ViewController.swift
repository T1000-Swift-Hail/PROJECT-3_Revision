//
//  ViewController.swift
//  DRAW
//
//  Created by noyer altamimi on 25/04/1443 AH.
//

import UIKit
import PencilKit


class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    var canvasView = PKCanvasView(frame: .zero)
    var selectImage : UIImage? = nil
    
    
    
    @IBOutlet weak var navigationBar: UINavigationBar!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigationBar()
        
        if selectImage != nil {
            
            imageView.isHidden = false
            imageView.image = selectImage
            
            self.canvasView = PKCanvasView.init(frame: self.imageView.frame)
            self.canvasView.isOpaque = false
            self.view.addSubview(self.canvasView)
        } else {
            imageView.isHidden = true
            view.addSubview(canvasView)
        }
        canvasView.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            canvasView.topAnchor.constraint(equalTo: navigationBar.bottomAnchor),
            canvasView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            canvasView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            canvasView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
    
    func setNavigationBar() {
        if let navItem = navigationBar.topItem{
            let saveItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(saveImage))
            
            let clearItem = UIBarButtonItem(title: "Clear", style: .plain, target: self, action: #selector(clear))
            
            let toggleItem = UIBarButtonItem(title: "Toggle Picker", style: .plain, target: self, action: #selector(togglePicker))
            
            navItem.rightBarButtonItems?.append(clearItem)
            navItem.rightBarButtonItems?.append(toggleItem)
            navItem.rightBarButtonItems?.append(saveItem)
        }
        
    }
    
    @objc func saveImage() {
        let image = canvasView.drawing.image(from: canvasView.drawing.bounds, scale: 1.0)
        UIImageWriteToSavedPhotosAlbum(image, self, nil, nil)
    }
    
    @objc func clear() {
        canvasView.drawing = PKDrawing()
    }
    
    @objc func togglePicker() {
        if canvasView.isFirstResponder{
            canvasView.resignFirstResponder()
        }else{
            canvasView.becomeFirstResponder()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        guard
            let window = view.window,
            let toolPicker = PKToolPicker.shared(for: window) else { return }
        
        toolPicker.setVisible(true, forFirstResponder: canvasView)
        toolPicker.addObserver(canvasView)
        canvasView.becomeFirstResponder()
    }
}
