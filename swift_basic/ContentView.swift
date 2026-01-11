import SwiftUI

struct ContentView: View {
    
    @State private var count = 0
    @State private var navigate = false
    @State private var navigateThird = false

    var body: some View {
        NavigationStack { // 👈 Add this for navigation
            ZStack {
                Color.blue
                    .ignoresSafeArea()   // full screen background

                VStack(spacing: 20) {
                    Image("niagarafalls")
                        .resizable()
                        .cornerRadius(20)
                        .padding()
                        .aspectRatio(contentMode: .fit)

                    Text("Placeholder")
                        .font(.largeTitle)
                    
                    Text("Counter App")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    Text("\(count)")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    HStack(spacing: 20){
                        Button(action:{
                            count -= 1
                        }){
                            Text("-")
                                .font(.largeTitle)
                                .frame(width: 60, height: 60)
                                .foregroundColor(.white)
                                .background(Color.red)
                                .cornerRadius(10)
                        }
                        
                        Button(action:{
                            count += 1
                        }){
                            Text("+")
                                .font(.largeTitle)
                                .frame(width: 60, height: 60)
                                .foregroundColor(.white)
                                .background(Color.green)
                                .cornerRadius(10)
                        }
                    }

                    // Navigation Button
                    Button(action: {
                        navigate = true
                    }){
                        Text("Go To Second Screen")
                            .font(.headline)
                            .padding()
                            .background(Color.orange)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    // Hidden NavigationLink
                    NavigationLink("", destination: SecondView(), isActive: $navigate)
                        .hidden()
                    
                    //Naivigation button is end here
                    
                    Button("Go to third Screen"){navigateThird = true}
                        .padding()
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .cornerRadius(20)
                    
                    NavigationLink("", destination: ThirdView(), isActive: $navigateThird)
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
