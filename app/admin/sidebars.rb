ActiveAdmin.register Sidebar do
  form do |f|
    f.inputs "Link" do
      f.input :name
      f.input :page_name
      f.input :linktype, as: :radio, collection: [["Page", "page"], ["Symbol", "symbol"], ["URL", "url"]], hint:
        "Leave this as the default unless you know what you're doing. You can't break anything, but you probably wont be able to make it work right"
      f.input :cssclass
    end
    f.inputs "Organization" do
      f.input :rank, as: :number
      f.input :parent_id, as: :select, collection: Sidebar.order(:rank), include_blank: true
    end
    f.buttons
  end
end
