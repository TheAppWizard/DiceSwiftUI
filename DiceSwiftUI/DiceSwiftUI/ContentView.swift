//
//  ContentView.swift
//  DiceSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 12/06/21.
//

/*
 The App Wizard
 Instagram : theappwizard2408
 */

import SwiftUI
import SceneKit



struct ContentView: View {
    
    var body: some View {
        DiceUI()
        
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




















struct DiceUI: View {
        @State var up  = false
    
    var body: some View {
        
        
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            
            
            
            
          // Main Code : SceneView
            SceneView(
                scene: {
                    let scene = SCNScene(named: "dice.usdz")!
                    scene.background.contents = UIColor.black
                    return scene
                }(),
                options: [.autoenablesDefaultLighting,.allowsCameraControl]
                
           )
            // Main Code : SceneView
            
            
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/2, alignment: .center)
            .border(Color.white, width: 1)
            
           
            
            
            
            // UI Section
            VStack{
                
                HStack{
                Image("dicecube")
                    .resizable()
                    .frame(width: 120, height: 120, alignment: .center)
                    .opacity(0.8)
                    
                    Text("ROLL IT ")
                        .font(.largeTitle)
                        .fontWeight(.light)
                        .foregroundColor(Color.white)
                        .opacity(1)
                    
                    
                }.offset(x: -60, y: -100)
                
                
                
                HStack{
                    Text("PLAYER 1")
                        .font(.title)
                        .fontWeight(.light)
                        .foregroundColor(Color.white)
                        .opacity(1)
                    
                    Spacer()
                    
                    
                    Text("PLAYER 2")
                        .font(.title)
                        .fontWeight(.light)
                        .foregroundColor(Color.white)
                        .opacity(0.4)
                
                }.padding()
                .offset(x: 0, y: -50)
                
                
                
                
                Spacer().frame(width: 100, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                HStack{
                    Text("SWIPE TO ROLL")
                        .font(.title)
                        .fontWeight(.light)
                        .foregroundColor(Color.white)
                    
                    
                    ZStack{
                        Image(systemName: "arrow.up")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40, alignment: .center)
                            .foregroundColor(Color.white)
                            .rotationEffect(.degrees(up ? 360 : -360))
                            .animation(Animation.easeInOut(duration: 1).delay(1).repeatForever(autoreverses: true))
                            .onAppear() {
                                self.up.toggle()
                            }
                    }
                
                }
                
            }
            
        }
    }
}




