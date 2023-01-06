import UIKit

class ViewController: UIViewController {
    @IBOutlet var imgPinch: UIImageView!
    
    var initialFontSize : CGFloat! //글자 크기 변수
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //액션 인수는 핀치 제스처가 인식 되었을 때 실행할 메서드를 의미
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(ViewController.doPinch(_:)))
        //핀치 제스처를 등록
        self.view.addGestureRecognizer(pinch)
    }

    @objc func doPinch(_ pinch: UIPinchGestureRecognizer) {
        //이미지를 scale에 맞게 변환한다.
        imgPinch.transform = imgPinch.transform.scaledBy(x: pinch.scale, y: pinch.scale)
        
        //다음 변환을 위해 핀치의 스케일 속성을 1로 설정
        pinch.scale = 1
    }
}

