every :friday, at: '2pm' do
  command "cd #{Dir.pwd} && bundle exec xvfb-run cucumber -t @social-building"
end