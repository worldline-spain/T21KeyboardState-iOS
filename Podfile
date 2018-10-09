platform :ios, "10.0"
use_frameworks!

#sources
source 'https://github.com/CocoaPods/Specs.git'
source 'https://github.com/worldline-spain/t21_pods-specs_ios.git'

workspace 'T21KeyboardState'
project 'T21KeyboardState'

target 'T21KeyboardState' do
    #Dependencies for the primary target (the main app or the main library)
    use_frameworks!

    pod 'T21Notifier' , '~>1.0'
end

post_install do |installer|
    installer.pods_project.targets.each do |target|

        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '4.2'
            if config.name == 'devel' || config.name == 'Debug'
                config.build_settings['GCC_PREPROCESSOR_DEFINITIONS'] ||= ['$(inherited)', 'DEBUG=1']
                config.build_settings['OTHER_SWIFT_FLAGS'] ||= ['$(inherited)','-DDEBUG']
                config.build_settings['GCC_OPTIMIZATION_LEVEL'] = '0'
            end
        end
    end
end
