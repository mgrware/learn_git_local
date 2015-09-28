class ConfirmationMailer < ApplicationMailer

  def confirm_email(target_email, activation_token)

            @activation_token = activation_token

            mail(:to => target_email,

                        :from => "gilang-support@lkp-piksi-ganesha.net",

                        :subject => "[Training - Rails 4]") do |format|

                            format.html { render 'confirm_email'}

                        end

        end

end
