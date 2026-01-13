import SwiftUI

struct HabitTracker: View {
    
    let days = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]
        @State private var selectedDayIndex: Int? = nil
    
    
    var body: some View {
        VStack {
            HStack{
                VStack(alignment: .leading){
                    Text("Yesterday")
//                        .font(.headline)
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.white)
                        
                    Text("100% Finished")
                        .font(.subheadline)
                        .foregroundColor(.green)
                }
                Spacer()
                Button {
                    print("Add tapped")
                } label: {
                    Image(systemName: "plus")
                        .font(.system(size: 18, weight: .bold))
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .clipShape(Circle())
                }

            }
            .padding(.horizontal)
            
            //Spacer()
            
            Rectangle()
                .fill(Color.backgroundColor) // #222428
                .cornerRadius(30, corners: [.topLeft, .topRight])
                .edgesIgnoringSafeArea(.bottom)
                .overlay(
                    VStack{
                        HStack{
                            ForEach(0..<days.count, id: \.self){
                                index in
                                Text(days[index])
                                    .foregroundColor(selectedDayIndex == index ? .white : .unselectedColor)
                                    .frame(maxWidth: .infinity)
                                    .padding(.vertical, 12)
                                    .contentShape(Rectangle())
                                    .onTapGesture {
                                        selectedDayIndex = index
                                    }
                                    
                            }
                        }
                        .onAppear{
                            selectedDayIndex = Calendar.current.component(.weekday, from: Date()) - 1
                        }
                        .foregroundColor(Color.mySecondary)
                        .frame(maxWidth: .infinity)
                        .padding()
                        
                        Spacer()
                    }
                )

            
        }
        .navigationBarHidden(true)
        .background(Color.appBarBackgroundColor)

    }
       
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}



#Preview {
    HabitTracker()
}

