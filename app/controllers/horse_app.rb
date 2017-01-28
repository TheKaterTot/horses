class HorseApp < Sinatra::Base
  get '/horses' do
    @horses = Horse.all
    erb :"horses/index"
  end

  get '/jockeys/:id' do
    @jockey = Jockey.find(params[:id])
    erb :"jockeys/show"
  end

  get '/jockeys' do
    @jockeys = Jockey.all
    erb :"jockeys/index"
  end

  get '/jockeys/:jockey_id/horses/new' do
    @jockey = Jockey.find(params[:jockey_id])
    erb :"horses/new"
  end

  post '/jockeys/:jockey_id/horses' do
    jockey = Jockey.find(params[:jockey_id])
    jockey.horses.create(params[:horse])

    redirect "/jockeys/#{jockey.id}"
  end

  get '/jockeys/:jockey_id/horses/:horse_id/edit' do
    @jockey = Jockey.find(params[:jockey_id])
    @horse = @jockey.horses.find(params[:horse_id])

    erb :"horses/edit"
  end

  put '/jockeys/:jockey_id/horses/:horse_id' do
    @jockey = Jockey.find(params[:jockey_id])
    @horse = @jockey.horses.find(params[:horse_id])
    @horse.update(params[:horse])

    redirect "/jockeys/#{@jockey.id}"
  end

  delete '/jockeys/:jockey_id/horses/:horse_id' do |horse_id|
    @jockey = Jockey.find(params[:jockey_id])
    @horse = @jockey.horses.find(params[:horse_id])
    @horse.delete(horse_id.to_i)

    redirect "/jockeys/#{@jockey.id}"
  end

end
