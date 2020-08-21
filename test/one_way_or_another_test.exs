defmodule OneWayOrAnotherTest do
  use ExUnit.Case
  doctest OneWayOrAnother

  # Binary Search: Success
  test "Binary Search the first item" do
    assert OneWayOrAnother.binary([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 0) == {true, 0}
  end
  test "Binary Search the middle item" do
    assert OneWayOrAnother.binary([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 5) == {true, 5}
  end
  test "Binary Search the last item" do
    assert OneWayOrAnother.binary([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 10) == {true, 10}
  end
  test "Binary Search the second item" do
    assert OneWayOrAnother.binary([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 3) == {true, 3}
  end
  test "Binary Search the second to last item" do
    assert OneWayOrAnother.binary([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 9) == {true, 9}
  end

  # Binary Search: Failure
  test "Binary Search one number bellow the first one" do
    assert OneWayOrAnother.binary([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], -1) == {false, -1}
  end
  test "Binary Search one number above the last one" do
    assert OneWayOrAnother.binary([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 11) == {false, -1}
  end

  # Linear Search: Success
  test "Linear Search the first item" do
    assert OneWayOrAnother.linear([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 0) == {true, 0}
  end
  test "Linear Search the middle item" do
    assert OneWayOrAnother.linear([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 5) == {true, 5}
  end
  test "Linear Search the last item" do
    assert OneWayOrAnother.linear([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 10) == {true, 10}
  end
  test "Linear Search the second item" do
    assert OneWayOrAnother.linear([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 3) == {true, 3}
  end
  test "Linear Search the second to last item" do
    assert OneWayOrAnother.linear([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 9) == {true, 9}
  end

  # Linear Search: Failure
  test "Linear Search one number bellow the first one" do
    assert OneWayOrAnother.linear([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], -1) == {false, -1}
  end
  test "Linear Search one number above the last one" do
    assert OneWayOrAnother.linear([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 11) == {false, -1}
  end
end
