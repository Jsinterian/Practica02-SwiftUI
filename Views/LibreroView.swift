import SwiftUI

struct LibreroView: View {
    
    @Binding var path: NavigationPath
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            VStack(spacing: 0) {
                
                // REPISA 1
                
                HStack {
                    
                    Image(systemName: "books.vertical.fill")
                        .font(.system(size: 45))
                    
                    Spacer()
                }
                .padding(.horizontal, 20)
                .frame(height: 75)
                
                Repisa()
                
                // REPISA 2
                
                HStack {
                    
                    Spacer()
                    
                    Image(systemName: "books.vertical.fill")
                        .font(.system(size: 45))
                }
                .padding(.horizontal, 20)
                .frame(height: 75)
                
                Repisa()
                
                // REPISA 3
                
                HStack {
                    
                    Spacer()
                    
                    Image(systemName: "books.vertical.fill")
                        .font(.system(size: 45))
                }
                .padding(.horizontal, 20)
                .frame(height: 75)
                
                Repisa()
                
                // REPISA INFERIOR
                
                HStack(spacing: 0) {
                    
                    Spacer()
                    
                    Button {
                        path.append(Ruta.carta)
                    } label: {
                        
                        ZStack {
                            
                            Color.yellow
                            
                            Image(
                                systemName: "books.vertical.fill"
                            )
                            .font(.system(size: 45))
                            .foregroundStyle(
                                Color(
                                    red: 0.45,
                                    green: 0.34,
                                    blue: 0.32
                                )
                            )
                        }
                        .frame(
                            width: 110,
                            height: 70
                        )
                    }
                    .buttonStyle(.plain)
                    
                    ZStack {
                        
                        Color.cyan
                        
                        Image(
                            systemName: "books.vertical.fill"
                        )
                        .font(.system(size: 45))
                    }
                    .frame(
                        width: 110,
                        height: 70
                    )
                    
                    Spacer()
                }
                .background(.cyan)
                
                Repisa()
            }
            .overlay {
                
                Rectangle()
                    .stroke(
                        .black,
                        lineWidth: 1
                    )
            }
            .frame(width: 290)
            
            Spacer()
            
            AlumnoInfoView()
        }
        .padding()
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct Repisa: View {
    
    var body: some View {
        
        Rectangle()
            .fill(.black)
            .frame(height: 12)
            .padding(.horizontal, 20)
    }
}

#Preview {
    NavigationStack {
        LibreroView(
            path: .constant(NavigationPath())
        )
    }
}