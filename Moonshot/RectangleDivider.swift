//
//  RectangleDivider.swift
//  Moonshot
//
//  Created by Oliver Hu on 2/22/24.
//

import SwiftUI

struct RectangleDivider: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundStyle(.lightBackground)
            .padding(.vertical)
    }
}

#Preview {
    RectangleDivider()
}
