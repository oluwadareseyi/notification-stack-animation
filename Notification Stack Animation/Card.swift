//
//  Card.swift
//  Notification Stack Animation
//
//  Created by Oluwaseyi Oluwadare on 18/02/2024.
//

import SwiftUI

var startingOffset = UIScreen.main.bounds.width / 2
let delay: Double = 0.30

struct Card: View {
    let color: Color
    let index: Int
    @Binding var topCard: Int
    @Binding var globalRotation: Double
    @Binding var currentIndex: Int
    
    // Card State
    @State var zIndex: Double = 0
    @State var offset: CGFloat = 0
    @State var dragTranslation: CGSize = CGSize(width: startingOffset, height: 0)
    
    // Base Linear Scale
    func scale(inputMin: CGFloat, inputMax: CGFloat, outputMin: CGFloat, outputMax: CGFloat, value: CGFloat) -> CGFloat {
        return outputMin + (outputMax - outputMin) * (value - inputMin) / (inputMax - inputMin)
    }
    
    // Change resting offset based on the topCard value
    func offsetScale(topCard: Int, index: Int) -> CGFloat {
        let position = whereAmI(topCard: topCard, index: index)
        return scale(inputMin: 1, inputMax: 3, outputMin: 80, outputMax: 0, value: CGFloat(position))
    }
    
    // Change scale based on the topCard value
    func sizeScale(topCard: Int, index: Int) -> CGFloat {
        let position = whereAmI(topCard: topCard, index: index)
        return scale(inputMin: 0.0, inputMax: 3.0, outputMin: 0.5, outputMax: 1, value: CGFloat(3 - position))
    }
    
    // Change rotation based on the topCard value
    func sizeRotation() {
        let rValue =  scale(inputMin: startingOffset, inputMax: startingOffset + 200, outputMin: 0, outputMax: 10, value: dragTranslation.width)
        
        let offsetValue =  scale(inputMin: startingOffset, inputMax: startingOffset + 200, outputMin: 0, outputMax: 50, value: dragTranslation.width)
        
        print(offsetValue)
        
        globalRotation = rValue
        offset = abs(offsetValue)
    }
    
    func getRotation(topCard: Int, index: Int) -> CGFloat {
        let position = whereAmI(topCard: topCard, index: index)
        
        if position == 0 {
            return -globalRotation
        } else if position == 1 {
            return globalRotation
        }
        
        
        return .zero
    }
    
    
    // For a given card and topCard card determine where it is in the stack
    func whereAmI(topCard: Int, index: Int) -> Int {
        let order = whatsTheOrder(topCard: topCard)
        let position = order.firstIndex(of: index)
        return position!
    }

    // For a given topCard, figure out the order of the stack
    func whatsTheOrder(topCard: Int) -> [Int] {
        switch topCard {
        case 1:
            return [1,2,3]
        case 2:
            return [2,3,1]
        case 3:
            return [3,1,2]
        default:
            print("Order failed")
            return [0,0,0]
        }
    }
    
    var drag: some Gesture {
        return DragGesture()
            .onChanged { gesture in
                withAnimation(.easeOut(duration: delay)) {
                    dragTranslation.width = gesture.translation.width + startingOffset
                    
                    sizeRotation()
                
                }
            }.onEnded { gesture in
                let predictedEndTranslation: Double = gesture.predictedEndTranslation.width
                
                let absoluteEndTranslation = abs(predictedEndTranslation)
                
                if absoluteEndTranslation > 130 {
                    if topCard < 3 {
                        topCard += 1
                    } else {
                        topCard = 1
                    }
                    
                    withAnimation(.easeOut(duration: delay)) {
                        dragTranslation.width = startingOffset
                        
                        globalRotation = .zero
                        offset = 0
                    }
                    
                    zIndex -= 1
                    
//                    DispatchQueue.main.asyncAfter(deadline:  .now()) {
//                        
//                    }
                    
                } else {
                    withAnimation(.spring()) {
                        dragTranslation.width = startingOffset
                        
                        globalRotation = .zero
                        
                        offset = 0
                    }
                }
            }
    }
    
    var body: some View {
        ZStack{
            if index == 1 {
                CalendarView()
            }
            
            if index == 2 {
                PhotosView()
            }
            
            if index == 3 {
                PlayerView()
            }
        }
            .frame(width: 330, height: 330)
//            .background(color)
            .clipShape(RoundedRectangle(cornerRadius: 40, style: .continuous))
            .rotation3DEffect(.degrees(getRotation(topCard: topCard, index: index)), axis: (x: 0, y: 1, z: 0)) // Horizontal dragging tilts along Y Axis
            .scaleEffect(sizeScale(topCard: topCard, index: index))
            .position(x: dragTranslation.width, y: UIScreen.main.bounds.height-200)
            .zIndex(zIndex)
            .offset(y: -offsetScale(topCard: topCard, index: index) + offset)
            .animation(.spring(), value: topCard)
            .gesture(drag)
            .allowsHitTesting(topCard == index)
    }
}
