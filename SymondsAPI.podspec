#
#  Be sure to run `pod spec lint SymondsAPI.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "SymondsAPI"
  s.version      = "0.1.0.7"
  s.summary      = "An API to access information from data.psc.ac.uk"
  s.description  = <<-DESC
                    This is an API for accessing information through data.psc.ac.uk
                   DESC

  s.homepage     = "https://sorenmortensen.github.io/Symonds-API"
  
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "Søren Mortensen" => "soren@sorenmortensen.com" }
  s.social_media_url   = "http://twitter.com/soren_mortensen"

  s.platform     = :ios, "9.3"

  s.source       = { :git => "https://github.com/sorenmortensen/Symonds-API.git", :tag => "#{s.version}" }

  s.source_files  = "SymondsAPI/**/*.{h,swift}"

  s.requires_arc = true

end
