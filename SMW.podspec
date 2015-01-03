
Pod::Spec.new do |s|
  s.name             = "SMW"
  s.version          = "0.1.1"
  s.summary          = "Global convenience functions"

  s.homepage         = "https://github.com/meech-ward/SMW"
  s.license          = 'MIT'
  s.author           = { "Sam Meech-Ward" => "sam@meech-ward.com" }
  s.source           = { :git => "https://github.com/meech-ward/SMW.git", :tag => s.version.to_s }

  s.platform     = :ios, '4.3'
  s.requires_arc = true

  s.source_files = 'SMW'

end
