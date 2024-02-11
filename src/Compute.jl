# ===== PRIVATE METHODS BELOW HERE =================================================================================== #
function _decode_part_1(model::MyPuzzleRecordModel)::Int64
     
    # for this line, get the characters -
    characters = model.characters;
    digits = filter(isnumeric, characters);
    value = Array{Char, 1}();
    if (length(digits) > 1)
        push!(value, digits[1]);
        push!(value, digits[end]);
    else
       push!(value, digits[1]);
       push!(value, digits[1]);
    end
    
    # join the characters and parse the value -
    return value |> join |> x-> parse(Int64, x);
end

function _decode_part_2(model::MyPuzzleRecordModel)::Int64
    
    # we need to search for one, two, three, four, five, six, seven, eight, and nine, and replace these 
    # with 1, 2, 3, 4, 5, 6, 7, 8, and 9, respectively.  Then we can parse the value using the _decode_part_1 function
    
    # initialize -
    record = model.record;

    # first, let's replace the words with the numbers, we'll start with the mixed words -
    mixed_word_map = Dict{String,String}()
    mixed_word_map["oneight"] = "oneeight";
    mixed_word_map["eightwo"] = "eighttwo";
    mixed_word_map["twone"] = "twoone";
    mixed_word_map["nineight"] = "nineeight";
    mixed_word_map["sevenine"] = "sevennine";
    mixed_word_map["threeight"] = "threeeight";
    mixed_word_map["eightwo"] = "eighttwo";
    mixed_word_map["eighthree"] = "eightthree";
    for (key, value) ∈ mixed_word_map
        record = replace(record, key => value);
    end

    # Next, let's replace the single words with the numbers
    single_word_map = Dict{String,String}()
    single_word_map["one"] = "1";
    single_word_map["two"] = "2";
    single_word_map["three"] = "3";
    single_word_map["four"] = "4";
    single_word_map["five"] = "5";
    single_word_map["six"] = "6";
    single_word_map["seven"] = "7";
    single_word_map["eight"] = "8";
    single_word_map["nine"] = "9";
    for (key, value) ∈ single_word_map
        record = replace(record, key => value);
    end

    # update the model -
    model.record = record;
    model.characters = collect(record);

    # now, we can use the _decode_part_1 function to parse the value -
    return _decode_part_1(model);
end

# ===== PRIVATE METHODS ABOVE HERE =================================================================================== #

# ===== PUBLIC METHODS BELOW HERE ==================================================================================== #
"""
    decode_part_1(models::Dict{Int64, MyPuzzleRecordModel}) -> Tuple{Int64, Dict{Int64, Int64}}

TODO: Add documentation
"""
function decode_part_1(models::Dict{Int64, MyPuzzleRecordModel})::Tuple{Int64, Dict{Int64, Int64}}
    
    # initialize -
    total = 0;
    codes = Dict{Int64, Int64}();
    
    # main -
    for (key, value) ∈ models
        
        # decode the value -
        codes[key] = _decode_part_1(value);

        # total the value -
        total += codes[key];
    end
    
    # return the total -
    return (total, codes);
end

"""
    decode_part_2(models::Dict{Int64, MyPuzzleRecordModel}) -> Tuple{Int64, Dict{Int64, Int64}}

TODO: Add documentation
"""
function decode_part_2(models::Dict{Int64, MyPuzzleRecordModel})::Tuple{Int64, Dict{Int64, Int64}}
     
    # initialize -
    total = 0;
    codes = Dict{Int64, Int64}();
     
    # main -
    for (key, value) ∈ models
         
         # decode the value -
         codes[key] = _decode_part_2(value);
 
         # total the value -
         total += codes[key];
    end
     
     # return the total -
     return (total, codes);
end
# ===== PUBLIC METHODS ABOVE HERE ==================================================================================== #