"""
    MyPuzzleRecordModel

TODO: Add documentation
"""
mutable struct MyPuzzleRecordModel

    # data -
    record::String
    characters::Array{Char, 1}
    len::Int64

    # constructor -
    MyPuzzleRecordModel(record::String) = new(record, collect(record), length(record));
end