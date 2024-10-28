//
//  AlumnosView.swift
//  nuevoproyecto
//
//  Created by alumno on 28/10/24.
//

import SwiftUI

struct AlumnosView: View {
    
    @State var like: Bool = false
    var body: some View {
        NavigationStack(){
            List(){
                ForEach(1..<20, id:\.self){ alumno in
                    NavigationLink(destination:EditarAlumnoView()){
                        Image(systemName: "star.fill")
                            .foregroundColor(like ? .green : .red)
                            .onTapGesture {
                                like.toggle()
                                print("\(like)")
                            }
                    Text("Alumno")
                    }
                }
            }
            .navigationTitle("Alumnos IOS")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(){
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "plus.circle")
                            .renderingMode(.original)
                            .resizable()
                            .scaledToFit()
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    })
                }
            }
            
        }
    }
}

#Preview {
    AlumnosView()
}
