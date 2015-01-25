ActiveAdmin.register Hall do

  action_item :generate_layout do
    link_to 'Generate layout', new_layout_admin_halls_path
  end

  form do |f|
    f.inputs do
      f.input :name
      render partial: 'new_seat', locals: { f: f }
    end
    f.actions
  end

  collection_action :new_layout, method: :get do
  end

  collection_action :generate_layout, method: :post do

    hall = Hall.new(name: params[:hall][:name])

    if hall.save
      rows = params[:hall][:rows].to_i
      columns = params[:hall][:columns].to_i

      rows.times do |i|
        columns.times do |j|
          Seat.create(seat_type: :free, row: i, column: j, hall: hall)
        end
      end
    end

    redirect_to admin_halls_path, notice: 'Hall is created' 
  end
end
