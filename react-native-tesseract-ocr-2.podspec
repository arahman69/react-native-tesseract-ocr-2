require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-tesseract-ocr"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = package["description"]
  s.homepage     = "https://github.com/arahman69/react-native-tesseract-ocr-2"
  # brief license entry:
  s.license      = "MIT"
  # optional - use expanded license entry instead:
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "Jonathan Palma" => "jonathanpalma.me@gmail.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/arahman69/react-native-tesseract-ocr-2.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,c,m,swift}"
  s.requires_arc = true

  s.dependency "React"
end

