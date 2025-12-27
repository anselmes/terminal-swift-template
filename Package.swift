// swift-tools-version: 6.1
// Copyright (c) 2025 Schubert Anselme <schubert@anselm.es>
// SPDX-Licence-Identifier: GPL-3.0

import PackageDescription

let package = Package(
  name: "cli-swift-template",
  platforms: [.macOS(.v15)],

  // MARK: - Dependencies

  dependencies: [
    .package(url: "https://github.com/elegantchaos/Versionator.git", from: "2.0.2"),
    .package(url: "https://github.com/rensbreur/SwiftTUI.git", from: "0.1.0"),
  ],

  // MARK: - Targets

  targets: [
    .executableTarget(
      name: "cli",
      dependencies: [
        .product(name: "SwiftTUI", package: "swifttui"),
      ],
      plugins: [
        .plugin(name: "VersionatorPlugin", package: "Versionator")
      ],
    ),
  ],
)
