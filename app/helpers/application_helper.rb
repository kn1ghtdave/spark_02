module ApplicationHelper
  def avatar_url(user)
      gravatar_id = Digest::MD5::hexdigest(user.email).downcase
      if user.image
          "http://graph.facebook.com/#{user.uid}/picture?type=large"
      else
        "https://gravatar.com/avatar/#{gravatar_id}.jpg?d=identical&s=150"
      end
  end
end
