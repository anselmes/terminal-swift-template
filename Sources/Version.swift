// Copyright (c) 2025 Schubert Anselme <schubert@anselm.es>
// SPDX-Licence-Identifier: GPL-3.0

import SwiftTUI

struct VersionInfo {
  static var version: String { VersionatorVersion.full }
  private static var longVersion: String {
    return """
    Current build is \(VersionatorVersion.build)
    Current commit is \(VersionatorVersion.commit)
    Git describe is \(VersionatorVersion.git)
    """
  }
}

// MARK: - View

extension VersionInfo: View {
  var body: some View {
    VStack {
      Text("version: \(VersionInfo.version)")
      Text(VersionInfo.longVersion)
    }
  }
}
