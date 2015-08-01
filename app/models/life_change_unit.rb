class LifeChangeUnit < ActiveRecord::Base

  def add(a=nil, b=nil, c=nil, d=nil)
    if(a==nil)
      0
    elsif(b==nil)
      a
    elsif(c==nil)
      a+b
    else
      a+b+c+d
    end
  end


end
