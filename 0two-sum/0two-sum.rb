# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    num_indices = {}

    nums.each_with_index do |num, index|
        difference = target - num

        if num_indices.key?(difference)
            return [num_indices[difference], index]
        end

        num_indices[num] = index
    end
end