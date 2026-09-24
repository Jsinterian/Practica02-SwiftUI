import SwiftUI

struct ContentView: View {
    
    @State private var path = NavigationPath()
    
    var body: some View {
        
        NavigationStack(path: $path) {
            
            FigurasView(path: $path)
            
                .navigationDestination(for: Ruta.self) { ruta in
                    
                    switch ruta {
                        
                    case .tarjetas:
                        TarjetasView(path: $path)
                        
                    case .librero:
                        LibreroView(path: $path)
                        
                    case .carta:
                        CartaView(path: $path)
                        
                    case .mood:
                        MoodView(path: $path)
                    }
                }
        }
        .tint(
            Color(
                red: 0.45,
                green: 0.34,
                blue: 0.32
            )
        )
    }
}

enum Ruta: Hashable {
    case tarjetas
    case librero
    case carta
    case mood
}

#Preview {
    ContentView()
}