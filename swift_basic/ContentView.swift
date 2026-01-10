import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("niagarafalls")
            .resizable()
            .cornerRadius(20).padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .aspectRatio(contentMode: .fit)
        Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ContentView()
}
