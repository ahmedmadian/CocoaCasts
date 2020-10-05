
def wrappers
  pod 'KeychainAccess', '~> 4.2'
  pod 'ReachabilitySwift', '~> 5.0'
end

def development
   pod 'Reveal-SDK', configurations: ['Debug/Staging', 'Debug/Production']
end


target 'CocoaCasts' do
  use_frameworks!
  wrappers
  development
end
