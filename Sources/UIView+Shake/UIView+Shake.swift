
import UIKit

public enum Direction: Int {
    case horizontal
    case vertical
}

extension UIView {
    
    public func shake(
        times: Int = 5,
        direction: Direction = .horizontal,
        multiplier: CGFloat = 1,
        current: Int = 0,
        delta: CGFloat = 5,
        speed: TimeInterval = 0.3,
        completion: (() -> Void)? = nil
    ) {
        
        UIView.animate(withDuration: speed, animations: { [weak self] in
            guard let self = self else { return }
            
            self.transform = direction == .horizontal ?
                CGAffineTransform(translationX: delta * multiplier, y: 0) :
                CGAffineTransform(translationX: 0, y: delta * multiplier)
            
        }) { [weak self] _ in
            guard let self = self else { return }
            
            if current >= times {
                UIView.animate(withDuration: speed, animations: {
                    self.transform = CGAffineTransform.identity
                }) { _ in
                    completion?()
                }
                
                return
            }
            
            self.shake(
                times: times,
                direction: direction,
                multiplier: multiplier * -1,
                current: current + 1,
                delta: delta,
                speed: speed,
                completion: completion
            )
        }
    }
}
