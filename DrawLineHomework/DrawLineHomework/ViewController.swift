

import UIKit


class ViewController: UIViewController {


    weak var DrawView: DrawView! {
        didSet{
            let panGester = UIPanGestureRecognizer(target: DrawView, action: #selector(DrawView.panGesture(_:)))
            DrawView.addGestureRecognizer(panGester)
            DrawView.setNeedsDisplay()
        }
    }
    
    @IBAction func setRedColor(_ sender: UIButton) {
         DrawView?.color = UIColor.red
    }

    @IBAction func setGreenColor(_ sender: UIButton) {
        DrawView?.color = UIColor.green
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

