//
//  ContentView.swift
//  Test_Swift
//
//  Created by Trung Dang on 04/10/2021.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(fetchRequest: ItemOK.getAllToDoListItems())
    private var items: FetchedResults<Item>
    
    @State var text: String = ""

    var body: some View {
        NavigationView {
            List {
                Section(header: Text("New Item")) {
                    HStack {
                        TextField("Enter new item ...", text: $text)
                        
                        Button(action: {
                            let newItem = Item(context: viewContext)
                            newItem.name = text
                            newItem.createdAt = Date()
                            do {
                                try viewContext.save()
                            } catch {
                                print(error)
                            }
                            
                            text = "";
                        }, label: {
                            Text("Save")
                        })
                    }
                }
                Section {
                    ForEach(items) { item in
                        VStack(alignment: .leading) {
                            Text(item.name!)
                                .font(.headline)
                            Text("\(item.createdAt!)")
                        }
                    }.onDelete(perform: { IndexSet in
                        guard let index = IndexSet.first else {
                            return
                        }
                        let itemToDelete = items[index]
                        viewContext.delete(itemToDelete)
                        
                        do {
                            try viewContext.save()
                        } catch  {
                            print(error)
                        }
                
                    })
                }
            }
            .navigationTitle("To Do List")
        }
        
    }

//    private func addItem() {
//        withAnimation {
//            let newItem = Item(context: viewContext)
//            newItem.timestamp = Date()
//
//            do {
//                try viewContext.save()
//            } catch {
//                // Replace this implementation with code to handle the error appropriately.
//                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//                let nsError = error as NSError
//                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
//            }
//        }
//    }
//
//    private func deleteItems(offsets: IndexSet) {
//        withAnimation {
//            offsets.map { items[$0] }.forEach(viewContext.delete)
//
//            do {
//                try viewContext.save()
//            } catch {
//                // Replace this implementation with code to handle the error appropriately.
//                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//                let nsError = error as NSError
//                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
//            }
//        }
//    }
}

//private let itemFormatter: DateFormatter = {
//    let formatter = DateFormatter()
//    formatter.dateStyle = .short
//    formatter.timeStyle = .medium
//    return formatter
//}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
