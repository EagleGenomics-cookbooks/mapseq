
# check that Mapseq folder exists
describe file('/usr/local/mapseq-1.2.2-linux') do
  it { should be_directory }
end

# Check that Mapseq executable is in the path
describe command('which mapseq') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match('mapseq') }
end

# Check that Mapsqe works
describe command('mapseq -h') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match('v1.2.2') }
end
