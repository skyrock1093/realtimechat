json.user do
  json.partial! 'api/users/user', user: @user
end

json.teams do
  json.array! @user.teams do |team|
    json.partial! 'api/teams/team', team: team
  end
end

json.team_memberships do
  json.array! @user.team_memberships do |t_m|
    json.partial! 'api/team_memberships/team_membership', t_m: t_m
  end
end

json.channel_memberships do
  json.array! @user.channel_memberships do |c_m|
    json.partial! 'api/channel_memberships/channel_membership', c_m: c_m
  end
end
