module AccountsHelper
  def account_logo_tag(style: nil)
    # Navigate to room 1 as specifically requested, with fallback to root if not accessible
    target_room = Current.user&.rooms&.find_by(id: 1)
    logo_path = target_room ? room_path(target_room) : root_path

    link_to logo_path, class: "account-logo-link", aria: { label: "Go to main room" } do
      tag.figure image_tag(fresh_account_logo_path, alt: "Account logo", size: 300), class: "account-logo avatar #{style}"
    end
  end
end
