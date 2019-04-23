require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name                   = package['name']
  s.version                = package['version']
  s.summary                = package['description']
  s.description            = package['description']
  s.homepage               = 'https://github.com/apptentive/apptentive-react-native'
  s.license                = package['license']
  s.author                 = package['author']
  s.source                 = { :git => 'https://github.com/apptentive/apptentive-react-native.git', :tag => s.version }

  s.platform               = :ios, '9.0'
  s.ios.deployment_target  = '9.0'

  s.preserve_paths         = 'LICENSE', 'package.json'
  s.source_files           = 'ios/*.{h,m}'
  s.dependency               'React'
  s.dependency               'apptentive-ios'
end