module Notifications
  class NotificationsController < Notifications::ApplicationController
    def index
      @notifications = notifications.includes(:actor).order('id desc').page(params[:page])

      unread_ids = @notifications.reject(&:read?).select(&:id)
      Notification.read!(unread_ids)

      @notification_groups = @notifications.group_by { |note| note.created_at.to_date }
    end

    def clean
      raise
      notifications.delete_all
      redirect_to dashboard
    end

    private

    def notifications
      raise 'You need require user login for /notifications page.' unless current_user
      Notification.where(user_id: current_user.id)
    end
  end
end