class FirefoxWorker
	include Sidekiq::Worker

	def perform
   User.firefox
  end

end