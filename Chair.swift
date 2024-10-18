//
//  Chair.swift
//  Lab08
//
//  Created by Jesse Mitra on 10/11/24.
//
import SwiftUI

struct Chair: Shape {
    var legWidth: CGFloat
    var legHeight: CGFloat
    var seatLength: CGFloat
    var seatThickness: CGFloat

    func path(in rect: CGRect) -> Path {
        var path = Path()

        let legThickness = legWidth
        let seatHeight = seatThickness

        //backrest
        path.addRect(CGRect(x: rect.minX + legThickness, y: rect.minY, width: legThickness, height: legHeight * 2))
        //seat
        path.addRect(CGRect(x: rect.minX + legThickness, y: rect.minY + legHeight * 2, width: seatLength, height: seatHeight))
        //left
        path.addRect(CGRect(x: rect.minX + legThickness, y: rect.minY + legHeight * 2 + seatHeight, width: legThickness, height: legHeight))
        //right
        path.addRect(CGRect(x: rect.minX + legThickness + seatLength - legThickness, y: rect.minY + legHeight * 2 + seatHeight, width: legThickness, height: legHeight))

        return path
    }
}
