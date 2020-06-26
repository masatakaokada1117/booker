class ReservationMailer < ApplicationMailer
  # 予約完了メール
  def reservation_confirmation(user)
    @user = user
    mail(to: @user.email, subject: '予約が完了しました')
  end
end
