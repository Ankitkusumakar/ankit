class CrudNotificationMailer < ApplicationMailer

  def create_notification(object)
    @object = object
    @object_count = object.class.count
    mail to: Ankit.all.pluck(:email)
    
  end

  def update_notification(object)
    @object = object
    @object_count = object.class.count

    mail to: 'ankit.cathons@gmail.com' , subject: "an enrty for #{object.class} has been update"
   
  end
  def delete_notification(object)
    @object = object
    @object_count = object.class.count

    mail to: 'ankit.cathons@gmail.com ' , subject: "an enrty for #{object.class} has been deleted"
  end
  def subscribed?
    true if self.subscribed == true
  end
end
