import UIKit

// Animation second page 
class animationViewController: UIViewController {
  @IBOutlet weak var imageViewAnimation: UIImageView!
  @IBOutlet weak var lableAnimation: UILabel!
  @IBOutlet weak var nextAnimation: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
   
  }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        ImegViewAnimation()
        lableAnimation.center.x = -view.frame.width
        let uiAanimationLabal = UIViewPropertyAnimator(duration: 2, curve: .easeIn, animations: {
          self.lableAnimation.center.x = 0
        })
        uiAanimationLabal.startAnimation()
        nextAnimation.transform = nextAnimation.transform.scaledBy(x: 0.5, y: 0.5)
        let uiAnimationText = UIViewPropertyAnimator(duration: 2, curve: .easeIn, animations: {
          self.nextAnimation.transform = self.nextAnimation.transform.scaledBy(x: 2, y: 2)
         
        })
        uiAnimationText.startAnimation()
    }
  func ImegViewAnimation(){
    imageViewAnimation.transform = imageViewAnimation.transform.scaledBy(x: 2, y: 2)
      imageViewAnimation.alpha = 1
      UIView.animate(withDuration: 2, delay: 2, options: [.curveEaseOut], animations: {
          self.imageViewAnimation.alpha = 0.4
      self.imageViewAnimation.transform.tx = 0
      self.imageViewAnimation.transform = self.imageViewAnimation.transform.scaledBy(x: 0.5, y: 0.5)
          self.lableAnimation.textColor = .black
        
    })
  }
}















