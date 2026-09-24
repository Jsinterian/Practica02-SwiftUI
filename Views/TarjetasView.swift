import SwiftUI

struct TarjetasView: View {
    
    @Binding var path: NavigationPath
    
    private let cafe = Color(
        red: 0.45,
        green: 0.34,
        blue: 0.32
    )
    
    private let coral = Color(
        red: 0.90,
        green: 0.35,
        blue: 0.25
    )
    
    private let rosa = Color(
        red: 1.0,
        green: 0.68,
        blue: 0.64
    )
    
    var body: some View {
        
        VStack(spacing: 12) {
            
            Spacer()
            
            // TARJETA SUPERIOR
            
            VStack(spacing: 15) {
                
                Text("Roses are red,")
                    .font(.title2)
                    .fontWeight(.bold)
                
                Image(systemName: "camera.macro")
                    .font(.system(size: 45))
                    .foregroundStyle(coral)
                
                Text("violets are blue,")
                    .font(.title2)
                    .fontWeight(.bold)
            }
            .foregroundStyle(.white)
            .frame(width: 230, height: 180)
            .background(cafe)
            .clipShape(
                RoundedRectangle(
                    cornerRadius: 12
                )
            )
            
            // TARJETA INFERIOR
            
            Button {
                path.append(Ruta.librero)
            } label: {
                
                VStack(spacing: 12) {
                    
                    Text("I just love")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Image(systemName: "desktopcomputer")
                        .font(.system(size: 45))
                        .foregroundStyle(rosa)
                    
                    Text("Coding with you")
                        .font(.title2)
                        .fontWeight(.bold)
                }
                .foregroundStyle(.white)
                .frame(width: 230, height: 180)
                .background(cafe)
                .clipShape(
                    RoundedRectangle(
                        cornerRadius: 12
                    )
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
        TarjetasView(
            path: .constant(NavigationPath())
        )
    }
}