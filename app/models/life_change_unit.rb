class LifeChangeUnit < ActiveRecord::Base

  def add(a=nil, b=0, c=0, d=0)

    if(a==nil)
      message(0)
      0
    else
      total=a+b+c+d
      message(total)
      a+b+c+d
    end
  end

  def message(total)
    if(total>299)
      puts "At risk of illness"
    elsif (total>149)
      puts "Risk of illness is moderate"
    else
      puts "Only have a slight risk of illness"
    end
  end




end
