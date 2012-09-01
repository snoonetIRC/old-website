ActiveAdmin.register Blogpost do
  config.per_page = 10

  index do
    selectable_column
    column :id
    column :title
    column "Time", :timestamp
    column "Created", :created_at
    column "Updated", :updated_at
    default_actions
  end
  batch_action :publish do |selection|
    Blogpost.find(selection).each do |post|
      post.published = true
      post.save!
    end
  end
  batch_action :unpublish do |selection|
    Blogpost.find(selection).each do |post|
      post.published = false
      post.save!
    end
  end

  # Form
  form do |f|
  f.inputs do
    f.input :title
    f.input :timestamp, hint: "Current UTC time is #{Time.now.utc.strftime('%Y %B %-d, %H:%M:%S')}"
    f.input :body
    f.input :excerpt, hint: "Not required, but useful if you want a different post-blurb from body"
    f.input :published
  end
end
end
