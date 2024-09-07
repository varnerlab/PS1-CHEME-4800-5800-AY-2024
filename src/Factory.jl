
# ===== PRIVATE METHODS BELOW HERE =================================================================================== #
# TODO: Put private helper methods here. Don't forget to use the _ naming convention, and to add basic documentation.
# ===== PRIVATE METHODS ABOVE HERE =================================================================================== #

# ===== PUBLIC METHODS BELOW HERE =================================================================================== #

"""
    function build(modeltype::Type{MyPuzzleRecordModel}, data::NamedTuple) -> MyPuzzleRecordModel

The `build` function constructs and configures a `MyPuzzleRecordModel` instance from the `NamedTuple` of data.

### Arguments
- `modeltype::Type{MyPuzzleRecordModel}`: The type of the model to build, which should be `MyPuzzleRecordModel`.
- `data::NamedTuple`: The data to use to build the model.

### Returns
- A `MyPuzzleRecordModel` instance that is configured with the data from the `NamedTuple`.
"""
function build(modeltype::Type{MyPuzzleRecordModel}, data::NamedTuple)::MyPuzzleRecordModel
    throw("build method not implemented for model type: $(modeltype)");
end
# ===== PUBLIC METHODS ABOVE HERE =================================================================================== #