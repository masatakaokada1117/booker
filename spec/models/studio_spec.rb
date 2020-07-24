require 'rails_helper'

RSpec.describe Studio, type: :model do
  let(:studio_params) { attributes_for(:studio) }
  let(:invalid_studio_params) { attributes_for(:studio, { name: '', prefecture_id: '' }) }

  it 'バリデーション有効' do
    studio = Studio.new(studio_params)
    expect(studio).to be_valid
  end

  context 'バリデーションエラーの場合' do
    before do
      @studio = Studio.new(invalid_studio_params)
      @studio.valid?
    end

    it 'スタジオ名がなければ無効' do
      expect(@studio.errors[:name]).to include('を入力してください')
    end

    it '都道府県コードがなければ無効' do
      expect(@studio.errors[:prefecture_id]).to include('を入力してください')
    end
  end
end
