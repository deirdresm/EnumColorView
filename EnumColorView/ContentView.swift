//
//  ContentView.swift
//  EnumColorView
//
//  Created by Deirdre Saoirse Moen on 9/28/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		VStack {
			HStack {
				ForEach(Array(Element.allCases.enumerated()), id: \.offset) { enumerated in
					VStack {
						enumerated.element
							.overlay(Text(enumerated.element.description)
										.font(.largeTitle))
							.environment(\.colorScheme, .light)

						enumerated.element
							.overlay(Text(enumerated.element.description)
										.font(.largeTitle))
							.environment(\.colorScheme, .dark)
					}
				}
			}
			LinearGradient(gradient: Element.gradient, startPoint: .leading, endPoint: .trailing)
				.environment(\.colorScheme, .light)
			LinearGradient(gradient: Element.gradient, startPoint: .leading, endPoint: .trailing)
				.environment(\.colorScheme, .dark)
		}
        .padding()
    }
}

#Preview {
    ContentView()
}
