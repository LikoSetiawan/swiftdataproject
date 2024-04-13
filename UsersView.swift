//
//  UsersView.swift
//  SwiftDataProject
//
//  Created by Liko Setiawan on 10/04/24.
//

import SwiftData
import SwiftUI

struct UsersView: View {
    @Query var users : [User]
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        List(users){ user in
            HStack{
                Text(user.name)
                
                
                Spacer()
                
                Text(String(user.jobs.count))
                    .fontWeight(.black)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                    .background(.blue)
                    .foregroundStyle(.white)
                    .clipShape(.capsule)
            }
        }
//        .onAppear(perform: {
//            addSample()
//        })
    }
    func addSample(){
        let user1 = User(name: "Aoi Kano", city: "Kobe", joinDate: .now)
        let job1 = Job(name: "Bitching", priority: 1)
        let job2 = Job(name: "Liar", priority: 10)
        
        modelContext.insert(user1)
        
        user1.jobs.append(job1)
        user1.jobs.append(job2)
    }
    
    init(minimumJoinDate: Date, sortOrder: [SortDescriptor<User>]) {
        _users = Query(filter: #Predicate<User>{ user in
            user.joinDate >= minimumJoinDate
        }, sort: sortOrder)
    }
}

#Preview {
    UsersView(minimumJoinDate: .now, sortOrder: [SortDescriptor(\User.name)])
        .modelContainer(for: User.self)
}
