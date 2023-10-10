import SwiftUI

struct ContentView: View {
    @State private var text: String = ""
    @State private var val1: Int = 0
    @State private var val2: Int = 0
    @State private var operatorSelected = ""
    
    var body: some View {
        VStack {
            Text("KALKULATOR")
                .font(.largeTitle)
            
            Spacer()
            
            Text("\(text)")
                .font(.largeTitle)
                .frame(width: 315, height: 60)
                .border(.black, width: 2)
            
            HStack {
                ForEach(1..<4, id: \.self) { index in
                    ButtonView(
                        name: String(index),
                        text: $text,
                        val1: $val1,
                        val2: $val2,
                        operatorSelected: $operatorSelected,
                        calculateResult: calculateResult
                    )
                }
            }
            
            HStack {
                ForEach(4..<7, id: \.self) { index in
                    ButtonView(
                        name: String(index),
                        text: $text,
                        val1: $val1,
                        val2: $val2,
                        operatorSelected: $operatorSelected,
                        calculateResult: calculateResult
                    )
                }
            }
            
            HStack {
                ForEach(7..<10, id: \.self) { index in
                    ButtonView(
                        name: String(index),
                        text: $text,
                        val1: $val1,
                        val2: $val2,
                        operatorSelected: $operatorSelected,
                        calculateResult: calculateResult
                    )
                }
            }
            
            HStack {
                ButtonView(
                    name: String(0),
                    text: $text,
                    val1: $val1,
                    val2: $val2,
                    operatorSelected: $operatorSelected,
                    calculateResult: calculateResult
                )
                
                Button("+") {
                    operatorSelected = "+"
                    text = ""
                }
                .frame(width: 100, height: 60)
                .border(.black, width: 2)
                .font(.largeTitle)
                
                Button("-") {
                    operatorSelected = "-"
                    text = ""
                }
                .frame(width: 100, height: 60)
                .border(.black, width: 2)
                .font(.largeTitle)
                
            }
            
            HStack {
                Button("*") {
                    operatorSelected = "*"
                    text = ""
                }
                .frame(width: 100, height: 60)
                .border(.black, width: 2)
                .font(.largeTitle)
                
                Button("/") {
                    operatorSelected = "/"
                    text = ""
                }
                .frame(width: 100, height: 60)
                .border(.black, width: 2)
                .font(.largeTitle)
                
                Button("sin") {
                    operatorSelected = "sin"
                    text = ""
                }
                .frame(width: 100, height: 60)
                .border(.black, width: 2)
                .font(.largeTitle)
            }
            
            Button("Oblicz") {
                let result = calculateResult()
                text = String(result)
            }
            .frame(width: 315, height: 60)
            .border(.black, width: 2)
            .font(.largeTitle)
        }
        .padding()
    }
    
    func calculateResult() -> Double {
        let calculations = Calculations()
        
        switch operatorSelected {
        case "+":
            return calculations.addTwoInt(of: val1, with: val2)
        case "-":
            return calculations.subtractTwoInt(of: val1, with: val2)
        case "*":
            return calculations.multiplyTwoInt(of: val1, with: val2)
        case "/":
            if val2 == 0 {
                return Double.nan
            } else {
                return calculations.divideTwoInt(of: val1, by: val2)
            }
        case "sin":
            return calculations.calculateSin(of: val1)
        default:
            return 0
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
