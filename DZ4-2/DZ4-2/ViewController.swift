//
//  ViewController.swift
//  DZ4-2
//
//  Created by Аурика Сарева on 18.06.17.
//  Copyright © 2017 Marika Marika. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    var imageArray = [UIImage]()
    let numberOfButtons = 100
    //var h
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.frame = view.frame
        
        var contentHeight: CGFloat = 0.0
        let contentWidth:CGFloat = self.view.bounds.size.width
        let offset:CGFloat = 10.0

        imageArray = [#imageLiteral(resourceName: "1"), #imageLiteral(resourceName: "2"), #imageLiteral(resourceName: "3")]
    
        var yPosition: CGFloat = 0.0
        for i in 0..<imageArray.count {
            let imageView = UIImageView()
            imageView.image = imageArray[i]
            imageView.contentMode = .scaleAspectFit
            //yPosition += /*self.view.frame.height +*/ CGFloat(i)
//            yPosition += imageArray[i].size.height
            let aspectRation = imageArray[i].size.width/imageArray[i].size.height
            imageView.frame = CGRect(x: 0, y: contentHeight, width: contentWidth, height: contentWidth/aspectRation)
            scrollView.contentSize.height = scrollView.frame.height * CGFloat(i + 1)
            scrollView.addSubview(imageView)
            contentHeight += contentWidth/aspectRation
        }
        contentHeight += offset
        
            let frame1 = CGRect(x: contentWidth/3, y: contentHeight, width: 100, height: 45 )
            let button = UIButton(frame: frame1)
            button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
            button.setTitle("TOP", for: .normal)
            button.backgroundColor = UIColor.black
            scrollView.contentSize.height = scrollView.frame.height * CGFloat(1.5)+button.frame.size.height*2.0
            
            self.scrollView.addSubview(button)
            contentHeight += offset
        
    }

    func buttonAction(sender: UIButton!) {
       scrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: true) 
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

