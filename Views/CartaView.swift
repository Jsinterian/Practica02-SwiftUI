import SwiftUI

struct CartaView: View {
    
    @Binding var path: NavigationPath
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Button {
                path.append(Ruta.mood)
            } label: {
                
                ZStack {
                    
                    RoundedRectangle(
                        cornerRadius: 3
                    )
                    .fill(.white)
                    .overlay {
                        RoundedRectangle(
                            cornerRadius: 3
                        )
                        .stroke(
                            .black,
                            lineWidth: 1
                        )
                    }
                    
                    // ESQUINA SUPERIOR
                    
                    VStack {
                        
                        HStack {
                            
                            VStack {
                                
                                Image(
                                    systemName:
                                    "crown.fill"
                                )
                                
                                Text("Q")
                                    .font(.title)
                                
                                Image(
                                    systemName:
                                    "heart.fill"
                                )
                            }
                            .foregroundStyle(.red)
                            
                            Spacer()
                        }
                        
                        Spacer()
                    }
                    .padding()
                    
                    // CORONA CENTRAL
                    
                    VStack(spacing: 8) {
                        
                        Image(
                            systemName:
                            "crown.fill"
                        )
                        .font(.system(size: 70))
                        
                        Image(
                            systemName:
                            "crown.fill"
                        )
                        .font(.system(size: 70))
                        .rotationEffect(
                            .degrees(180)
                        )
                    }
                    .foregroundStyle(.red)
                    
                    // ESQUINA INFERIOR
                    
                    VStack {
                        
                        Spacer()
                        
                        HStack {
                            
                            Spacer()
                            
                            VStack {
                                
                                Image(
                                    systemName:
                                    "heart.fill"
                                )
                                
                                Text("Q")
                                    .font(.title)
                                
                                Image(
                                    systemName:
                                    "crown.fill"
                                )
                            }
                            .rotationEffect(
                                .degrees(180)
                            )
                            .foregroundStyle(.red)
                        }
                    }
                    .padding()
                }
                .frame(
                    width: 260,
                    height: 430
                )
            }
            .buttonStyle(.plain)
            
            Spacer()
            
            AlumnoInfoView()
        }
        .padding()
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        CartaView(
            path: .constant(NavigationPath())
        )
    }
}