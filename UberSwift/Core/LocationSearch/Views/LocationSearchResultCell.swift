//
//  LocationSearchResultCell.swift
//  UberSwift
//
//  Created by Nortiz M1 on 2022/11/09.
//

import SwiftUI

struct LocationSearchResultCell: View {
    var body: some View {
		HStack {
			Image(systemName: "mappin.circle.fill")
				.resizable()
				.foregroundColor(.blue)
				.tint(.white)
				.frame(width: 40, height: 40)
			
			VStack(alignment: .leading, spacing: 4.0) {
				Text("Starbuck Coffee")
					.font(.body)
					.fontWeight(.bold)
				Text("123 Main st, Cupertino")
					.font(.callout)
					.foregroundColor(.black.opacity(0.5))
				Divider()
			}
			.padding(.leading, 8)
		}
		.padding(.leading)
    }
}

struct LocationSearchResultCell_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearchResultCell()
    }
}
