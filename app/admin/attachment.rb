ActiveAdmin.register Attachment do
   index do
     column :title
     column :attach do  |attachment|
       image_tag attachment.attach.url(:small)
     end
     actions
   end
end
