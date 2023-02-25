defmodule ExdurationTest do
  use ExUnit.Case

  test "it should parse 7 seconds" do
    assert Exduration.parse("0:07") === %Exduration{
             hours: 0,
             minutes: 0,
             seconds: 7
           }
  end

  test "it should parse 30 seconds" do
    assert Exduration.parse("0:30") === %Exduration{
             hours: 0,
             minutes: 0,
             seconds: 30
           }
  end

  test "it should parse 1 minute" do
    assert Exduration.parse("1:00") === %Exduration{
             hours: 0,
             minutes: 1,
             seconds: 0
           }
  end

  test "it should parse 12 minutes 12 seconds" do
    assert Exduration.parse("12:12") === %Exduration{
             hours: 0,
             minutes: 12,
             seconds: 12
           }
  end

  test "it should parse 1 hour 23 minutes 4 seconds" do
    assert Exduration.parse("1:23:04") === %Exduration{
             hours: 1,
             minutes: 23,
             seconds: 4
           }
  end

  test "it should parse 12 hours 23 minutes 4 seconds" do
    assert Exduration.parse("12:23:04") === %Exduration{
             hours: 12,
             minutes: 23,
             seconds: 4
           }
  end

  test "it should get seconds" do
    assert Exduration.get_second("1:40:30") === 30
  end

  test "it should get second" do
    assert Exduration.get_second("1:40:03") === 3
  end

  test "it should get minutes" do
    assert Exduration.get_minute("1:40:30") === 40
  end

  test "it should get minute" do
    assert Exduration.get_minute("1:04:30") === 4
  end

  test "it should get hours" do
    assert Exduration.get_hour("25:40:30") === 25
  end

  test "it should get hour" do
    assert Exduration.get_hour("2:40:30") === 2
  end
end
