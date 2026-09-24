import SwiftUI

struct FigurasView: View {
    
    @Binding var path: NavigationPath
    
    private let fondo = Color(
        red: 0.64,
        green: 0.84,
        blue: 0.84
    )
    
    private let rosa = Color(
        red: 1.0,
        green: 0.68,
        blue: 0.64
    )
    
    private let rojo = Color(
        red: 0.90,
        green: 0.35,
        blue: 0.25
    )
    
    private let naranja = Color(
        red: 1.0,
        green: 0.47,
        blue: 0.12
    )
    
    var body: some View {
        
        VStack(spacing: 8) {
            
            Button {
                path.append(Ruta.tarjetas)
            } label: {
                
                ZStack {
                    
                    fondo
                    
                    Circle()
                        .fill(rosa)
                        .padding(10)
                }
                .frame(maxWidth: .infinity)
                .frame(height: 390)
            }
            .buttonStyle(.plain)
            
            ZStack {
                
                fondo
                
                HStack(spacing: 12) {
                    
                    Circle()
                        .fill(rojo)
                    
                    Circle()
                        .fill(naranja)
                }
                .padding(.horizontal)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 390)
            
            AlumnoInfoView()
                .padding(.bottom, 5)
        }
        .ignoresSafeArea(edges: .horizontal)
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    NavigationStack {
        FigurasView(
            path: .constant(NavigationPath())
        )
    }
}