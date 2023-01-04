# iteration
def fibs(n)
    arr = []
    (0..(n-1)).each do |i|
        if i==0 || i==1
            arr << i
        else
            num=arr[i-1] + arr[i-2]
            arr << num
        end
    end
    arr
end


# recursion
def fibs_rec(n)
    return [0] if n==1
    return [0,1] if n==2
    arr=fibs_rec(n-1)
    arr << arr[-2] + arr[-1]
end

p fibs(8)
p fibs_rec(8)