// Copyright (c) 2025 Schubert Anselme <schubert@anselm.es>
// SPDX-Licence-Identifier: GPL-3.0

import SwiftTUI

@main
struct Terminal: View {
  var body: some View {
    VStack {
      VersionInfo()
      Text("Hello, world!")
    }
  }

  static func main() { Application(rootView: Terminal()).start() }
}
