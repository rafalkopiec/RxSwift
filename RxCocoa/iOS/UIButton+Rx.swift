//
//  UIButton+Rx.swift
//  RxCocoa
//
//  Created by Krunoslav Zaher on 3/28/15.
//  Copyright © 2015 Krunoslav Zaher. All rights reserved.
//

#if os(iOS) || os(visionOS) || os(xrOS)

import RxSwift
import UIKit

extension Reactive where Base: UIButton {
    
    /// Reactive wrapper for `TouchUpInside` control event.
    public var tap: ControlEvent<Void> {
        controlEvent(.touchUpInside)
    }
}

#endif

#if os(tvOS)

import RxSwift
import UIKit

extension Reactive where Base: UIButton {

    /// Reactive wrapper for `PrimaryActionTriggered` control event.
    public var primaryAction: ControlEvent<Void> {
        controlEvent(.primaryActionTriggered)
    }

}

#endif

#if os(iOS) || os(visionOS) || os(xrOS) || os(tvOS)

import RxSwift
import UIKit

extension Reactive where Base: UIButton {
    /// Reactive wrapper for `setTitle(_:for:)`
    public func title(for controlState: UIControl.State = []) -> Binder<String?> {
        Binder(self.base) { button, title in
            button.setTitle(title, for: controlState)
        }
    }

    /// Reactive wrapper for `setImage(_:for:)`
    public func image(for controlState: UIControl.State = []) -> Binder<UIImage?> {
        Binder(self.base) { button, image in
            button.setImage(image, for: controlState)
        }
    }

    /// Reactive wrapper for `setBackgroundImage(_:for:)`
    public func backgroundImage(for controlState: UIControl.State = []) -> Binder<UIImage?> {
        Binder(self.base) { button, image in
            button.setBackgroundImage(image, for: controlState)
        }
    }
    
}
#endif

#if os(iOS) || os(visionOS) || os(xrOS) || os(tvOS)
    import RxSwift
    import UIKit
    
    extension Reactive where Base: UIButton {
        /// Reactive wrapper for `setAttributedTitle(_:controlState:)`
        public func attributedTitle(for controlState: UIControl.State = []) -> Binder<NSAttributedString?> {
            return Binder(self.base) { button, attributedTitle -> Void in
                button.setAttributedTitle(attributedTitle, for: controlState)
            }
        }
    }
#endif
