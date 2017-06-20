

import UIKit

class DrawView: UIView {

    var pointArray0: [CGPoint] = []
    var pointArray1: [CGPoint] = []
    
    public var color: UIColor = UIColor.red {
        didSet{setNeedsDisplay()}
    }

    override func draw(_ rect: CGRect) {
        
        
        let path0 = UIBezierPath()
        let path1 = UIBezierPath()
        
        path0.lineWidth = 4.0
        path1.lineWidth = 4.0
        
        if(pointArray0.count > 0){
            path0.move(to: pointArray0[0])
            for index in 1..<pointArray0.count
            {
                path0.addLine(to: pointArray0[index])
            }
        }
        if(pointArray1.count > 0){
            path1.move(to: pointArray1[0])
            for index in 1..<pointArray1.count
            {
                path1.addLine(to: pointArray1[index])
            }
        }
        
        UIColor.red.setStroke()
        path0.stroke()
        
        UIColor.green.setStroke()
        path1.stroke()
    }
//        blueLinePath.addLine(to: CGPoint(x: pxStart+px, y: pyStart+py))
//            
//        purpleLinePath.addLine(to: CGPoint(x: pxStart+px, y: pyStart+py))
//        orangeLinePath.addLine(to: CGPoint(x: pxStart+px, y: pyStart+py))
//        redLinePath.addLine(to: CGPoint(x: pxStart+px, y: pyStart+py))
// 
//        switch (color)
//        {
//        case UIColor.blue: break
//        case UIColor.red: break
//        case UIColor.orange: break
//        case UIColor.purple: break
//        default: break
//        }
//
//    
    
//        setNeedsDisplay()
    
    
    
    func panGesture(_ recognizer: UIPanGestureRecognizer)
    {
        
        switch(recognizer.state)
        {
        case .began:
            //clear array before using
            //pointArray0.removeAll()
            //set initial point
            switch color {
            case UIColor.red:
                pointArray0.removeAll()
                pointArray0.append(recognizer.location(in: self))
                break
            case UIColor.green:
                pointArray1.removeAll()
                pointArray1.append(recognizer.location(in: self))
                break
            default:
                break
            }
        //
        case .changed:
            //collect-calculate points and add it to the array
            let newPoint = recognizer.translation(in: self)
            
            
            switch color {
            case UIColor.red:
                let oldPoint = pointArray0[0]
                pointArray0.append(CGPoint(x:newPoint.x+oldPoint.x,y:newPoint.y+oldPoint.y))
                break
            case UIColor.green:
                let oldPoint = pointArray1[0]
                pointArray1.append(CGPoint(x:newPoint.x+oldPoint.x,y:newPoint.y+oldPoint.y))
                break
            default:
                break
            }
            
            
            setNeedsDisplay()
        default: break;
        }
    }
//            switch(color){
//                case UIColor.blue:
//                    blueLinePath.move(to: CGPoint(x: pxStart, y: pyStart))
//                break
//                case UIColor.purple:
//                    purpleLinePath.move(to: CGPoint(x: pxStart, y: pyStart))
//                break
//                case UIColor.orange:
//                    orangeLinePath.move(to: CGPoint(x: pxStart, y: pyStart))
//                break
//                case UIColor.red:
//                redLinePath.move(to: CGPoint(x: pxStart, y: pyStart))
//                break
//                default:
//                break
//                
//            }
            

}
