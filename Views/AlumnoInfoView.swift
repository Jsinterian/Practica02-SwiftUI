import SwiftUI

struct AlumnoInfoView: View {
    
    var body: some View {
        
        VStack(spacing: 2) {
            
            Text("José Manuel Interián Chan")
                .font(.caption2)
                .fontWeight(.medium)
            
            Text("Matrícula: 69556")
                .font(.caption2)
                .foregroundStyle(.secondary)
        }
    }
}

#Preview {
    AlumnoInfoView()
}x