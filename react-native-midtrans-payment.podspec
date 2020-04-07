require 'json'
package_json = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|

  s.name           = "react-native-midtrans-payment"
  s.version        = package_json["version"]
  s.summary        = package_json["description"]
  s.homepage       = "https://github.com/adityahas/react-native-midtrans-payment"
  s.license        = package_json["license"]
  s.author         = { package_json["author"] => package_json["author"] }
  s.platform       = :ios, "9.0"
  s.source         = { :git => "#{package_json["repository"]["url"]}.git", :tag => "v#{s.version}" }
  s.source_files   = 'ios/*.{h,m}'
  s.dependency 'React'
  s.dependency 'MidtransCoreKit', '1.16.1'
  s.dependency 'MidtransKit', '1.16.1'
end