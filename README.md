# TestTargetDependency

This is an example workspace to demonstrate a CocoaPods issue with unresolved symbols for a dependency of a test target.

## Xcode build log

```
Showing All Messages
Ld /Users/knox/Library/Developer/Xcode/DerivedData/TestTargetDependency-hbvsyovyostptkeezobnhwundwsr/Build/Products/Debug-iphonesimulator/TestTargetDependency.app/PlugIns/TestTargetDependencyTests.xctest/TestTargetDependencyTests normal (in target 'TestTargetDependencyTests' from project 'TestTargetDependency')
    cd /Users/knox/src/TestTargetDependency
    /Applications/Xcode-13.4.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang -target arm64-apple-ios15.5-simulator -bundle -isysroot /Applications/Xcode-13.4.1.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator15.5.sdk -L/Users/knox/Library/Developer/Xcode/DerivedData/TestTargetDependency-hbvsyovyostptkeezobnhwundwsr/Build/Products/Debug-iphonesimulator -L/Applications/Xcode-13.4.1.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/usr/lib -F/Users/knox/Library/Developer/Xcode/DerivedData/TestTargetDependency-hbvsyovyostptkeezobnhwundwsr/Build/Products/Debug-iphonesimulator -iframework /Applications/Xcode-13.4.1.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Library/Frameworks -iframework /Applications/Xcode-13.4.1.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator15.5.sdk/Developer/Library/Frameworks -filelist /Users/knox/Library/Developer/Xcode/DerivedData/TestTargetDependency-hbvsyovyostptkeezobnhwundwsr/Build/Intermediates.noindex/TestTargetDependency.build/Debug-iphonesimulator/TestTargetDependencyTests.build/Objects-normal/arm64/TestTargetDependencyTests.LinkFileList -Xlinker -rpath -Xlinker @loader_path/Frameworks -Xlinker -rpath -Xlinker @executable_path/Frameworks -dead_strip -bundle_loader /Users/knox/Library/Developer/Xcode/DerivedData/TestTargetDependency-hbvsyovyostptkeezobnhwundwsr/Build/Products/Debug-iphonesimulator/TestTargetDependency.app/TestTargetDependency -Xlinker -object_path_lto -Xlinker /Users/knox/Library/Developer/Xcode/DerivedData/TestTargetDependency-hbvsyovyostptkeezobnhwundwsr/Build/Intermediates.noindex/TestTargetDependency.build/Debug-iphonesimulator/TestTargetDependencyTests.build/Objects-normal/arm64/TestTargetDependencyTests_lto.o -Xlinker -export_dynamic -Xlinker -no_deduplicate -Xlinker -objc_abi_version -Xlinker 2 -fobjc-link-runtime -L/Applications/Xcode-13.4.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/iphonesimulator -L/usr/lib/swift -Xlinker -add_ast_path -Xlinker /Users/knox/Library/Developer/Xcode/DerivedData/TestTargetDependency-hbvsyovyostptkeezobnhwundwsr/Build/Intermediates.noindex/TestTargetDependency.build/Debug-iphonesimulator/TestTargetDependencyTests.build/Objects-normal/arm64/TestTargetDependencyTests.swiftmodule -framework XCTest -lPods-TestTargetDependencyTests -Xlinker -no_adhoc_codesign -Xlinker -dependency_info -Xlinker /Users/knox/Library/Developer/Xcode/DerivedData/TestTargetDependency-hbvsyovyostptkeezobnhwundwsr/Build/Intermediates.noindex/TestTargetDependency.build/Debug-iphonesimulator/TestTargetDependencyTests.build/Objects-normal/arm64/TestTargetDependencyTests_dependency_info.dat -o /Users/knox/Library/Developer/Xcode/DerivedData/TestTargetDependency-hbvsyovyostptkeezobnhwundwsr/Build/Products/Debug-iphonesimulator/TestTargetDependency.app/PlugIns/TestTargetDependencyTests.xctest/TestTargetDependencyTests

Undefined symbols for architecture arm64:
  "(extension in TestTargetDependencyLib):__C.UIWindow.init(rootViewController: __C.UIViewController) -> __C.UIWindow", referenced from:
      implicit closure #1 () throws -> Any? in TestTargetDependencyTests.TestTargeeDependencyTests.testExtension() -> () in TestTargetDependencyTests.o
ld: symbol(s) not found for architecture arm64
clang: error: linker command failed with exit code 1 (use -v to see invocation)
```

## Notes

* The problem can be circumvented with `use_frameworks!` in the Podfile.
