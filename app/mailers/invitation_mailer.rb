class InvitationMailer < ApplicationMailer
    def invite(invitation)
      @invitation = invitation
      mail(to: @invitation.email, subject: 'Invitation to take an assessment')
    end
  end
  