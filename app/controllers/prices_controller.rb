class PricesController < ApplicationController
  def simluator
    @price = Price.new
  end

  def result
    # 何分差があるか
    use = (finish_day_at - start_day_at).to_i / 60 # /60で秒換算を分換算に変更
    if params[:grade] == "BASIC"
      @time = (use /15) * 250
      @time = 4290 if use <= 360 && @time > 4290 #6時間まで
      @time = 6490 if use <= 720 && @time > 6490 #12時間まで
      @time = 8690 if use <= 1440 && @time > 8690 #24時間まで
      @time = 11990 if use <= 2160 && @time > 11990 #36時間まで
      @time = 14190 if use <= 2880 && @time > 14190 #48時間まで
      @time = 20240 if use <= 4320 && @time > 20240 #72時間まで
    elsif params[:grade] == "MIDDLE"
      @time = (use /15) * 350
      @time = 6490 if use <= 360 && @time > 6490 #6時間まで
      @time = 8690 if use <= 720 && @time > 8690 #12時間まで
      @time = 11990 if use <= 1440 && @time > 11990 #24時間まで
      @time = 16390 if use <= 2160 && @time > 16390 #36時間まで
      @time = 19690 if use <= 2880 && @time > 19690 #48時間まで
      @time = 28490 if use <= 4320 && @time > 28490 #72時間まで
    else
      @time = (use /15) * 460
      @time = 8690 if use <= 360 && @time > 8690 #6時間まで
      @time = 13090 if use <= 720 && @time > 13090 #12時間まで
      @time = 18590 if use <= 1440 && @time > 18590 #24時間まで
      @time = 25190 if use <= 2160 && @time > 25190 #36時間まで
      @time = 30690 if use <= 2880 && @time > 30690 #48時間まで
      @time = 43890 if use <= 4320 && @time > 43890 #72時間まで
    end
  end

  private

  def start_day_at
    y = params["start_day_at(1i)"].to_i
    m = params["start_day_at(2i)"].to_i
    d = params["start_day_at(3i)"].to_i
    h = params["start_day_at(4i)"].to_i
    min = params["start_day_at(5i)"].to_i
    Time.local(y, m, d, h, min)
  end

  def finish_day_at
    y = params["finish_day_at(1i)"].to_i
    m = params["finish_day_at(2i)"].to_i
    d = params["finish_day_at(3i)"].to_i
    h = params["finish_day_at(4i)"].to_i
    min = params["finish_day_at(5i)"].to_i
    Time.local(y, m, d, h, min)
  end
end
