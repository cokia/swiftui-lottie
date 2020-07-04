import SwiftUI
import Lottie

struct LottieView: UIViewRepresentable {
  
  func makeCoordinator() -> Coordinator {
    Coordinator(self)
  }
  
  var filename: String
  
  var animationView = AnimationView()
  
  
  class Coordinator: NSObject {
    var parent: LottieView
    
    init(_ animationView: LottieView) {
      self.parent = animationView
      super.init()
    }
  }
  
  func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
    let view = UIView()
    
    animationView.animation = Animation.named(filename)
    animationView.contentMode = .scaleAspectFit
    animationView.translatesAutoresizingMaskIntoConstraints = false
    
    view.addSubview(animationView)
    
    NSLayoutConstraint.activate([
      animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
      animationView.heightAnchor.constraint(equalTo: view.heightAnchor)
    ])
    
    animationView.loopMode = .loop
    animationView.play()
    return view
  }
  
  func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<LottieView>) {
    
  }
}
