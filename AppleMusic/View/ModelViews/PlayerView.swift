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
    @State var soundLevel = 0.5
    @State var offset: CGFloat = 0
    
    @Binding var isExpand: Bool
    
    var animation: Namespace.ID
    var heightImage = UIScreen.main.bounds.width * 0.7
    var safeArea = UIApplication.shared.windows.first?.safeAreaInsets
    
    var body: some View {
        VStack {
            
            // MARK: - Setting PlayerView for full screen
            
            if isExpand {
                Button(action: {
                    isExpand = false
                }) {
                    Capsule()
                        .fill(Color.secondary)
                        .frame(width: isExpand ? 40 : 0, height: isExpand ? 4 : 0)
                        .opacity(isExpand ? 1 : 0)
                        .padding(.top, isExpand ? safeArea?.top : 0)
                }
            }
            Spacer()
            
            // MARK: - Setting PlayerView for not full screen
            
            HStack() {
                Image("img_for_player")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .frame(width: isExpand ? heightImage : 55, height: isExpand ? heightImage : 55)
                    .padding(.leading, isExpand ? 0 : 20)
                
                if !isExpand {
                    Text("Ты была права")
                        .font(.title3)
                    
                    Spacer()
                    
                    Button(action: tapPlayButton) {
                        Image(systemName: isTappedPlay ? "pause.fill" : "play.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.black)
                    }
                    
                    Button(action: tapNextButton) {
                        Image(systemName: "forward.fill")
                            .resizable()
                            .frame(width: 25, height: 20)
                            .foregroundColor(.black)
                            .padding(.init(top: 0, leading: 15, bottom: 0, trailing: 20))
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
                    .padding(.bottom, 20)
                    
                    VStack {
                        ZStack(alignment: .leading) {
                            Capsule()
                                .fill(.secondary)
                                .frame(width: UIScreen.main.bounds.width - 40, height: 3)
                                .opacity(1)
                            
                            Circle()
                                .fill(Color.white)
                                .opacity(1)
                                .frame(width: 6, height: 6)
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
                    .padding(.bottom, 40)
                    
                    HStack {
                        Spacer()
                        
                        Button(action: {}) {
                            Image(systemName: "backward.fill")
                                .resizable()
                                .foregroundColor(.white)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            tapPlayButton()
                        }) {
                            Image(systemName: isTappedPlay ? "pause.fill" : "play.fill")
                                .resizable()
                                .foregroundColor(.white)
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 40, height: 40)
                        }
                        
                        Spacer()
                        
                        Button(action: {}) {
                            Image(systemName: "forward.fill")
                                .resizable()
                                .foregroundColor(.white)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                        }
                        
                        Spacer()
                    }
                    .padding(.bottom, 50)
                    
                    HStack {
                        Image(systemName: "speaker.fill")
                            .foregroundColor(.secondary)
                        
                        Spacer()
                        
                        Slider(value: $soundLevel, in: 0...1, step: 0.0625)
                            .font(.title2)
                        
                        Spacer()
                        
                        Image(systemName: "speaker.wave.2.fill")
                            .foregroundColor(.secondary)
                    }
                    .padding(.bottom, 20)
                    
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
                    .padding(.bottom, 20)
                    
                    Capsule()
                        .fill(Color.white)
                        .frame(width: UIScreen.main.bounds.width / 5 * 2, height: 4)
                        .opacity(1)
                        .padding(.bottom, 4)
                }
                .frame(width: UIScreen.main.bounds.width - 40)
            }
        }
        .frame(maxHeight: isExpand ? .infinity : 70)
        .frame(width: UIScreen.main.bounds.width)
        .background(
            VStack(spacing: 0) {
                BlurView()
                Divider()
            }
            .onTapGesture {
                withAnimation(.spring()){isExpand = true}
            }
            )
        .cornerRadius(isExpand ? 20 : 0)
        .offset(y: isExpand ? 0 : -48)
        .offset(y: offset)
        .gesture(DragGesture().onEnded(onEnded(value:)).onChanged(onChanged(value:)))
        .ignoresSafeArea()
    }
    
    func onChanged(value: DragGesture.Value) {
        if value.translation.height > 0 && isExpand{
            offset = value.translation.height
        }
    }
    
    func onEnded(value: DragGesture.Value) {
        withAnimation(.interactiveSpring(response: 0.2, dampingFraction: 1, blendDuration: 0)) {
            if value.translation.height > heightImage {
                isExpand = false
            }
            offset = 0
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
