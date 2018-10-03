# # encoding: utf-8

# check that Mapseq folder exists
describe file('/usr/bin/mapseq') do
  it { should be_file }
end

# Check that Mapseq executable is in the path
describe command('which mapseq') do
  its('exit_status') { should eq 0 }
  its('stdout') { should match('mapseq') }
end

# Check that Mapseq build executable is in the path
describe command('which mapseq-build') do
  its('exit_status') { should eq 0 }
  its('stdout') { should match('mapseq-build') }
end

# Check that Mapsqe works
describe command('mapseq --version') do
  its('exit_status') { should eq 0 }
  its('stdout') { should match('unreleased') }
end

# Check that Mapseq-build works
describe command('mapseq-build --version') do
  its('exit_status') { should eq 0 }
  its('stdout') { should match('unreleased') }
end
