# DiceSwiftUI
Here is my new 3D Dice made with SwiftUI and Scenekit 😁✌️

![Image of Dice](https://github.com/TheAppWizard/DiceSwiftUI/blob/main/dice.png)

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

## Usdz Dice 3D model 
[link to DICE!](https://poly.google.com/view/bA4lAfgNYjd)
