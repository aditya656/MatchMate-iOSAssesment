# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'MatchMate' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for MatchMate
  pod 'Alamofire', '5.4.4'
  pod 'SDWebImageSwiftUI'

end
post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '17.0'
      config.build_settings['CODE_SIGNING_ALLOWED'] = 'NO'
      config.build_settings['CODE_SIGNING_REQUIRED'] = 'NO'
      config.build_settings['ONLY_ACTIVE_ARCH'] = 'YES'
    end
  end
end

