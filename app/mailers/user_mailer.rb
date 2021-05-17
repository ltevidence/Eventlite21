class UserMailer < ApplicationMailer
  default from: 'lobotomany@gmail.com'
 
  def welcome_email(user)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user 

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'http://monsite.fr/login' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Bienvenue chez nous !') 
  end

  def attendance_email(attendance)
    @attendance = attendance
    @attendance_user = User.find(@attendance.user_id)
    @attendance_event = @attendance.event
    @admin = User.find(@attendance.event.admin_id)
    @url = 'monsite.fr' # à utiliser dans la view
    mail(to: @admin.email, subject: "Un utilisateur à rejoint l'évenement !")
  end
end
