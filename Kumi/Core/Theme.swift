//
//  Theme.swift
//  Kumi
//
//  Created by Thibault Klein on 4/28/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import Foundation

public typealias JSON = [String: Any]

public struct Theme {
    let colorTheme: ColorTheme
    let fontTheme: FontTheme
    let layerTheme: LayerTheme
    let shadowTheme: ShadowTheme
    let animationTheme: AnimationTheme

    public init?(json: JSON) {
        guard let themeJSON = json["theme"] as? JSON else {
            return nil
        }

        guard let colorThemeJSON = themeJSON["color"] as? JSON,
            let colorTheme = ColorTheme(json: colorThemeJSON) else {
                return nil
        }

        guard let fontThemeJSON = themeJSON["font"] as? JSON,
            let fontTheme = FontTheme(json: fontThemeJSON) else {
                return nil
        }
        
        guard let layerThemeJSON = themeJSON["layer"] as? JSON,
            let layerTheme = LayerTheme(json: layerThemeJSON) else {
                return nil
        }
        
        guard let shadowThemeJSON = themeJSON["shadow"] as? JSON,
            let shadowTheme = ShadowTheme(json: shadowThemeJSON) else {
                return nil
        }
        
        guard let animationThemeJSON = themeJSON["animation"] as? JSON,
            let animationTheme = AnimationTheme(json: animationThemeJSON) else {
                return nil
        }

        self.colorTheme = colorTheme
        self.fontTheme = fontTheme
        self.layerTheme = layerTheme
        self.shadowTheme = shadowTheme
        self.animationTheme = animationTheme
    }

}
