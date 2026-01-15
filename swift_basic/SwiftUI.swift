import SwiftUI

struct SwiftUIScreen: View {
    var body: some View {
        VStack(){
            VStack(alignment:.leading){
                HStack(spacing: 16){
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                        .padding(.top, 16)
                    VStack(alignment:.leading, spacing: -2){
                        Text("Majid Bhuiyan")
                            .font(.title2)
                            .foregroundColor(.white)
                        
                        Text("majid.bhuiyan2021@gmail")
                            .font(.subheadline)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    Image(systemName: "bell.fill")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.white)

                }
                Spacer()
            }.padding()
            .frame(maxWidth: .infinity, maxHeight: 70, alignment: .leading)
            .background(.blue)
            
            
            
            Spacer()
        }
        
    
    }
}

struct SwiftUI_Previews: PreviewProvider{
    static var previews: some View{
        SwiftUIScreen()
    }
}
