Pod::Spec.new do |s|
  s.name         = "SymondsAPI"
  s.version      = "0.1.2"
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
