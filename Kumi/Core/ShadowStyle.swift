//
//  ShadowStyle.Swift
//  Kumi
//
//  Created by Prolific Interactive on 3/14/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import UIKit

/**
 *  Encapsulates style information to be applied when displaying or animating CALayer's shadow.
 */
public struct ShadowStyle {

    /// Font for displaying regular text.
    public let shadowOpacity: Float

    /// Font for displaying regular text.
    public let shadowRadius: CGFloat

    /// Font for displaying regular text.
    public let shadowOffset: CGSize

    /// Font for displaying regular text.
    public let shadowColor: CGColor?

    public init(shadowOpacity: Float = 1.0,
                shadowRadius: CGFloat,
                shadowOffset: CGSize,
                shadowColor: CGColor? = nil) {
        self.shadowOpacity = shadowOpacity
        self.shadowRadius = shadowRadius
        self.shadowOffset = shadowOffset
        self.shadowColor = shadowColor
    }

}
