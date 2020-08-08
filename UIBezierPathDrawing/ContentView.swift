//
//  ContentView.swift
//  UIBezierPathDrawing
//
//  Created by Tai Chin Huang on 2020/8/7.
//

import SwiftUI
struct DrawView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        view.backgroundColor = UIColor(red: 216/255, green: 205/255, blue: 185/255, alpha: 1)
        
        //上半部身體
        let beaverHeadPath = UIBezierPath()
        beaverHeadPath.move(to: CGPoint(x: 37, y: 156))
        beaverHeadPath.addLine(to: CGPoint(x: 140, y: 104)) //第一段直線
        beaverHeadPath.addQuadCurve(to: CGPoint(x: 153, y: 102), controlPoint: CGPoint(x: 145, y: 100)) //小小彎
        beaverHeadPath.addLine(to: CGPoint(x: 204, y: 101)) //第二段直線
        beaverHeadPath.addQuadCurve(to: CGPoint(x: 269, y: 85), controlPoint: CGPoint(x: 236, y: 95)) //第一小彎彎
        beaverHeadPath.addQuadCurve(to: CGPoint(x: 627, y: 149), controlPoint: CGPoint(x: 465, y: 1)) //第一大彎彎
        beaverHeadPath.addQuadCurve(to: CGPoint(x: 731, y: 164), controlPoint: CGPoint(x: 670, y: 180)) //尾巴前彎彎
        beaverHeadPath.addQuadCurve(to: CGPoint(x: 888, y: 193), controlPoint: CGPoint(x: 810, y: 151)) //尾巴上彎彎
        beaverHeadPath.addQuadCurve(to: CGPoint(x: 879, y: 233), controlPoint: CGPoint(x: 904, y: 220)) //尾巴後彎彎
        beaverHeadPath.addQuadCurve(to: CGPoint(x: 752, y: 227), controlPoint: CGPoint(x: 811, y: 238)) //尾巴下彎彎
        
        //鼻子
//        let beaverNosePath = UIBezierPath(ovalIn: CGRect(x: 46, y: 162, width: 20, height: 20))
        let beaverNosePath = UIBezierPath()
        beaverNosePath.move(to: CGPoint(x: 37, y: 156))
        beaverNosePath.addQuadCurve(to: CGPoint(x: 58, y: 161), controlPoint: CGPoint(x: 49, y: 153))
        beaverNosePath.addQuadCurve(to: CGPoint(x: 38, y: 159), controlPoint: CGPoint(x: 45, y: 175))
        beaverNosePath.addQuadCurve(to: CGPoint(x: 43, y: 153), controlPoint: CGPoint(x: 37, y: 156))
        
        //下半部身體1
        let beaverBotPath1 = UIBezierPath()
        beaverBotPath1.move(to: CGPoint(x: 45, y: 165))
        beaverBotPath1.addQuadCurve(to: CGPoint(x: 133, y: 230), controlPoint: CGPoint(x: 50, y: 227)) //前段
        beaverBotPath1.addQuadCurve(to: CGPoint(x: 289, y: 221), controlPoint: CGPoint(x: 218, y: 232))
        
        
        //下半部身體2
        let beaverBotPath2 = UIBezierPath()
        beaverBotPath2.move(to: CGPoint(x: 420, y: 217))
        beaverBotPath2.addLine(to: CGPoint(x: 536, y: 216))
        beaverBotPath2.addQuadCurve(to: CGPoint(x: 659, y: 224), controlPoint: CGPoint(x: 606, y: 227))
        beaverBotPath2.addQuadCurve(to: CGPoint(x: 756, y: 236), controlPoint: CGPoint(x: 716, y: 244))
        beaverBotPath2.addQuadCurve(to: CGPoint(x: 755, y: 218), controlPoint: CGPoint(x: 750, y: 228))
        beaverBotPath2.addQuadCurve(to: CGPoint(x: 754, y: 205), controlPoint: CGPoint(x: 745, y: 212))
        beaverBotPath2.addLine(to: CGPoint(x: 747, y: 197))
        beaverBotPath2.addLine(to: CGPoint(x: 748, y: 190))
        beaverBotPath2.addQuadCurve(to: CGPoint(x: 648, y: 185), controlPoint: CGPoint(x: 689, y: 203))
        beaverBotPath2.addQuadCurve(to: CGPoint(x: 593, y: 132), controlPoint: CGPoint(x: 629, y: 151))
        
        //牙齒1
        let beaverTeethPath1 = UIBezierPath()
        beaverTeethPath1.move(to: CGPoint(x: 39, y: 161))
        beaverTeethPath1.addQuadCurve(to: CGPoint(x: 50, y: 188), controlPoint: CGPoint(x: 34, y: 186))
        
        //牙齒2
        let beaverTeethPath2 = UIBezierPath()
        beaverTeethPath2.move(to: CGPoint(x: 40, y: 182))
        beaverTeethPath2.addLine(to: CGPoint(x: 42, y: 210))
        beaverTeethPath2.addLine(to: CGPoint(x: 50, y: 217))
//        beaverTeethPath2.addQuadCurve(to: CGPoint(x: 50, y: 218), controlPoint: CGPoint(x: 40, y: 206))
        beaverTeethPath2.addLine(to: CGPoint(x: 51, y: 191))
        beaverTeethPath2.addLine(to: CGPoint(x: 50, y: 217))
        beaverTeethPath2.addLine(to: CGPoint(x: 60, y: 226))
        beaverTeethPath2.addLine(to: CGPoint(x: 62, y: 207))
        beaverTeethPath2.addLine(to: CGPoint(x: 61, y: 218))
        beaverTeethPath2.addLine(to: CGPoint(x: 86, y: 222))
        
        //耳朵1
        let beaverEarPath1 = UIBezierPath()
        beaverEarPath1.move(to: CGPoint(x: 114, y: 116))
        beaverEarPath1.addQuadCurve(to: CGPoint(x: 135, y: 107), controlPoint: CGPoint(x: 118, y: 90))
        
        //耳朵2
        let beaverEarPath2 = UIBezierPath()
        beaverEarPath2.move(to: CGPoint(x: 156, y: 124))
        beaverEarPath2.addLine(to: CGPoint(x: 161, y: 121))
        beaverEarPath2.addQuadCurve(to: CGPoint(x: 181, y: 139), controlPoint: CGPoint(x: 185, y: 116))
        beaverEarPath2.addLine(to: CGPoint(x: 176, y: 146))
        
        //眼睛1
        let beaverEyePath1 = UIBezierPath()
        beaverEyePath1.move(to: CGPoint(x: 102, y: 165))
        beaverEyePath1.addQuadCurve(to: CGPoint(x: 129, y: 162), controlPoint: CGPoint(x: 118, y: 168))
        
        //眼睛2
        let beaverEyePath2 = UIBezierPath()
        beaverEyePath2.move(to: CGPoint(x: 118, y: 168))
        beaverEyePath2.addLine(to: CGPoint(x: 118, y: 174))
        
        //左腳
        let beaverLegPath = UIBezierPath()
        beaverLegPath.move(to: CGPoint(x: 246, y: 204))
        beaverLegPath.addQuadCurve(to: CGPoint(x: 330, y: 226), controlPoint: CGPoint(x: 288, y: 224))
        beaverLegPath.addLine(to: CGPoint(x: 375, y: 235))
        beaverLegPath.addQuadCurve(to: CGPoint(x: 433, y: 225), controlPoint: CGPoint(x: 403, y: 237))
        beaverLegPath.addLine(to: CGPoint(x: 425, y: 223))
        beaverLegPath.addLine(to: CGPoint(x: 426, y: 217))
        beaverLegPath.addLine(to: CGPoint(x: 417, y: 218))
        beaverLegPath.addLine(to: CGPoint(x: 415, y: 210))
        beaverLegPath.addLine(to: CGPoint(x: 405, y: 216))
        beaverLegPath.addCurve(to: CGPoint(x: 316, y: 171), controlPoint1: CGPoint(x: 382, y: 218), controlPoint2: CGPoint(x: 352, y: 170))
        
        //腳線1
        let beaverFootPath1 = UIBezierPath()
        beaverFootPath1.move(to: CGPoint(x: 704, y: 210))
        beaverFootPath1.addLine(to: CGPoint(x: 736, y: 206))
        
        //腳線2
        let beaverFootPath2 = UIBezierPath()
        beaverFootPath2.move(to: CGPoint(x: 691, y: 218))
        beaverFootPath2.addQuadCurve(to: CGPoint(x: 733, y: 226), controlPoint: CGPoint(x: 711, y: 227))
        
        //尾巴線1
        let beaverTailPath1 = UIBezierPath()
        beaverTailPath1.move(to: CGPoint(x: 678, y: 172))
        beaverTailPath1.addLine(to: CGPoint(x: 675, y: 179))
        beaverTailPath1.addLine(to: CGPoint(x: 681, y: 184))
        beaverTailPath1.addLine(to: CGPoint(x: 678, y: 192))
//        beaverTailPath1.addLine(to: CGPoint(x: 683, y: 198))
        
        //尾巴線2
        let beaverTailPath2 = UIBezierPath()
        beaverTailPath2.move(to: CGPoint(x: 749, y: 211))
        beaverTailPath2.addQuadCurve(to: CGPoint(x: 874, y: 219), controlPoint: CGPoint(x: 817, y: 222))
        beaverTailPath2.addQuadCurve(to: CGPoint(x: 882, y: 203), controlPoint: CGPoint(x: 889, y: 214))
        
        //尾巴叉1
        let beaverCrossPath1 = UIBezierPath()
        beaverCrossPath1.move(to: CGPoint(x: 700, y: 179))
        beaverCrossPath1.addLine(to: CGPoint(x: 712, y: 193))
        
        //尾巴叉2
        let beaverCrossPath2 = UIBezierPath()
        beaverCrossPath2.move(to: CGPoint(x: 699, y: 195))
        beaverCrossPath2.addLine(to: CGPoint(x: 715, y: 179))
        
        //尾巴叉3
        let beaverCrossPath3 = UIBezierPath()
        beaverCrossPath3.move(to: CGPoint(x: 740, y: 175))
        beaverCrossPath3.addLine(to: CGPoint(x: 770, y: 207))
        
        //尾巴叉4
        let beaverCrossPath4 = UIBezierPath()
        beaverCrossPath4.move(to: CGPoint(x: 739, y: 189))
        beaverCrossPath4.addLine(to: CGPoint(x: 755, y: 172))
        
        //尾巴叉5
        let beaverCrossPath5 = UIBezierPath()
        beaverCrossPath5.move(to: CGPoint(x: 799, y: 173))
        beaverCrossPath5.addLine(to: CGPoint(x: 829, y: 210))
        
        //尾巴叉6
        let beaverCrossPath6 = UIBezierPath()
        beaverCrossPath6.move(to: CGPoint(x: 786, y: 205))
        beaverCrossPath6.addLine(to: CGPoint(x: 815, y: 172))
        
        //尾巴叉7
        let beaverCrossPath7 = UIBezierPath()
        beaverCrossPath7.move(to: CGPoint(x: 855, y: 187))
        beaverCrossPath7.addLine(to: CGPoint(x: 873, y: 208))
        
        //尾巴叉8
        let beaverCrossPath8 = UIBezierPath()
        beaverCrossPath8.move(to: CGPoint(x: 849, y: 208))
        beaverCrossPath8.addLine(to: CGPoint(x: 866, y: 188))
        
        //上半部身體layer
        let beaverHeadLayer = CAShapeLayer()
        beaverHeadLayer.path = beaverHeadPath.cgPath
        beaverHeadLayer.lineWidth = 5
        beaverHeadLayer.strokeColor = UIColor.black.cgColor
        beaverHeadLayer.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(beaverHeadLayer)
        
        //鼻子layer
        let beaverNoseLayer = CAShapeLayer()
        beaverNoseLayer.path = beaverNosePath.cgPath
        beaverNoseLayer.lineWidth = 5
        beaverNoseLayer.strokeColor = UIColor.black.cgColor
        beaverNoseLayer.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(beaverNoseLayer)
        
        //下半部身體1layer
        let beaverBotLayer1 = CAShapeLayer()
        beaverBotLayer1.path = beaverBotPath1.cgPath
        beaverBotLayer1.lineWidth = 5
        beaverBotLayer1.strokeColor = UIColor.black.cgColor
        beaverBotLayer1.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(beaverBotLayer1)

        //下半部身體2layer
        let beaverBotLayer2 = CAShapeLayer()
        beaverBotLayer2.path = beaverBotPath2.cgPath
        beaverBotLayer2.lineWidth = 5
        beaverBotLayer2.strokeColor = UIColor.black.cgColor
        beaverBotLayer2.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(beaverBotLayer2)
        
        //鼻子layer1
        let beaverTeethLayer1 = CAShapeLayer()
        beaverTeethLayer1.path = beaverTeethPath1.cgPath
        beaverTeethLayer1.lineWidth = 5
        beaverTeethLayer1.strokeColor = UIColor.black.cgColor
        beaverTeethLayer1.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(beaverTeethLayer1)
        
        //鼻子layer2
        let beaverTeethLayer2 = CAShapeLayer()
        beaverTeethLayer2.path = beaverTeethPath2.cgPath
        beaverTeethLayer2.lineWidth = 5
        beaverTeethLayer2.strokeColor = UIColor.black.cgColor
        beaverTeethLayer2.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(beaverTeethLayer2)
        
        //耳朵layer1
        let beaverEarLayer1 = CAShapeLayer()
        beaverEarLayer1.path = beaverEarPath1.cgPath
        beaverEarLayer1.lineWidth = 5
        beaverEarLayer1.strokeColor = UIColor.black.cgColor
        beaverEarLayer1.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(beaverEarLayer1)
        
        //耳朵layer2
        let beaverEarLayer2 = CAShapeLayer()
        beaverEarLayer2.path = beaverEarPath2.cgPath
        beaverEarLayer2.lineWidth = 5
        beaverEarLayer2.strokeColor = UIColor.black.cgColor
        beaverEarLayer2.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(beaverEarLayer2)
        
        //眼睛layer1
        let beaverEyeLayer1 = CAShapeLayer()
        beaverEyeLayer1.path = beaverEyePath1.cgPath
        beaverEyeLayer1.lineWidth = 5
        beaverEyeLayer1.strokeColor = UIColor.black.cgColor
        beaverEyeLayer1.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(beaverEyeLayer1)
        
        //眼睛layer2
        let beaverEyeLayer2 = CAShapeLayer()
        beaverEyeLayer2.path = beaverEyePath2.cgPath
        beaverEyeLayer2.lineWidth = 5
        beaverEyeLayer2.strokeColor = UIColor.black.cgColor
        beaverEyeLayer2.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(beaverEyeLayer2)
        
        //腳layer
        let beaverLegLayer = CAShapeLayer()
        beaverLegLayer.path = beaverLegPath.cgPath
        beaverLegLayer.lineWidth = 5
        beaverLegLayer.strokeColor = UIColor.black.cgColor
        beaverLegLayer.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(beaverLegLayer)
        
        //腳線1layer
        let beaverFootLayer1 = CAShapeLayer()
        beaverFootLayer1.path = beaverFootPath1.cgPath
        beaverFootLayer1.lineWidth = 5
        beaverFootLayer1.strokeColor = UIColor.black.cgColor
        beaverFootLayer1.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(beaverFootLayer1)
        
        //腳線2layer
        let beaverFootLayer2 = CAShapeLayer()
        beaverFootLayer2.path = beaverFootPath2.cgPath
        beaverFootLayer2.lineWidth = 5
        beaverFootLayer2.strokeColor = UIColor.black.cgColor
        beaverFootLayer2.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(beaverFootLayer2)
        
        //尾巴線1layer
        let beaverTailLayer1 = CAShapeLayer()
        beaverTailLayer1.path = beaverTailPath1.cgPath
        beaverTailLayer1.lineWidth = 5
        beaverTailLayer1.strokeColor = UIColor.black.cgColor
        beaverTailLayer1.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(beaverTailLayer1)
        
        //尾巴線2layer
        let beaverTailLayer2 = CAShapeLayer()
        beaverTailLayer2.path = beaverTailPath2.cgPath
        beaverTailLayer2.lineWidth = 5
        beaverTailLayer2.strokeColor = UIColor.black.cgColor
        beaverTailLayer2.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(beaverTailLayer2)
        
        //叉叉1layer
        let beaverCrossLayer1 = CAShapeLayer()
        beaverCrossLayer1.path = beaverCrossPath1.cgPath
        beaverCrossLayer1.lineWidth = 5
        beaverCrossLayer1.strokeColor = UIColor.black.cgColor
        beaverCrossLayer1.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(beaverCrossLayer1)
        
        //叉叉2layer
        let beaverCrossLayer2 = CAShapeLayer()
        beaverCrossLayer2.path = beaverCrossPath2.cgPath
        beaverCrossLayer2.lineWidth = 5
        beaverCrossLayer2.strokeColor = UIColor.black.cgColor
        beaverCrossLayer2.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(beaverCrossLayer2)
        
        //叉叉3layer
        let beaverCrossLayer3 = CAShapeLayer()
        beaverCrossLayer3.path = beaverCrossPath3.cgPath
        beaverCrossLayer3.lineWidth = 5
        beaverCrossLayer3.strokeColor = UIColor.black.cgColor
        beaverCrossLayer3.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(beaverCrossLayer3)
        
        //叉叉4layer
        let beaverCrossLayer4 = CAShapeLayer()
        beaverCrossLayer4.path = beaverCrossPath4.cgPath
        beaverCrossLayer4.lineWidth = 5
        beaverCrossLayer4.strokeColor = UIColor.black.cgColor
        beaverCrossLayer4.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(beaverCrossLayer4)
        
        //叉叉5layer
        let beaverCrossLayer5 = CAShapeLayer()
        beaverCrossLayer5.path = beaverCrossPath5.cgPath
        beaverCrossLayer5.lineWidth = 5
        beaverCrossLayer5.strokeColor = UIColor.black.cgColor
        beaverCrossLayer5.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(beaverCrossLayer5)
        
        //叉叉6layer
        let beaverCrossLayer6 = CAShapeLayer()
        beaverCrossLayer6.path = beaverCrossPath6.cgPath
        beaverCrossLayer6.lineWidth = 5
        beaverCrossLayer6.strokeColor = UIColor.black.cgColor
        beaverCrossLayer6.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(beaverCrossLayer6)
        
        //叉叉7layer
        let beaverCrossLayer7 = CAShapeLayer()
        beaverCrossLayer7.path = beaverCrossPath7.cgPath
        beaverCrossLayer7.lineWidth = 5
        beaverCrossLayer7.strokeColor = UIColor.black.cgColor
        beaverCrossLayer7.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(beaverCrossLayer7)
        
        //叉叉8layer
        let beaverCrossLayer8 = CAShapeLayer()
        beaverCrossLayer8.path = beaverCrossPath8.cgPath
        beaverCrossLayer8.lineWidth = 5
        beaverCrossLayer8.strokeColor = UIColor.black.cgColor
        beaverCrossLayer8.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(beaverCrossLayer8)
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
}
struct ContentView: View {
    var body: some View {
        DrawView()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.fixed(width: 950.0, height: /*@START_MENU_TOKEN@*/375.0/*@END_MENU_TOKEN@*/))
            .previewDevice("iPhone 11")
            
    }
}
