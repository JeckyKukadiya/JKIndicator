//
//  ContentView.swift
//  ActivityIndicator
//
//  Created by Eryus Tech on 14/10/24.
//

import SwiftUI

public struct JKIndicator: View {
    
    public enum IndicatorType {
        case `default`(count: Int = 8)
        case arcs(count: Int = 3, lineWidth: CGFloat = 2)
        case rotatingDots(count: Int = 5)
        case flickeringDots(count: Int = 8)
        case scalingDots(count: Int = 3, inset: Int = 2)
        case opacityDots(count: Int = 3, inset: Int = 4)
        case equalizer(count: Int = 5)
        case growingArc(Color = .black, lineWidth: CGFloat = 4)
        case growingCircle
        case gradient(_ colors: [Color], CGLineCap = .butt, lineWidth: CGFloat = 4)
    }

    @Binding var isVisible: Bool
    var type: IndicatorType

    public init(isVisible: Binding<Bool>, type: IndicatorType) {
        _isVisible = isVisible
        self.type = type
    }

    public var body: some View {
        if isVisible {
            indicator
        } else {
            EmptyView()
        }
    }
    
    // MARK: - Private
    
    private var indicator: some View {
        ZStack {
            Color.black.opacity(0.7).ignoresSafeArea()
            switch type {
            case .default(let count):
                DefaultIndicatorView(count: count)
                    .frame(width: 50, height: 50)
            case .arcs(let count, let lineWidth):
                ArcsIndicatorView(count: count, lineWidth: lineWidth)
                    .frame(width: 50, height: 50)
            case .rotatingDots(let count):
                RotatingDotsIndicatorView(count: count)
                    .frame(width: 50, height: 50)
            case .flickeringDots(let count):
                FlickeringDotsIndicatorView(count: count)
                    .frame(width: 50, height: 50)
            case .scalingDots(let count, let inset):
                ScalingDotsIndicatorView(count: count, inset: inset)
                    .frame(width: 50, height: 50)
            case .opacityDots(let count, let inset):
                OpacityDotsIndicatorView(count: count, inset: inset)
                    .frame(width: 50, height: 50)
            case .equalizer(let count):
                EqualizerIndicatorView(count: count)
                    .frame(width: 50, height: 50)
            case .growingArc(let color, let lineWidth):
                GrowingArcIndicatorView(color: color, lineWidth: lineWidth)
                    .frame(width: 50, height: 50)
            case .growingCircle:
                GrowingCircleIndicatorView()
                    .frame(width: 50, height: 50)
            case .gradient(let colors, let lineCap, let lineWidth):
                GradientIndicatorView(colors: colors, lineCap: lineCap, lineWidth: lineWidth)
                    .frame(width: 50, height: 50)
            }
        }
        .allowsHitTesting(false)
    }
}
