// swift-tools-version: 5.4
import PackageDescription

let package = Package(
    name: "PhoneNumberKit",
    platforms: [
        .iOS(.v11), .macOS(.v10_13), .tvOS(.v11), .watchOS(.v4)
    ],
    products: [
        .library(name: "PhoneNumberKit", targets: ["PhoneNumberKit"]),
        .library(name: "PhoneNumberKit-Static", type: .static, targets: ["PhoneNumberKit"]),
        .library(name: "PhoneNumberKit-Dynamic", type: .dynamic, targets: ["PhoneNumberKit"])
    ],
    targets: [
        .target(name: "PhoneNumberKit",
                path: "PhoneNumberKit",
                exclude: ["Resources/Original",
                          "Resources/update_metadata.sh",
                          "Info.plist"],
                resources: [.process("Resources")]),
        .testTarget(name: "PhoneNumberKitTests",
                    dependencies: ["PhoneNumberKit"],
                    path: "PhoneNumberKitTests",
                    exclude: ["Info.plist"])
    ]
)
