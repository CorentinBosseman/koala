module ChallengersHelper
  def current_challenger(challenge)
    challenger = Challenger.
      joins(:user_challenge).
      where(
        user_challenges: { challenge_id: challenge.id },
        challengers: { friend_id: current_user.id }
      ).
      order('id ASC').
      last

    challenger ||= Challenger.new(status: "Aucun")
  end
end
