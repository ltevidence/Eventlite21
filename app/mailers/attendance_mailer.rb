class AttendanceMailer < ApplicationMailer
  default from: 'lobotomany@gmail.com'

  def attendance_email(attendance)
    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    @user = attendance.user
    @url  = 'https://eventlite21.herokuapp.com/event'
    mail(to: @user.email, subject: 'Un nouveau participant participe à ton événement !')
  end
end
