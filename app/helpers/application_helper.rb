module ApplicationHelper
  def footer_current_year
    Time.zone.now.year
  end

  def github_url(author, repo)
    link_to repo, "https://github.com/#{author}/#{repo}", target: '_blank'
  end
end
