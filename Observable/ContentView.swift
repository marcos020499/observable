//
//  ContentView.swift
//  Observable
//
//  Created by sw on 29/01/24.
//

import SwiftUI
import CoreData

struct ContentView: View {

    @ObservedObject var contador = Model()
    var body: some View {
        VStack {
            Text("contador = \(contador.contador)")
            Button("aumentar") {
                contador.contador += 1
            }
        }
    }



}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
