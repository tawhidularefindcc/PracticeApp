//
//  CustomModelBootcamp.swift
//  PracticeApp
//
//  Created by Md Najmuzzaman on 8/26/22.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followersCount: Int
    let isVefified: Bool
}

struct CustomModelBootcamp: View {
    
    @State var users: [UserModel] = [
        UserModel(displayName: "Nick", userName: "nick123", followersCount: 100, isVefified: true),
        UserModel(displayName: "Emily", userName: "itsemily", followersCount: 55, isVefified: false),
        UserModel(displayName: "Samantha", userName: "ninja", followersCount: 355, isVefified: false),
        UserModel(displayName: "Chris", userName: "chris2009", followersCount: 88, isVefified: true)
    ]
    
    var body: some View {
        NavigationView{
            List{
                ForEach(users) { user in
                    HStack(spacing: 15.0){
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading){
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        
                        if user.isVefified{
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        
                        VStack{
                            Text("\(user.followersCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
                
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("users")
        }
    }
}

struct CustomModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        CustomModelBootcamp()
    }
}
