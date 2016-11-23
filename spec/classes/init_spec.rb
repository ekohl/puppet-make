require 'spec_helper'

describe 'make' do
  describe 'on supported platforms' do
    ['Debian', 'RedHat'].each do |osfamily|
      context "make class without any parameters on #{osfamily}" do
        let(:params) {{ }}
        let(:facts) {{ :osfamily => osfamily }}

        it { is_expected.to compile.with_all_deps }
        it { is_expected.to contain_class('make')}

        it { is_expected.to contain_package('make').with_ensure('present') }
      end
    end
  end

  describe 'on "unsupported" operating system' do
    context 'make class with overriding package_name parameter on FreeBSD' do
      let(:params) {{ :package_name => 'gmake' }}
      let(:facts) {{
        :osfamily        => 'FreeBSD',
        :operatingsystem => 'FreeBSD',
      }}

      it { is_expected.to compile.with_all_deps }
      it { is_expected.to contain_class('make')}

      it { is_expected.to contain_package('gmake').with_ensure('present') }
    end
  end
end
