
# ===== PUBLIC METHODS BELOW HERE ==================================================================================== #
"""
    puzzleparse(filename::String) -> Dict{Int64, MyPuzzleRecordModel}

The `puzzleparse` function reads a file and parses the contents into a dictionary of `MyPuzzleRecordModel` objects.
The key of the dictionary is the line number of the file, while the value is the `MyPuzzleRecordModel` object.

### Arguments
- `filepath::String`: The path of the data file to parse.

### Returns
- A dictionary of `MyPuzzleRecordModel` objects where the key is the line number of the file and the value is the `MyPuzzleRecordModel` object.
"""
function puzzleparse(filepath::String)::Dict{Int64, MyPuzzleRecordModel}
    
    # initialize -
    records = Dict{Int64, MyPuzzleRecordModel}()
    linecounter = 1;
    
    # main -
    open(filepath, "r") do io
        for line ∈ eachline(io)
            
            # TODO: do something with this line of text
            throw("puzzleparse method not implemented yet");
        end
    end

    # return the header and the records -
    return records;
end
# ===== PUBLIC METHODS ABOVE HERE ==================================================================================== #