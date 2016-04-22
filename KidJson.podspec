#
# Be sure to run `pod lib lint KidJson.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "KidJson"
  s.version          = "1.0.0"
  s.summary          = "This is auto match json data with data file lib"
  s.description      = "This CocoaPod provides the ability to match json data with objC data file"
  s.homepage         = "https://github.com/thequan1/KidJson"
  s.license          = 'MIT'
  s.author           = { "quan-nguyen" => "thequan.ictbk@gmail.com" }
  s.source           = { :git => "https://github.com/thequan1/KidJson.git", :tag => s.version.to_s }
  s.platform     = :ios, '7.0'
  s.requires_arc = true
  s.source_files = 'Pod/Classes/**/*'
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'Foundation'
end
