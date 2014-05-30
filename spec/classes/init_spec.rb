require 'spec_helper'

describe 'make' do
  context 'supported operating systems' do
    ['Debian', 'RedHat'].each do |osfamily|
      describe "make class without any parameters on #{osfamily}" do
        let(:params) {{ }}
        let(:facts) {{
          :osfamily => osfamily,
        }}

        it { should contain_class('make::params') }

        it { should contain_class('make::install') }
      end
    end
  end

  context '"unsupported" operating system' do
    describe 'make class with overriding package_name parameter on FreeBSD' do
      let(:params) {{ :package_name => 'gmake' }}
      let(:facts) {{
        :osfamily        => 'FreeBSD',
        :operatingsystem => 'FreeBSD',
      }}

      it { should contain_package('gmake') }
    end
  end

  context 'Redhat' do
    describe 'installs the make package' do
      let (:facts) {{
        :osfamily => 'RedHat'
      }}

      it { should contain_package('make') }
    end
  end
end
