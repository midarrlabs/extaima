defmodule Extaima do
  defstruct [:hours, :minutes, :seconds]

  @type t :: %Extaima{hours: integer, minutes: integer, seconds: integer}

  def parse(<<hour::binary-size(1), ":", minutes::binary-size(2), ":", seconds::binary>>) do
    %Extaima{
      hours: String.to_integer(hour),
      minutes: String.to_integer(minutes),
      seconds: String.to_integer(seconds),
    }
  end

  def parse(<<hours::binary-size(2), ":", minutes::binary-size(2), ":", seconds::binary>>) do
    %Extaima{
      hours: String.to_integer(hours),
      minutes: String.to_integer(minutes),
      seconds: String.to_integer(seconds),
    }
  end

  def parse(<<"0:", seconds::binary>>) do
    %Extaima{
      hours: 0,
      minutes: 0,
      seconds: String.to_integer(seconds),
    }
  end

  def parse(<<minute::binary-size(1), ":", _seconds::binary>>) do
    %Extaima{
      hours: 0,
      minutes: String.to_integer(minute),
      seconds: 0,
    }
  end

  def parse(<<minutes::binary-size(2), ":", seconds::binary>>) do
    %Extaima{
      hours: 0,
      minutes: String.to_integer(minutes),
      seconds: String.to_integer(seconds),
    }
  end
  
  def seconds(%Extaima{hours: hours, minutes: minutes, seconds: seconds}) do
    (hours * 3600) + (minutes * 60) + seconds
  end
end
