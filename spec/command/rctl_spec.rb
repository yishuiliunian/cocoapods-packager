require File.expand_path('../../spec_helper', __FILE__)

module Pod
  describe Command::Spec::Package do
    describe 'rctl' do
      it 'can package a local podspec with rctl' do
        command = Command.parse(%w{ package spec/fixtures/KFData.podspec --rctl=Core})
        command.run
        Pod
      end
    end
  end
end