include_attribute 'deploy'

default[:sidekiq] = {}

node[:deploy].each do |application, deploy|
  default[:sidekiq][application.intern] = {}
  default[:sidekiq][application.intern][:restart_command] = "sudo monit restart -g sidekiq_#{application}_group"
  override['sidekiq']['kagunova']['worker']['config']['logfile'] = '/var/log/sidekiq_worker'
  default[:sidekiq][application.intern][:syslog] = false
end

