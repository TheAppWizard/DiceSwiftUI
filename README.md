# DiceSwiftUI
Here is my new 3D Dice made with SwiftUI and Scenekit 😁✌️

![Image of Dice]()

## Scenekit Code
```
  SceneView(
          scene: {
                 let scene = SCNScene(named: "dice.usdz")!
                  scene.background.contents = UIColor.black
                  return scene
                }(),
                options: [.autoenablesDefaultLighting,.allowsCameraControl]
                
           )
```
