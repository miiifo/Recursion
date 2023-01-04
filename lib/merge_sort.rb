def merge_sort(arr)
    return arr if arr.length <= 1
    left = merge_sort(arr[0...arr.length/2])
    right = merge_sort(arr[arr.length/2...arr.length])
    sort(left, right)
end

def sort(left, right)
    return right if left.empty?
    return left if right.empty?
    smallest = left.first <= right.first ? left.shift : right.shift
    [smallest] + sort(left, right)
end

p a=10.times.map { rand(100) }
p merge_sort(a)