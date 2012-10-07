class CromeWorker
	include Sidekiq::Worker

	def perform
    User.crome
  end

end