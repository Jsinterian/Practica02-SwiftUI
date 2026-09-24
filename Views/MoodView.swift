import SwiftUI

struct MoodView: View {
    
    @Binding var path: NavigationPath
    
    let emociones = [
        "😢",
        "😴",
        "😀",
        "😡",
        "🙁"
    ]
    
    @State private var seleccion = 2
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            VStack(alignment: .leading, spacing: 35) {
                
                Text("What's your mood?")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(
                        Color(
                            red: 0.45,
                            green: 0.34,
                            blue: 0.32
                        )
                    )
                
                HStack {
                    
                    ForEach(
                        emociones.indices,
                        id: \.self
                    ) { indice in
                        
                        Spacer()
                        
                        Button {
                            seleccion = indice
                        } label: {
                            
                            VStack(spacing: 15) {
                                
                                Text(
                                    emociones[indice]
                                )
                                .font(.system(size: 45))
                                
                                Circle()
                                    .stroke(
                                        Color(
                                            red: 0.45,
                                            green: 0.34,
                                            blue: 0.32
                                        ),
                                        lineWidth: 2
                                    )
                                    .background {
                                        
                                        Circle()
                                            .fill(
                                                seleccion == indice
                                                ? Color(
                                                    red: 0.45,
                                                    green: 0.34,
                                                    blue: 0.32
                                                )
                                                : .clear
                                            )
                                    }
                                    .frame(
                                        width: 20,
                                        height: 20
                                    )
                            }
                        }
                        .buttonStyle(.plain)
                        
                        Spacer()
                    }
                }
            }
            
            Spacer()
            
            Button {
                path.removeLast(
                    path.count
                )
            } label: {
                
                Label(
                    "Volver al inicio",
                    systemImage: "house.fill"
                )
                .frame(maxWidth: .infinity)
                .padding()
                .background(
                    Color(
                        red: 0.45,
                        green: 0.34,
                        blue: 0.32
                    )
                )
                .foregroundStyle(.white)
                .clipShape(
                    RoundedRectangle(
                        cornerRadius: 12
                    )
                )
            }
            .padding(.horizontal)
            
            AlumnoInfoView()
        }
        .padding()
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        MoodView(
            path: .constant(NavigationPath())
        )
    }
}