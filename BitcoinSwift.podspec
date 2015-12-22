Pod::Spec.new do |s|
  s.name          = "BitcoinSwift"
  s.version       = "0.0.1"
  s.summary       = "A native framework for working with Bitcoin on iOS and OSX"
  s.homepage      = "https://github.com/DoubleSha/BitcoinSwift"
  s.license       = "Apache 2.0"
  s.author        = "Kevin Greene"
  s.source        = { :git => "https://github.com/DoubleSha/BitcoinSwift.git", :tag => s.version }
  s.source_files  = "BitcoinSwift/**/*.{h,m,swift}"
  s.frameworks    = "Foundation", "Security"
  s.requires_arc  = true

  s.subspec "openssl" do |o|
    o.source_files        = "Dependencies/Include/openssl/*.h"
    # o.preserve_paths      = "Dependencies/Include/openssl/*.h"
    o.libraries           = "libcrypto.a", "libssl.a"
    o.vendored_libraries  = "Dependencies/Libraries/libcrypto.a", "Dependencies/Libraries/libssl.a"
    o.xcconfig            = { "HEADER_SEARCH_PATHS" => "\"${PODS_ROOT}/#{s.name}/Dependencies/Include/openssl/**\"" }
  end
end
