# ===== PRIVATE METHODS BELOW HERE =================================================================================== #
# TODO: Put all private helper methods here. Don't forget to use the _ naming convention, and to add basic documentation.
# ===== PRIVATE METHODS ABOVE HERE =================================================================================== #

# ===== PUBLIC METHODS BELOW HERE ==================================================================================== #
"""
    function decode_part_1(models::Dict{Int64, MyPuzzleRecordModel}) -> Tuple{Int64, Dict{Int64, Int64}}

The `decode_part_1` function decodes the puzzle data and returns the total and a dictionary of codes for part 1 of the puzzle.

### Arguments
- `models::Dict{Int64, MyPuzzleRecordModel}`: The dictionary of puzzle record models to decode.

### Returns
- A tuple containing the total value and a dictionary of codes for part 1 of the puzzle. 
"""
function decode_part_1(models::Dict{Int64, MyPuzzleRecordModel})::Tuple{Int64, Dict{Int64, Int64}}
    
    # initialize -
    total = 0;
    codes = Dict{Int64, Int64}();
    
    # TODO: Add the logic for part 1 here
    throws("decode_part_1 method not implemented yet");
    
    # return the total -
    return (total, codes);
end

"""
    function decode_part_2(models::Dict{Int64, MyPuzzleRecordModel}) -> Tuple{Int64, Dict{Int64, Int64}}

The `decode_part_2` function decodes the puzzle data and returns the total and a dictionary of codes for part 2 of the puzzle.
    
### Arguments
- `models::Dict{Int64, MyPuzzleRecordModel}`: The dictionary of puzzle record models to decode.

### Returns
- A tuple containing the total value and a dictionary of codes for part 2 of the puzzle.
"""
function decode_part_2(models::Dict{Int64, MyPuzzleRecordModel})::Tuple{Int64, Dict{Int64, Int64}}
     
    # initialize -
    total = 0;
    codes = Dict{Int64, Int64}();
     
    # TODO: Add the logic for part 2 here
    throws("decode_part_2 method not implemented yet");
     
    # return the total -
    return (total, codes);
end
# ===== PUBLIC METHODS ABOVE HERE ==================================================================================== #