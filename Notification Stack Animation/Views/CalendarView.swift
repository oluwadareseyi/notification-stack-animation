import SwiftUI

struct CalendarView: View {
   
    
    var body: some View {
        VStack {
            VStack {
                Text("Monday, Feb 19")
                    .font(.system(size: 12, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(Color(hex: "FF4539"))
            }
            .padding(.horizontal, 8)
            .padding(.bottom, 8)
            
            HStack(alignment: .top) {
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(maxHeight: .infinity)
                .frame(width: 4)
                .foregroundColor(Color(hex: "FFDA50"))
                
                Text("Breakfast with Soysauce")
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundColor(Color(hex: "F5D04B"))
                
                Spacer()
                
                VStack {
                    Text("9:45AM")
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(Color(hex: "C9AA3A"))
                    
                    Spacer()
                    
                    Text("11:00AM")
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(Color(hex: "C9AA3A"))
                }
            }
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(height: 38)
                .padding(.horizontal, 8)
                .padding(.vertical, 6)
                .background(Color(hex: "4B3D04"))
                .clipShape(RoundedRectangle(cornerRadius: 4, style: .continuous))
            
            
            HStack(alignment: .top) {
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(maxHeight: .infinity)
                .frame(width: 4)
                .foregroundColor(Color(hex: "9AE77E"))
                
                Text("Product Sprint")
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundColor(Color(hex: "97E37D"))
                
                Spacer()
                
                VStack {
                    Text("11:15AM")
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(Color(hex: "7ABD62"))
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        
                    
                    Spacer()
                    
                    Text("1:00PM")
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(Color(hex: "7ABD62"))
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
            }
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(height: 38)
                .padding(.horizontal, 8)
                .padding(.vertical, 6)
                .background(Color(hex: "1F4013"))
                .clipShape(RoundedRectangle(cornerRadius: 4, style: .continuous))
            
            
            HStack(alignment: .top) {
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(maxHeight: .infinity)
                .frame(width: 4)
                .foregroundColor(Color(hex: "5CC6FF"))
                
                Text("Team Goals")
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundColor(Color(hex: "59C1FA"))
                
                Spacer()
                
                VStack {
                    Text("1:15PM")
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(Color(hex: "469DD2"))
                    
                    Spacer()
                    
                    Text("2:15PM")
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(Color(hex: "469DD2"))
                }
            }
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(height: 38)
                .padding(.horizontal, 8)
                .padding(.vertical, 6)
                .background(Color(hex: "0A344A"))
                .clipShape(RoundedRectangle(cornerRadius: 4, style: .continuous))
            
            
            VStack {
                Text("TOMORROW")
                    .font(.system(size: 12, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(Color(hex: "98989F"))
            }
            .padding(.horizontal, 8)
            .padding(.vertical, 4)
            
            
            HStack(alignment: .top) {
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(maxHeight: .infinity)
                .frame(width: 4)
                .foregroundColor(Color(hex: "FF4F79"))
                
                Text("Morning Swim")
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundColor(Color(hex: "F54B75"))
                
                Spacer()
                
                VStack {
                    Text("9:00AM")
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(Color(hex: "D63364"))
                    
                    Spacer()
                    
                    Text("9:45AM")
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(Color(hex: "D63364"))
                }
            }
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(height: 38)
                .padding(.horizontal, 8)
                .padding(.vertical, 6)
                .background(Color(hex: "441320"))
                .clipShape(RoundedRectangle(cornerRadius: 4, style: .continuous))
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .padding(20)
//        .padding(.horizontal, 20)
        .background(Color(hex: "1C1C1E"))
        .clipShape(RoundedRectangle(cornerRadius: 40, style: .continuous))
       
    }
}
