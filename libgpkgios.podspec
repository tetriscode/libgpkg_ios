Pod::Spec.new do |s|
    s.name          = "libgpkgios"
    s.version       = "1.0.0"
    s.summary       = "libgpkg iOS library"
    s.description   = <<-DESC
                        libgpkg iOS Library
                        DESC
    s.homepage      = "http://github.com/tetriscode/libgpkgios"
    s.license       = "Apache 2.0"
    s.author        = { "Wes Richardet" => "wes@tetriscodes.com" }
    s.source        = { :git => "https://github.com/tetriscode/libgpkgios", :tag => s.version.to_s }

    s.platform      = :ios, '8.0'
    s.ios.deployment_target = '8.0'
    s.requires_arc = true

    s.source_files = 'libgpkgios/**/*.{h,m}'
    s.public_header_files = 'libgpkgios/**/*.h'
    s.prefix_header_file = 'libgpkgios/libgpkgios-Prefix.h'
    s.subspec 'no-arc' do |sna|
        sna.requires_arc = false
        sna.source_files = non_arc_files
    end
    s.frameworks = 'Foundation'
end
