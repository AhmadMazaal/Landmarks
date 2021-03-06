import SwiftUI

struct NotificationView: View {
    var title:String?
    var message:String?
    var landmark:Landmark?
    
    var body: some View {
        VStack{
            if landmark != nil{
                CircleImage(image: landmark!.image.resizable())
                    .scaledToFit()
            }
                Text(title ?? "Unknown Landmark")
                    .font(.headline)
                
                Divider()
                
                Text(message ?? "You are within 5 miles of your favorite landmark")
                    .font(.caption)
            
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
           NotificationView(
            title: "Turtle Rock",
            message: "You are within 5 miles of Turtle Rock.",
            landmark: ModelData().landmarks[0]
           )
       
    }
}
