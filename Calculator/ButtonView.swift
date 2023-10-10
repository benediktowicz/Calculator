import SwiftUI

struct ButtonView: View {
    var name: String
    @Binding var text: String
    @Binding var val1: Int
    @Binding var val2: Int
    @Binding var operatorSelected: String
    var calculateResult: () -> Double
    
    var body: some View {
        Button(name) {
            if name == "Oblicz" {
                let result = calculateResult()
                text = String(result)
            } else {
                text += name
                if operatorSelected.isEmpty {
                    val1 = Int(text) ?? 0
                } else {
                    val2 = Int(text) ?? 0
                }
            }
        }
        .frame(width: 100, height: 60)
        .border(.black, width: 2)
        .font(.largeTitle)
    }
}
