import UIKit

class ViewController: UIViewController {
    @IBOutlet var txtPinch: UILabel!
    
    var initialFontSize : CGFloat! //글자 크기 변수
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //액션 인수는 핀치 제스처가 인식 되었을 때 실행할 메서드를 의미
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(ViewController.doPinch(_:)))
        //핀치 제스처를 등록
        self.view.addGestureRecognizer(pinch)
    }

    @objc func doPinch(_ pinch: UIPinchGestureRecognizer) {
        //우선 핀치 제스처의 상태를 state 속성을 사용하여 확인한다.
        if(pinch.state == UIGestureRecognizer.State.began) {
            //핀치 제스처의 상태가 시작이면 앞에서 선언한 변수에 현재 텍스트의 글자 크기를 저장한다.
            initialFontSize = txtPinch.font.pointSize
        } else {
            txtPinch.font = txtPinch.font.withSize(initialFontSize * pinch.scale)
        }
    }
}

