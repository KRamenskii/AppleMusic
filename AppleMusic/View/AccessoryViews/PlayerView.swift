//
//  PlayerView.swift
//  AppleMusic
//
//  Created by Kirill on 20.11.2021.
//

import SwiftUI

struct PlayerView: View {
    @State var isTappedPlay: Bool = false
    @State var isTappedNext: Bool = false
    @State var soundLevel = Metric.soundLevel
    @State var offset: CGFloat = Metric.offsetFull
    
    @Binding var isExpand: Bool
    
    var animation: Namespace.ID
    
    var body: some View {
        VStack {
            
            // MARK: - Setting PlayerView for full screen
            
            if isExpand {
                Button(action: {
                    isExpand = false
                }) {
                    Capsule()
                        .fill(Color.secondary)
                        .frame(width: Metric.widthTopCapsule, height: Metric.heightCapsule)
                        .opacity(Metric.opacityCapsule)
                        .padding(.top, Metric.topPaddingCapsule?.top)
                }
            }
            Spacer()
            
            // MARK: - Setting PlayerView for not full screen
            
            HStack() {
                Image("img_for_player")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(Metric.cornerRadiusImage)
                    .frame(width: isExpand ? Metric.heightImageFull : Metric.heightImageMini, height: isExpand ? Metric.heightImageFull : Metric.heightImageMini)
                    .padding(.leading, isExpand ? Metric.leadingPaddingFull : Metric.leadingPaddingMini)
                
                if !isExpand {
                    Text("Ты была права")
                        .font(.title3)
                    
                    Spacer()
                    
                    Button(action: tapPlayButton) {
                        Image(systemName: isTappedPlay ? "pause.fill" : "play.fill")
                            .resizable()
                            .frame(width: Metric.widthMiniPlayButton, height: Metric.heightMiniPlayButton)
                            .foregroundColor(.black)
                    }
                    
                    Button(action: tapNextButton) {
                        Image(systemName: "forward.fill")
                            .resizable()
                            .frame(width: Metric.widthMiniNextButton, height: Metric.heightMiniNextButton)
                            .foregroundColor(.black)
                            .padding(.init(
                                top: Metric.topPaddingMiniNextButton,
                                leading: Metric.leadingPaddingMiniNextButton,
                                bottom: Metric.bottomPaddingMiniNextButton,
                                trailing: Metric.trailingPaddingMiniNextButton))
                    }
                }
            }
            
            // MARK: - Setting PlayerView for full screen
            Spacer()
            if isExpand {
                VStack {
                    
                    HStack(alignment: .center) {
                        VStack(alignment: .leading) {
                            Text("Ты была права")
                                .font(.title2)
                                .fontWeight(.medium)
                            Text("Баста")
                                .font(.title2)
                                .foregroundColor(.secondary)
                        }
                        
                        Spacer()
                        
                        Button(action: {}) {
                            Image(systemName: "ellipsis.circle.fill")
                                .foregroundColor(.secondary)
                                .font(.title2)
                        }
                    }
                    .padding(.bottom, Metric.bottomPaddingFirstStack)
                    
                    VStack {
                        ZStack(alignment: .leading) {
                            Capsule()
                                .fill(.secondary)
                                .frame(width: Metric.widthPlayerViewFull, height: Metric.heightSoundLine)
                                .opacity(Metric.opacityCapsule)
                            
                            Circle()
                                .fill(Color.white)
                                .opacity(Metric.opacityCapsule)
                                .frame(width: Metric.widthCircle, height: Metric.heightCircle)
                        }
                        
                        HStack {
                            Text("0:00")
                                .foregroundColor(.secondary)
                                .font(.caption)
                            
                            Spacer()
                            
                            Text("-2:00")
                                .foregroundColor(.secondary)
                                .font(.caption)
                        }
                    }
                    .padding(.bottom, Metric.bottomPaddingSecondStack)
                    
                    HStack {
                        Spacer()
                        
                        Button(action: {}) {
                            Image(systemName: "backward.fill")
                                .resizable()
                                .foregroundColor(.white)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: Metric.widthFullButton, height: Metric.heightFullButton)
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            tapPlayButton()
                        }) {
                            Image(systemName: isTappedPlay ? "pause.fill" : "play.fill")
                                .resizable()
                                .foregroundColor(.white)
                                .aspectRatio(contentMode: .fill)
                                .frame(width: Metric.widthFullButton, height: Metric.heightFullButton)
                        }
                        
                        Spacer()
                        
                        Button(action: {}) {
                            Image(systemName: "forward.fill")
                                .resizable()
                                .foregroundColor(.white)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: Metric.widthFullButton, height: Metric.heightFullButton)
                        }
                        
                        Spacer()
                    }
                    .padding(.bottom, Metric.bottomPaddingFullButton)
                    
                    HStack {
                        Image(systemName: "speaker.fill")
                            .foregroundColor(.secondary)
                        
                        Spacer()
                        
                        Slider(value: $soundLevel, in: 0...1, step: Metric.stepSound)
                            .font(.title2)
                        
                        Spacer()
                        
                        Image(systemName: "speaker.wave.2.fill")
                            .foregroundColor(.secondary)
                    }
                    .padding(.bottom, Metric.bottomPaddingThirdStack)
                    
                    HStack {
                        Spacer()
                        
                        Button(action: {}) {
                            Image(systemName: "arrow.up.message")
                                .foregroundColor(.secondary)
                                .font(.title2)
                        }
                        
                        Spacer()
                        
                        Button(action: {}) {
                            Image(systemName: "airplayaudio")
                                .foregroundColor(.secondary)
                                .font(.title2)
                        }
                        
                        Spacer()
                        
                        Button(action: {}) {
                            Image(systemName: "list.bullet")
                                .foregroundColor(.secondary)
                                .font(.title2)
                        }
                        
                        Spacer()
                    }
                    .padding(.bottom, Metric.bottomPaddingFourthStack)
                    
                    Capsule()
                        .fill(Color.white)
                        .frame(width: Metric.widthBottomCapsule, height: Metric.heightCapsule)
                        .opacity(Metric.opacityCapsule)
                        .padding(.bottom, Metric.bottomPaddingCapsule)
                }
                .frame(width: Metric.widthPlayerViewFull)
            }
        }
        .frame(maxHeight: isExpand ? .infinity : Metric.heightPlayerView)
        .frame(width: UIScreen.main.bounds.width)
        .background(
            VStack(spacing: Metric.spacingBackground) {
                BlurView()
                Divider()
            }
            .onTapGesture {
                withAnimation(.spring()){isExpand = true}
            }
            )
        .cornerRadius(isExpand ? Metric.cornerRadiusPlayerViewFull : Metric.cornerRadiusPlayerViewMini)
        .offset(y: isExpand ? Metric.offsetFull : Metric.offsetMini)
        .offset(y: offset)
        .gesture(DragGesture().onEnded(onEnded(value:)).onChanged(onChanged(value:)))
        .ignoresSafeArea()
    }
    
    func onChanged(value: DragGesture.Value) {
        if value.translation.height > 0 && isExpand {
            offset = value.translation.height
        }
    }
    
    func onEnded(value: DragGesture.Value) {
        withAnimation(.interactiveSpring(response: Metric.response, dampingFraction: Metric.dampingFraction, blendDuration: Metric.blendDuration)) {
            if value.translation.height > Metric.heightImageFull {
                isExpand = false
            }
            offset = Metric.offsetFull
        }
    }
}

// MARK: - Action Button

extension PlayerView {
    private func tapPlayButton() {
        isTappedPlay = !isTappedPlay
    }
    
    private func tapNextButton() {
        isTappedNext = !isTappedNext
    }
}

// MARK: - Constants

extension PlayerView {
    enum Metric {
        static let heightPlayerView: CGFloat = 70
        static let widthPlayerViewFull: CGFloat = UIScreen.main.bounds.width - 40
        static let cornerRadiusPlayerViewFull: CGFloat = 20
        static let cornerRadiusPlayerViewMini: CGFloat = 0
        static let offsetFull: CGFloat = 0
        static let offsetMini: CGFloat = -48
        
        static let response: CGFloat = 0.2
        static let dampingFraction: Double = 1
        static let blendDuration: Double = 0
        
        static let heightCapsule: CGFloat = 4
        static let widthTopCapsule: CGFloat = 40
        static let widthBottomCapsule: CGFloat = UIScreen.main.bounds.width / 5 * 2
        static let opacityCapsule: Double = 1
        static let bottomPaddingCapsule: Double = 4
        static let topPaddingCapsule = UIApplication.shared.windows.first?.safeAreaInsets
        
        static let heightImageMini: CGFloat = 55
        static let heightImageFull: CGFloat = UIScreen.main.bounds.width * 0.7
        static let cornerRadiusImage: CGFloat = 10
        static let leadingPaddingFull: CGFloat = 0
        static let leadingPaddingMini: CGFloat = 20
        
        static let heightMiniPlayButton: CGFloat = 25
        static let widthMiniPlayButton: CGFloat = 25
        static let heightMiniNextButton: CGFloat = 20
        static let widthMiniNextButton: CGFloat = 25
        static let topPaddingMiniNextButton: CGFloat = 0
        static let leadingPaddingMiniNextButton: CGFloat = 15
        static let bottomPaddingMiniNextButton: CGFloat = 0
        static let trailingPaddingMiniNextButton: CGFloat = 20
        
        static let heightFullButton: CGFloat = 40
        static let widthFullButton: CGFloat = 40
        static let bottomPaddingFullButton: CGFloat = 50
        
        static let heightCircle: CGFloat = 6
        static let widthCircle: CGFloat = 6
        static let heightSoundLine: CGFloat = 3
        
        static let stepSound: CGFloat = 0.0625
        static let soundLevel: CGFloat = 0.5
        static let spacingBackground: CGFloat = 0
        
        static let bottomPaddingFirstStack: CGFloat = 20
        static let bottomPaddingSecondStack: CGFloat = 40
        static let bottomPaddingThirdStack: CGFloat = 20
        static let bottomPaddingFourthStack: CGFloat = 20
    }
}
