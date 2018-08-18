class CreateServicosMulheres < ActiveRecord::Migration
  def change
    create_table :servicos_mulheres do |t|
      t.string :Titulo
      t.text :Descricao
      t.string :Nome
      t.string :Status

      t.timestamps null: false
    end
  end
end
