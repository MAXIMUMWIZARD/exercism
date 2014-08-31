Array.prototype.accumulate = (transformation) ->
  mappedArray = []

  for i in [0...this.length]
    mappedArray.push(transformation(this[i]))

  mappedArray