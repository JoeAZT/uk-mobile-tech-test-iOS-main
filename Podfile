# Uncomment the next line to define a global platform for your project
platform :ios, '14.5'

target 'Experian iOS Tech Test' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  pod 'Alamofire', '5.4.3'
  pod 'RxAlamofire', '6.1.1'
  pod 'RxCocoa', '6.2.0'
  pod 'RxSwift', '6.2.0'
  pod 'RxRelay', '6.2.0'
  pod 'SwiftLint', '0.43.1'

  # Pods for Experian iOS Tech Test

  target 'Experian iOS Tech TestTests' do
    inherit! :search_paths
    # Pods for testing
    pod 'RxBlocking', '6.2.0'
    pod 'RxTest',     '6.2.0'
  end

  target 'Experian iOS Tech TestUITests' do
    # Pods for testing
    pod 'RxBlocking', '6.2.0'
    pod 'RxTest',     '6.2.0'
  end

end

post_install do |pi|
  pi.pods_project.targets.each do |t|
      t.build_configurations.each do |bc|
          if bc.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] == '8.0'
            bc.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '9.0'
          end
      end
  end
end